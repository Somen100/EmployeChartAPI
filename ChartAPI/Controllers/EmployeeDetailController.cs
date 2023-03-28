using Chart.BAL;
using Chart.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ChartAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeDetailController : ControllerBase
    {
        private readonly IEmployeeDetailService _service;

        public EmployeeDetailController(IEmployeeDetailService service)
        {
            _service = service;
        }

        [HttpPost]
        public IActionResult CreateEmpployee(EmployeeDetails record)
        {
            var result = _service.AddNewEmployee(record);
            return Ok(result);
        }
        [HttpGet]
        [Route("Countries")]
        public IActionResult GetAllCountries(string? searchText = "")
        {
            var result = _service.GetAllCountries(searchText);
            return Ok(result);
        }

        [HttpGet]
        [Route("Cities/{id}")]
        public IActionResult GetAllCitiesByCountryId(int id)
        {
            var result = _service.GetAllCities(id);
            return Ok(result);
        }

        [HttpGet]
        [Route("GetAllSkills")]
        public IActionResult GetAllSkills()
        {
            var result = _service.GetAllSkills( );
            return Ok(result);
        }

        [HttpGet]
        [Route("GetAllGenders")]
        public IActionResult GetAllGenders()
        {
            var result = _service.GetAllGenders();
            return Ok(result);
        }
        
    }
}
