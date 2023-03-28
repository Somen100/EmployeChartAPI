using Chart.BAL;
using Chart.DAL;

namespace ChartAPI
{
    public static class ServiceExtensions
    {
        public static void RegisterRepos(this IServiceCollection collection, ConfigurationManager configuration)
        {
            var connectionString = configuration["ConnectionStrings:LoanConnstr"];
            collection.AddTransient<IChartDataService, ChartDataService>();
            collection.AddTransient<IChartDataRepo>(s => new ChartDataRepo(connectionString));

            collection.AddTransient<IEmployeeDetailService, EmployeeDetailService>();
            collection.AddTransient<IEmployeeDetailRepo>(s => new EmployeeDetailRepo(connectionString));
        }
    }
}
