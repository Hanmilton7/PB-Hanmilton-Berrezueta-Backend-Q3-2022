using System.Collections.Generic;

namespace EmployeesPichincha.Models
{
    public class Vaccine
    {

        public int VaccineId { get; set; }

        public string VaccineName { get; set; }

        public int VaccineDose { get; set; }

        public List<User> Posts { get; set; }
    }
}
