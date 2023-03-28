using Chart.Models;
using System.Data.SqlClient;
using System.Data;
namespace Chart.DAL
{
    public class ChartDataRepo : IChartDataRepo
    {
        string _connectionString;

        public ChartDataRepo(string connectionString)
        {
            _connectionString = connectionString;
        }

        public IList<ChartData> GetAll(string? searchText)
        {
            List<ChartData> chartDetails = new List<ChartData>();
            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                SqlCommand cmd = new SqlCommand("getalldata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("searchText", searchText);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    var chartData = new ChartData()
                    { 
                      ChartDataId = (int)reader["ChartDataId"],
                        EndYear = (reader["EndYear"] == null || Convert.IsDBNull(reader["EndYear"])) ? (DateTime?)null : (DateTime)(reader["EndYear"]),
                        Added = (reader["Added"] == null || Convert.IsDBNull(reader["Added"])) ? (DateTime?)null : (DateTime)(reader["Added"]),
                        Published = (reader["Published"] == null || Convert.IsDBNull(reader["Published"])) ? (DateTime?)null : (DateTime)(reader["Published"]),
                        Sector = reader["Sector"].ToString(),
                        Intensity = (int)reader["Intensity"],
                        Relevance = (int)reader["Relevance"],
                        Likelihood = (int)reader["Likelihood"],
                        Topic = reader["Topic"].ToString(),
                        Insight = reader["Insight"].ToString(),
                        UrlLink = reader["UrlLink"].ToString(),
                        Region = reader["Region"].ToString(),
                        StartYear = reader["StartYear"].ToString(),
                        Impact = reader["Impact"].ToString(),
                        Country = reader["Country"].ToString(),
                        Pestle = reader["Pestle"].ToString(),
                        Source = reader["Source"].ToString(),
                        Title = reader["Title"].ToString(),
                        City = reader["City"].ToString(),

                    };
                    chartDetails.Add(chartData);
                }
                return (chartDetails);
            }
        }

        public IList<City> GetAllCities(int id)
        {
            throw new NotImplementedException();
        }

        public IList<Country> GetAllCountries()
        {
            throw new NotImplementedException();
        }
    } }