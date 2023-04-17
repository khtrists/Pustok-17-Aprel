using Pustok.Models;

namespace Pustok.ViewModel
{
    public class HomeViewModel
    {
        public List<Slider> Sliders { get; set; }
        public List<Book> BestSellerBooks { get; set; }
        public List<Book> NewBooks { get; set; }

        public List<Book> DiscountedBooks { get; set; }

    }
}
