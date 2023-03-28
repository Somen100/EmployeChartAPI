using Chart.DAL;
using Chart.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chart.BAL
{
    public class ChartDataService:IChartDataService
    {
        private readonly IChartDataRepo _repo;
        public ChartDataService(IChartDataRepo repo)
        {
            _repo = repo;
        }

        public IList<ChartData> GetAll(string? searchText)
        {
            return _repo.GetAll(searchText);
        }
    }
}
