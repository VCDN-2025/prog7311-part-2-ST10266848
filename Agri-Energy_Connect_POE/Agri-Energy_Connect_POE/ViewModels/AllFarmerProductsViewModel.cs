using Agri_Energy_Connect_POE.Models;

namespace Agri_Energy_Connect_POE.ViewModels
{
    public class AllFarmerProductsViewModel
    {
        // Filter criteria
        public string? UsernameFilter { get; set; }
        public string? CategoryFilter { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime? ToDate { get; set; }

        // Data for dropdowns
        public IEnumerable<string> AvailableCategories { get; set; } = new List<string>();

        // NEW: all possible farmer usernames
        public IEnumerable<string> AvailableUsernames { get; set; } = new List<string>();

        // The results
        public List<Product> Products { get; set; }
    }
}
