using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ogrenci_Not_Sistemi
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dersEkle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt=new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersEkle(txtDersEkle.Text);
            Response.Redirect("DersListesi.aspx");
        }
    }
}