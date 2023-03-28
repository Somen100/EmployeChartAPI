using Chart.DAL;
using Chart.Models;

namespace Chart.BAL
{
    public class EmployeeDetailService : IEmployeeDetailService
    {
        private readonly IEmployeeDetailRepo _repo;

        public EmployeeDetailService(IEmployeeDetailRepo repo)
        {
            _repo = repo;
        }

        public EmployeeDetails AddNewEmployee(EmployeeDetails record)
        {
            return _repo.AddNewEmployee(record);
        }

        public IList<City> GetAllCities(int id)
        {
            return _repo.GetAllCities(id);
        }

        public IList<Country> GetAllCountries(string? searchText)
        {
            return _repo.GetAllCountries(searchText);
        }

        public IList<Gender> GetAllGenders()
        {
            return _repo.GetAllGenders();
        }

        public IList<Skills> GetAllSkills()
        {
            return _repo.GetAllSkills();
        }
    }
}
