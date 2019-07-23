using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SongsManagement.Models;
using SongsManagement.DataAccess.Admin;

namespace SongsManagement.Business.Admin
{
    public class OperationsBA
    {
        OperationsDA operationsDA = new OperationsDA();

        public void CreateUser(UserLoginInfo userLoginInfo, UserPersonalInfo userPersonalInfo)
        {
            operationsDA.CreateUser(userLoginInfo, userPersonalInfo);
        }

        public UserType[] GetUserTypes()
        {
            return operationsDA.GetUserTypes();
        }
    }
}