using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Pustok.DAL;
using Pustok.Models;
using Pustok.ViewModel;
using System.Diagnostics;

namespace Pustok.Controllers
{
    public class HomeController : Controller
    {
        private readonly PustokDbContext _context;
        public HomeController(PustokDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var slider = _context.Sliders.FirstOrDefault(x => x.BtnUrl == null);

            HomeViewModel vm = new HomeViewModel
            {
                Sliders = _context.Sliders.OrderByDescending(x => x.Id).Skip(2).Take(3).ToList(),
                BestSellerBooks= _context.Books.Include(x=> x.BookImages). Include(x=> x.Author).Where(x=>x.IsBestSeller).Take(25).ToList(),
                NewBooks = _context.Books.Include(x => x.BookImages).Include(x => x.Author).Where(x => x.IsNew).Take(25).ToList(),
                DiscountedBooks = _context.Books.Include(x => x.BookImages).Include(x => x.Author).Where(x => x.DiscountPercent>0).Take(25).ToList(),

            };
            
            return View(vm);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}