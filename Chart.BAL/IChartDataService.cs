using Chart.Models;

namespace Chart.BAL
{
    public interface IChartDataService
    {
        IList<ChartData> GetAll(string? searchText);
    }
}
