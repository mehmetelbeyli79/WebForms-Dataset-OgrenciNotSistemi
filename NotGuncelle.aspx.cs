using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ogrenci_Not_Sistemi
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                nid = Convert.ToInt32(Request.QueryString["NOTID"]);
                DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
                txtNotDersAdi.Text = dt.NotSec(nid)[0].DERSAD.ToString();
                txtNotAdID.Text = dt.NotSec(nid)[0].OGRENCIID.ToString();
                txtNotAdSoyad.Text = dt.NotSec(nid)[0].OGRENCIADSOYAD.ToString();
                txtNotSinav1.Text = dt.NotSec(nid)[0].SINAV1.ToString();
                txtNotSinav2.Text = dt.NotSec(nid)[0].SINAV2.ToString();
                txtNotSinav3.Text = dt.NotSec(nid)[0].SINAV3.ToString();
                txtNotOrtalama.Text = dt.NotSec(nid)[0].ORTALAMA.ToString();
                txtNotDurum.Text = dt.NotSec(nid)[0].DURUM.ToString();
            }
           

        }

        protected void ogrNotHesapla_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1=Convert.ToDouble(txtNotSinav1.Text);
            sinav2=Convert.ToDouble(txtNotSinav2.Text);
            sinav3=Convert.ToDouble(txtNotSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            txtNotOrtalama.Text=ortalama.ToString("0.00");

            if(ortalama>=50)
            {
                txtNotDurum.Text = "true";
            }
            else
            {
                txtNotDurum.Text = "false"; 
            }

        }

        protected void ogrNotGuncelle_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"]);
            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(txtNotSinav1.Text), byte.Parse(txtNotSinav2.Text), byte.Parse(txtNotSinav3.Text), decimal.Parse(txtNotOrtalama.Text), bool.Parse(txtNotDurum.Text), nid);
            Response.Redirect("NotListesi.aspx");
        }
    }
}