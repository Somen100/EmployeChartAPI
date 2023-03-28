using Chart.Models;
using System.Data;
using System.Data.SqlClient;

namespace Chart.DAL
{
    public class EmployeeDetailRepo : IEmployeeDetailRepo
    {
        string _connectionString;

        public EmployeeDetailRepo(string connectionString)
        {
            _connectionString = connectionString;
        }

        public EmployeeDetails AddNewEmployee(EmployeeDetails record)
        {
            int numberOfRowsAffected = 0;
            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                var cmd = new SqlCommand("sp_CreateEmployee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FirstName", record.FirstName);
                cmd.Parameters.AddWithValue("@LastName", record.LastName);
                cmd.Parameters.AddWithValue("@Email", record.Email);
                cmd.Parameters.AddWithValue("@Mobile", record.Mobile);
                cmd.Parameters.AddWithValue("@Address", record.Address);
                cmd.Parameters.AddWithValue("@DOB", record.DOB);
                cmd.Parameters.AddWithValue("@GenderId", record.GenderId);
                cmd.Parameters.AddWithValue("@CountryId", record.CountryId);
                cmd.Parameters.AddWithValue("@CityId", record.CityId);
               cmd.Parameters.AddWithValue("@SkillId", record.SkillId);
                cmd.Parameters.AddWithValue("@OtherCityName", record.OtherCityName);


                SqlParameter outputParam = cmd.Parameters.Add("@Id", SqlDbType.Int);
                outputParam.Direction = ParameterDirection.Output;
                con.Open();
                numberOfRowsAffected = cmd.ExecuteNonQuery();
                con.Close();
                int id = (int)outputParam.Value;

                if (numberOfRowsAffected > 0)
                {
                    using (SqlConnection connection = new SqlConnection(_connectionString))
                    {
                        connection.Open();

                        foreach (var x in record.employeeSkills)
                        {
                            var cmnd = new SqlCommand("sp_CreateEmployeeSkills", connection);
                            cmnd.CommandType = CommandType.StoredProcedure;
                            cmnd.Parameters.AddWithValue("@EmployeeId", id);
                            cmnd.Parameters.AddWithValue("@SkillId", x.SkillId);

                            numberOfRowsAffected = cmnd.ExecuteNonQuery();
                        }
                        connection.Close();

                    }
                    return record;

                }
            }
            return record;
        }

        public IList<City> GetAllCities(int id)
        {
            List<City> cities = new List<City>();
            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                SqlCommand cmd = new SqlCommand("GetCitiesByCountryId", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CountryId", id);
                con.Open();


                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    //                     
                    var record = new City()
                    {
                        CityId = (rdr["CityId"] == null || Convert.IsDBNull(rdr["CityId"])) ? 0 : (int)rdr["CityId"],
                        CityName = rdr["CityName"].ToString(),
                        CountryId = (rdr["CountryId"] == null || Convert.IsDBNull(rdr["CountryId"])) ? 0 : (int)rdr["CountryId"],
                    };
                    cities.Add(record);
                }
                con.Close();
                return cities;
            }
        }

        public IList<Country> GetAllCountries(string? searchText)
        {
            List<Country> countries = new List<Country>();
            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                SqlCommand cmd = new SqlCommand("GetAllCountries", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@searchText", searchText);
                con.Open();


                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    //                     
                    var record = new Country()
                    {
                        CountryId = (rdr["CountryId"] == null || Convert.IsDBNull(rdr["CountryId"])) ? 0 : (int)rdr["CountryId"],
                        CountryName = rdr["CountryName"].ToString()
                    };
                    countries.Add(record);
                }
                con.Close();
                return countries;
            }
        }

        public IList<Gender> GetAllGenders()
        {
            List<Gender> genders = new List<Gender>();
            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                SqlCommand cmd = new SqlCommand("GetAllGenders", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();


                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    //                     
                    var record = new Gender()
                    {
                        GenderId = (rdr["GenderId"] == null || Convert.IsDBNull(rdr["GenderId"])) ? 0 : (int)rdr["GenderId"],
                        GenderName = rdr["GenderName"].ToString()
                    };
                    genders.Add(record);
                }
                con.Close();
                return genders;
            }
        }

        public IList<Skills> GetAllSkills()
        {
            List<Skills> skills = new List<Skills>();
            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                SqlCommand cmd = new SqlCommand("getallSkils", con);
                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read()){
                    var record = new Skills()
                    {
                        SkillId = (rdr["SkillId"] == null || Convert.IsDBNull(rdr["SkillId"])) ? 0 : (int)rdr["SkillId"],
                        SkillName = rdr["SkillName"].ToString()
                    };
                    skills.Add(record);
                }
                con.Close();
                return skills;
            }
        }
    }
}
