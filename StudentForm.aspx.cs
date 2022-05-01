using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplicationCrud
{
    public partial class StudentForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-7G0P5Q8;Initial Catalog=Db_5;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            alok();
        }
            public void alok()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select*from Students", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            grd.DataSource = dt;
            grd.DataBind();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Students(name,rollno,city,age)values('"+txtname.Text+"','"+txtrollno.Text+"','"+txtcity.Text+"','"+txtage.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void btnisert_Click(object sender, EventArgs e)
        {
           
        }
    }
}