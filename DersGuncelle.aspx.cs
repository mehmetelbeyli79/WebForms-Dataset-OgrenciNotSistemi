using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ogrenci_Not_Sistemi
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
 id=Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt=new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            txtDersGuncelle.Text=dt.DersSec(id)[0].DERSAD;
            }
           

        }

        protected void dersGuncelle_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(txtDersGuncelle.Text, id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}