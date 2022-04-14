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
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
                DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
                txtDuyuruId.Text = id.ToString();
                txtduyuruBaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
                txtduyuruIcerik.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;

            }
        
        }

        protected void duyuruGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruGuncelle(txtduyuruBaslik.Text, txtduyuruIcerik.Value, Convert.ToInt32(txtDuyuruId.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}