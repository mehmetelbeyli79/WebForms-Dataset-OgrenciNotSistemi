using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Ogrenci_Not_Sistemi
{
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection baglanti=new SqlConnection(@"Data Source=DESKTOP-GGKQUUI;Initial Catalog=UdemySiteDb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sorgu 1
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute GRAF1",baglanti);
           SqlDataReader dr= komut.ExecuteReader();
            while(dr.Read())
            {
                Chart1.Series["Dersler"].Points.AddXY(dr[0].ToString(),dr[1].ToString());
            }
            baglanti.Close();

            //Sorgu 2
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Execute GRAF2", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                Chart2.Series["Cinsiyet"].Points.AddXY(dr2[0].ToString(), dr2[1].ToString());
            }
            baglanti.Close();

            //Sorgu 3
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("Execute GRAF3", baglanti);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                Chart3.Series["Ortalama"].Points.AddXY(dr3[0].ToString(), dr3[1].ToString());
            }
            baglanti.Close();
            //Chart1.Series["Öğrenciler"].Points.AddXY("Mehmet", 23);
            //Chart1.Series["Öğrenciler"].Points.AddXY("Ahmet", 46);
            //Chart1.Series["Öğrenciler"].Points.AddXY("Hasan", 96);
            //Chart1.Series["Öğrenciler"].Points.AddXY("Yusuf", 100);


        }
    }
}