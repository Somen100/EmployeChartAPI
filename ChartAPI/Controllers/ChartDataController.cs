using Chart.BAL;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ChartAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ChartDataController : ControllerBase
    {
        private readonly IChartDataService _service;

        public ChartDataController(IChartDataService service)
        {
            _service = service;
        }

        [HttpGet]
        [Route("GetallData")]
        public IActionResult GetallData(string? searchText = "")
        {
            var result = _service.GetAll(searchText);
            return Ok(result);
        }
    }
}
