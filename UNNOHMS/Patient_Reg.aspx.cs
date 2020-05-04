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
    public partial class WebForm2 : System.Web.UI.Page
    {

        DataSet ds = new DataSet();
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)

           {
            btnSave.Attributes.Add("onclick", "return ValidateForm()");
            Label7.Text = "Logged In As : " + Session["Username"];

            if (Session["Username"] == null)
            {

                Response.Redirect("Log_In.aspx");


            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
             
             con = new SqlConnection("Data Source=KECL-TB-LAP;Initial Catalog=UNNO;Integrated Security=True");
              cmd = new SqlCommand("NewPatient", con);
              cmd.CommandType = CommandType.StoredProcedure;

            //cmd.CommandType = CommandType.StoredProcedure;
              cmd.Parameters.Add("@Patient_ID", SqlDbType.Int).Value = TxtPatID.Text;
              cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = Txtname.Text;
               cmd.Parameters.Add("@Age", SqlDbType.Int).Value = Txtage.Text;
              cmd.Parameters.Add("@Location", SqlDbType.VarChar).Value = Txtloc.Text;
              cmd.Parameters.Add("@Entry_Date", SqlDbType.DateTime).Value = System.DateTime.Now;
              cmd.Parameters.Add("@Entry_Staff", SqlDbType.VarChar).Value = Session["Username"];


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
                //string message = "Patient Registered Successfully.";
                //string script = "Window.onload = function() { alert (' ";
                //script += message;
                //script += " ')};";

                //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                //    //System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=""JavaScript"">alert('Mycobacterial Culture Data saved succesfully')</SCRIPT>");
            
        
                  
        
        }

        protected void Btnexit_Click(object sender, EventArgs e)
        {           
            
                Session.Abandon();
                Response.Redirect("Log_In.aspx");   
              

         
        }
    
    
    }
            

}
        

    