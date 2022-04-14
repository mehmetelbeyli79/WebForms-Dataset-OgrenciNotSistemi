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
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
                try
                {
                    id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                    //txtOgrId.Text = id.ToString();
                    DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

                    txtOgrId.Text = dt.OgrenciSec(id)[0].OGRID.ToString();
                    txtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                    txtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                    txtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    txtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                    txtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                    txtOgrFotograf.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;
                }
                catch (Exception)
                {

                    txtOgrFotograf.Text = "link Giriniz";
                }
                

            }
        }

        protected void ogrGuncelle_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciGuncelle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrTelefon.Text, txtOgrMail.Text, txtOgrSifre.Text, txtOgrFotograf.Text, Convert.ToInt32(txtOgrId.Text));
            Response.Redirect("default.aspx");
        }
    }
}