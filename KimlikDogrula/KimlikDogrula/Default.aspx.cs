using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimlikDogrula
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            basarili.Visible = false;
            basarisiz.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tr.gov.nvi.tckimlik.KPSPublic tc = new tr.gov.nvi.tckimlik.KPSPublic();

            try
            {
                long tcNo = Convert.ToInt64(txtTc.Text);
                string ad = txtAd.Text.ToUpper().TrimEnd();
                string soyad = txtSoyad.Text.ToUpper().TrimEnd();
                int dogumYili = Convert.ToInt32(txtDogumyili.Text);
                bool kontrol = tc.TCKimlikNoDogrula(tcNo, ad, soyad, dogumYili);
                if (kontrol)
                {
                    basarisiz.Visible = false;
                    basarili.Visible = true;
                }
                else
                {
                    basarisiz.Visible = true;
                    basarili.Visible = false;
                }

            }
            catch (Exception hataTuru)
            {
                basarisiz.Visible = true;
                basarisiz.InnerText = "Şöyle bir hata meydana geldi: " + hataTuru.ToString();
            }
        }
    }
}