using Chart.Models;

namespace Chart.DAL
{
    public interface IChartDataRepo
    {
        IList<ChartData> GetAll(string? searchText);
      
    }
}
