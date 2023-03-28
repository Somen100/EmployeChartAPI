namespace Chart.Models
{
    public class EmployeeDetails
    {
        public int EmployeeId { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public string? Email { get; set; }
        public string? Mobile { get; set; }
        public DateTime? DOB { get; set; }
        public int? GenderId { get; set; }
        public string? Address { get; set; }

        public int? CountryId { get; set; }
        public int? CityId { get; set; }
        public int? SkillId { get; set; }
        public string? OtherCityName { get; set; }
        public List<EmployeeSkills> employeeSkills { get; set; }
    }

    public class EmployeeSkills
    {
        public int EmployeeId { get; set; }
        public int SkillId { get; set; }

    }
}
