using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SongsManagement.Models;
using SongsManagement.Business.Security;

namespace SongsManagement
{
    public partial class Login : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Made by Lavish
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            SecurityBA securityBA = new SecurityBA();
            UserType userType = securityBA.DoLogin(userName, password);
            if (userType != null)
            {
                switch (userType.TypeName)
                {
                    case "Admin":
                        Response.Redirect("View/Admin/Dashboard.aspx");
                        break;
                    case "Writer":
                    case "Publisher":
                        Response.Redirect("View/User/Profile.aspx");
                        break;
                    default:
                        Response.Redirect("");
                        break;
                }
            }
            else
            {
                //lblMesg.Text = "Username or Password is incorrect";
                txtUsername.Text = string.Empty;
                txtPassword.Text = string.Empty;
            }
        }
    }
}