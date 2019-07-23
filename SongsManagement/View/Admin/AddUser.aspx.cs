using SongsManagement.Business.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SongsManagement.Models;

namespace SongsManagement.View.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        OperationsBA operationsBA = new OperationsBA();
        UserType[] userTypes;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                userTypes = operationsBA.GetUserTypes();
                BindData();
            }
        }

        void BindData()
        {
            ddlUserType.DataSource = userTypes;
            ddlUserType.DataTextField = "TypeName";
            ddlUserType.DataValueField = "Id";
            ddlUserType.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            UserLoginInfo userLoginInfo = new UserLoginInfo();
            userLoginInfo.CreatedTimestamp = userLoginInfo.Timestamp = DateTime.Now;
            userLoginInfo.Id = Guid.NewGuid();
            userLoginInfo.LoginAttempts = 1;
            userLoginInfo.Password = txtPassword.Text;            
            userLoginInfo.UserName = txtUserName.Text;
            userLoginInfo.UserTypeId = Guid.Parse(ddlUserType.SelectedValue);

            UserPersonalInfo userPersonalInfo = new UserPersonalInfo();
            userPersonalInfo.Address = txtAddress.Text;
            userPersonalInfo.City = txtCity.Text;
            userPersonalInfo.DisplayName = txtDisplayName.Text;
            userPersonalInfo.Email = txtEmail.Text;
            userPersonalInfo.FirstName = txtFirstName.Text;
            userPersonalInfo.Id = Guid.NewGuid();
            userPersonalInfo.IP = txtIP.Text;
            userPersonalInfo.LastName = txtLastName.Text;
            userPersonalInfo.MiddleName = txtMiddleName.Text;
            userPersonalInfo.Phone = txtPhone.Text;
            userPersonalInfo.PhotoPath = "";// fuPhoto;
            userPersonalInfo.PRO = txtPro.Text;
            userPersonalInfo.State = txtState.Text;
            userPersonalInfo.User_LoginInfo_Id = userLoginInfo.Id;

            operationsBA.CreateUser(userLoginInfo, userPersonalInfo);
        }
    }
}