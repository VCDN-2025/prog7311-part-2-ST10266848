using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace Agri_Energy_Connect_POE.Models
{
    public class Product
    {
        //Serves as the Primary Key for Product
        [Key]
        public int ProductId { get; set; }

        //Serves as the Foreign Key for User
        [Required]
        public string UserId { get; set; } = null!;

        public IdentityUser User { get; set; } = null!;

        public string ProductCategory { get; set; } = null!;
        public string ProductName { get; set; } = null!;

        [StringLength(750, ErrorMessage = "Max Character Limit Reached!")]
        public string ProductDescription { get; set; } = null!;

        public double ProductPrice { get; set; }

        //Stores the date of when the product will begin production
        public DateTime ProductionDate { get; set; }

        //Stores the url of the image that a farmer must upload when adding a product
        public string ImageUrl { get; set; } = null!;

    }

}
