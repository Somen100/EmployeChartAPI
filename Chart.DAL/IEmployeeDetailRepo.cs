using Chart.Models;

namespace Chart.DAL
{
    public interface IEmployeeDetailRepo
    {
        EmployeeDetails AddNewEmployee(EmployeeDetails record);
        IList<Country> GetAllCountries(string? searchText);
        IList<City> GetAllCities(int id);
        IList<Skills> GetAllSkills();
        IList<Gender> GetAllGenders();

    }
}
