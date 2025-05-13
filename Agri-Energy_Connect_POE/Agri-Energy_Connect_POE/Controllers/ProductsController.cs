using Agri_Energy_Connect_POE.Data;
using Agri_Energy_Connect_POE.Models;
using Agri_Energy_Connect_POE.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Net;

namespace Agri_Energy_Connect_POE.Controllers
{
    public class ProductsController : Controller
    {
        private readonly AppDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public ProductsController(AppDbContext context, UserManager<IdentityUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        //This essentially serves as the index view for Farmers
        //to view the products that they have added
        [Authorize(Roles = "Farmer")]
        public async Task<IActionResult> FarmerProduct()
        {
            var user = await _userManager.GetUserAsync(User);

            if (await _userManager.IsInRoleAsync(user, "Farmer"))
            {

                //Code Attribute for the below code segment (the 'Select' part to be specific):
                //Author: Open AI
                //Chat Model: ChatGPT 4.o
                //Link: https://chatgpt.com/share/671229d8-ae70-8002-9f58-60db6a1105d8
                //Date Accessed: 11 April 2025

                var products = _context.Products
                                            .Where(p => p.UserId == user.Id)
                                            .Include(p => p.User)
                                            .Select(p => new Models.Product
                                            {
                                                ProductId = p.ProductId,
                                                UserId = p.UserId,
                                                User = p.User,
                                                ProductCategory = p.ProductCategory,
                                                ProductName = p.ProductName,
                                                ProductDescription = p.ProductDescription,
                                                ProductPrice = p.ProductPrice,
                                                ProductionDate = p.ProductionDate,
                                                ImageUrl = p.ImageUrl
                                            })
                                            .ToList();

                return View(products);
            }
            else
            {
                return Unauthorized();
            }

        }


        //Code Attribute for the below code segment:
        //Author: Open AI
        //Chat Model: ChatGPT 4.o
        //Link: https://chatgpt.com/share/671229d8-ae70-8002-9f58-60db6a1105d8
        //Date Accessed: 12 April 2025

        [HttpGet]
        [Authorize(Roles = "Employee")]
        public async Task<IActionResult> AllFarmerProducts(
    string? usernameFilter,
    string? categoryFilter,
    DateTime? fromDate,
    DateTime? toDate)
        {
            //The view model skeleton where categories & usernames must always be populated
            var categories = await _context.Products
                .Select(p => p.ProductCategory)
                .Distinct()
                .OrderBy(c => c)
                .ToListAsync();

            var farmers = await _userManager.GetUsersInRoleAsync("Farmer");
            var usernames = farmers
                .Select(u => u.UserName!)
                .Distinct()
                .OrderBy(u => u)
                .ToList();

            var vm = new AllFarmerProductsViewModel
            {
                UsernameFilter = usernameFilter,
                CategoryFilter = categoryFilter,
                FromDate = fromDate,
                ToDate = toDate,
                AvailableCategories = categories,
                AvailableUsernames = usernames,
                Products = new List<Product>() 
            };

            //Enforce that if one date is set, the other must be too:
            if (fromDate.HasValue ^ toDate.HasValue)  
            {
                //A model-level error
                ModelState.AddModelError(
                    string.Empty,
                    "If you set a From Date you must also set a To Date, and vice versa."
                );
                return View(vm);
            }

            //Base query
            var query = _context.Products
                                .Include(p => p.User)
                                .AsQueryable();

            //Apply filters
            if (!string.IsNullOrWhiteSpace(usernameFilter))
                query = query.Where(p => p.User.UserName == usernameFilter);

            if (!string.IsNullOrWhiteSpace(categoryFilter))
                query = query.Where(p => p.ProductCategory == categoryFilter);

            if (fromDate.HasValue && toDate.HasValue)
            {
                var start = fromDate.Value.Date;
                var endOfDay = toDate.Value.Date.AddDays(1);
                query = query.Where(p => p.ProductionDate >= start
                                      && p.ProductionDate < endOfDay);
            }

            //Order
            query = query.OrderBy(p => p.ProductId);

            //Execute
            vm.Products = await query
                .Select(p => new Product
                {
                    ProductId = p.ProductId,
                    UserId = p.UserId,
                    User = p.User,
                    ProductCategory = p.ProductCategory,
                    ProductName = p.ProductName,
                    ProductDescription = p.ProductDescription,
                    ProductPrice = p.ProductPrice,
                    ProductionDate = p.ProductionDate,
                    ImageUrl = p.ImageUrl
                })
                .ToListAsync();

            return View(vm);
        }


        public IActionResult GetImage(int productId)
        {
            var product = _context.Products.FirstOrDefault(p => p.ProductId == productId);
            if (product != null)
            {
                using (WebClient webClient = new WebClient())
                {
                    byte[] imageBytes = webClient.DownloadData(product.ImageUrl);
                    // Change the content type according to your image type
                    return File(imageBytes, "image/jpg"); 
                }
            }
            else
            {
                // Handle case when item is not found
                return NotFound();
            }
        }


        public IActionResult AddProduct()
        {
            ViewData["UserId"] = new SelectList(_context.Users, "Id", "UserName");
            return View();
        }

        //Code Attribution for some of the below:
        //Author: fb-shaik
        //Website: GitHub
        //Link: https://github.com/fb-shaik/PROG6212-Group1-2024/blob/main/EmployeeLeaveManagement_G1_Unit%20Testing.zip
        //Date accessed: 11 April 2025


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AddProduct(Models.Product product)
        {
            if (!ModelState.IsValid)
            {

                var user = await _userManager.GetUserAsync(User);

                if (user != null)
                {
                    //Store the UserId in the Claim object
                    product.UserId = user.Id;
                }

                //product.ProductionDate = DateTime.Now;

                _context.Add(product);
                await _context.SaveChangesAsync();

                return RedirectToAction(nameof(FarmerProduct));
            }

            ViewData["UserId"] = new SelectList(_context.Users, "Id", "UserName", product.UserId);
            return View(product);

        }


        

    }
}
