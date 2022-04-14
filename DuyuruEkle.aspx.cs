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
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                DataSet1TableAdapters.TBL_OGRETMENTableAdapter dt = new DataSet1TableAdapters.TBL_OGRETMENTableAdapter();
                dropdownList1.DataSource = dt.OgretmenListesi();
                dropdownList1.DataTextField = "OGRTADSOYAD";
                dropdownList1.DataValueField = "OGRTID";
                dropdownList1.DataBind();
            }
            
        }

        protected void duyuruEkle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt=new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruEkle(txtduyuruBaslik.Text, txtduyuruIcerik.Value,Convert.ToInt32(dropdownList1.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}