using Microsoft.Extensions.Hosting;
using System.Collections.Generic;

namespace EmployeesPichincha.Models
{
    public class Type
    {
        public int TypeId { get; set; }

        public string TypeName { get; set; }

        public List<User> Posts { get; set; }

    }
}
