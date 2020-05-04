using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;





namespace UNNOHMS
{
    public partial class Log_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label5.Visible = false;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=KECL-TB-LAP;Initial Catalog=UNNO;Integrated Security=True;"))
                {

                    sqlCon.Open();
                    string query = "SELECT COUNT(*)FROM Users WHERE Username=@Username AND Password=@Password";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Username", Txtuser1.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", TxtPass.Text.Trim());
                    int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                    if (count > 0)
                    {
                        Session["Username"] = Txtuser1.Text.Trim();
                        Response.Redirect("Patient_Reg.aspx");


                    }
                    else
                    {

                        Label1.Visible = true;
                        this.Label1.ForeColor = Color.Red;


                    }
                }


            }
            catch (Exception)
            {
                Label5.Visible = true;
                this.Label5.ForeColor = Color.Red;
            }

           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }

       
    }

