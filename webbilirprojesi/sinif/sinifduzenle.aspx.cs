using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbilirprojesi.sinif
{
    public partial class sinifduzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                projeTableAdapters.projestudentTableAdapter ogrenci = new projeTableAdapters.projestudentTableAdapter();
                projeTableAdapters.projestudentTableAdapter studentid= new projeTableAdapters.projestudentTableAdapter();

                string ogrenciAdi = ogrenci.OgrenciGetir(id)[0].student_name;
                txtName.Text = ogrenciAdi;
                int student = studentid.OgrenciGetir(id)[0].studentid;
                txtClass.Text = student.ToString(); 




            }






        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {   
            int idd = Convert.ToInt32(Request.QueryString["id"].ToString());
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            projeTableAdapters.projestudentTableAdapter studentid = new projeTableAdapters.projestudentTableAdapter();
            string student = studentid.OgrenciGetir(id)[0].studentclassid;

            projeTableAdapters.projestudentTableAdapter ogrenci = new projeTableAdapters.projestudentTableAdapter();
            projeTableAdapters.projeclassTableAdapter sinif = new projeTableAdapters.projeclassTableAdapter();
            ogrenci.ogrenciguncelle(txtName.Text, student,id);
            sinif.sinifguncelle(txtClass.Text,idd);
            Response.Redirect("/sinif/siniflistesi.aspx");
        }
    }
}