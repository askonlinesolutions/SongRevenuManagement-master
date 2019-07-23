using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SongsManagement.Models;
using SongsManagement.DataAccess.Security;

namespace SongsManagement.Business.Security
{    
    public class SecurityBA
    {
        SecurityDA securityDA = new SecurityDA();

        public UserType DoLogin(string userName, string password)
        {
            return securityDA.DoLogin(userName, password);
        }
    }
    
}