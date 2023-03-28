namespace Chart.Models
{
    public class ChartData
    {
        public int ChartDataId { get; set; }
        public DateTime? EndYear { get; set; }
        public int? Intensity { get; set; }
        public string? Sector { get; set; }

        public string? Topic { get; set; }
        public string? Insight { get; set; }
        public string? UrlLink { get; set; }
        public string? Region { get; set; }
        public string? StartYear { get; set; }
        public string? Impact { get; set; }
        public string? City { get; set; }

        
        public DateTime? Added { get; set; }
        public DateTime? Published { get; set; }
        public string? Country { get; set; }
        public int? Relevance { get; set; }
        public string? Pestle { get; set; }
        public string? Source { get; set; }
        public string? Title { get; set; }
        public int? Likelihood { get; set; }
    }
}
