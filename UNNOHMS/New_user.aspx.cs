using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.Configuration;

namespace UNNOHMS
{
    public partial class New_user : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)


        {
            Label5.Text = "Logged In As : " + Session["Username"];
            if (Session["Username"] == null)
            {
                
                Response.Redirect("Log_In.aspx");


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int UserID = 0;
            string constr = ConfigurationManager.ConnectionStrings["UNNOHMS.Properties.Settings.Setting"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("NewUsers"))

                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", TxtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", TxtPass.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password1", TxtPass1.Text.Trim());
                        cmd.Parameters.AddWithValue("@Designation", Rbndes.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@CreatedDate", System.DateTime.Now);


                        //cmd.Parameters.Add("@Entry_date", SqlDbType.DateTime).Value = System.DateTime.Now
                        cmd.Connection = con;
                        con.Open();
                        UserID = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (UserID)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;

                    default:
                        message = "Registration successful.\\nUser Id: " + UserID.ToString();
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }

        protected void nulgbtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Log_In.aspx");
        }
    }
}


    