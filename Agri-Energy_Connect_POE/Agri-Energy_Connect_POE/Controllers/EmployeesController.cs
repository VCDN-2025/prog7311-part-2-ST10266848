using Agri_Energy_Connect_POE.Data;
using Agri_Energy_Connect_POE.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace Agri_Energy_Connect_POE.Controllers
{
    public class EmployeesController : Controller
    {
        private readonly AppDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public EmployeesController(AppDbContext context, UserManager<IdentityUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        //This is the dashboard for Employees, containing the buttons
        //for actions that they are able to perform
        public IActionResult DashboardForEmployees()
        {
            return View();
        }

        //Code Attribution for original 'Listing All Users' Functionality:
        //Author: kudvenkat
        //Website 1: csharp-video-tutorials.blogspot.com
        //Website 1 Link: https://csharp-video-tutorials.blogspot.com/2019/07/list-all-users-from-aspnet-core.html
        //Also from:
        //YouTube Channel: @Csharp-video-tutorialsBlogspot on YouTube.com
        //YouTube video link: https://www.youtube.com/watch?v=OMX0UiLpMSA&list=PL6n9fhu94yhVkdrusLaQsfERmL_Jh4XmU&index=87
        //Date Accessed: 22 November 2024

        //Code Attribution for modifications to 'Listing All Users' functionality:
        //Author: Open AI
        //AI Model: ChatGPT 4.o
        //Link: https://chatgpt.com (unable to send specific chat link because I attached images in the chat)
        //Date Accessed: 22 November 2024

        [HttpGet]
        [Authorize(Roles = "Employee")]
        public IActionResult ManageFarmers()
        {
            // Fetch all users from the database
            var users = _userManager.Users.ToList();

            // Filter users who are in the "Farmer" role
            var farmers = users.Where(user => _userManager.IsInRoleAsync(user, "Farmer").Result).ToList();

            return View(farmers);
        }

        //Code Attribution for 'Editing Lecturer' Functionality:
        //Author: kudvenkat
        //Website 1: csharp-video-tutorials.blogspot.com
        //Website 1 Link: https://csharp-video-tutorials.blogspot.com/2019/07/edit-identity-user-in-aspnet-core.html
        //Also From:
        //YouTube Channel: kudvenkat (@Csharp-video-tutorialsBlogspot) on YouTube.com
        //YouTube video link: https://www.youtube.com/watch?v=QYlIfH8qyrU
        //Date Accessed: 22 November 2024

        //Allows HR Users to edit data of lecturers:
        //This is specifically the action for retrieving the data of a lecturer
        [HttpGet]
        public async Task<IActionResult> EditFarmer(string id)
        {
            var user = await _userManager.FindByIdAsync(id);

            if (user == null)
            {
                ViewBag.ErrorMessage = $"User with Id = {id} cannot be found";
                return View("NotFound");
            }

            var model = new EditFarmerViewModel
            {
                Id = user.Id,
                Email = user.Email,
                UserName = user.UserName,
                PhoneNumber = user.PhoneNumber
            };

            return View(model);
        }

        //Allows HR Users to edit data of lecturers
        //This is specifically the action for posting the updated data of a lecturer
        [HttpPost]
        public async Task<IActionResult> EditFarmer(EditFarmerViewModel model)
        {
            var user = await _userManager.FindByIdAsync(model.Id);

            if (user == null)
            {
                ViewBag.ErrorMessage = $"User with Id = {model.Id} cannot be found";
                return View("NotFound");
            }
            else
            {
                user.Email = model.Email;
                user.UserName = model.UserName;
                user.PhoneNumber = model.PhoneNumber;

                var result = await _userManager.UpdateAsync(user);

                if (result.Succeeded)
                {
                    return RedirectToAction("ManageFarmers");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }

                return View(model);
            }
        }

    }
}
