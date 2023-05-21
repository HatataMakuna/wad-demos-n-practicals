
using System.ComponentModel.DataAnnotations;
namespace WAPP.Models
{
    public class Student
    {
        public int Id { get; set; }
        [Required, StringLength(50)]
        public string Name { get; set; }
        [Required, StringLength(80)]
        public string Address { get; set; }

    }
}