using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Biopsias
{
    public partial class RegistrarBiopsia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            
                if (GridView1.Rows.Count == 0)
                {

                }
                else
                {

                    Panel1.Visible = true;
                    TextBox1.Text = GridView1.Rows[0].Cells[1].Text;
                    TextBox2.Text = GridView1.Rows[0].Cells[2].Text;
                    TextBox4.Text = GridView1.Rows[0].Cells[3].Text;

                }
            

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RBiopsia.aspx");
        }
    }
}