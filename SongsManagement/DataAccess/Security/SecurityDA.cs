using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SongsManagement.Models;

namespace SongsManagement.DataAccess.Security
{
    public class SecurityDA
    {
        public UserType DoLogin(string userName, string password)
        {
            UserType userType = null;
            using (var context = new SongsManagementEntities())
            {
                User_LoginInfo user_LoginInfo = context.User_LoginInfo.First<User_LoginInfo>(u => (u.UserName == userName && u.Password == password));
                if (user_LoginInfo != null)
                {
                    User_Type user_Type = context.User_Type.First(ut => ut.Id == user_LoginInfo.UserTypeId);
                    if (user_Type != null)
                    {
                        userType = new UserType();
                        userType.CreatedTimestamp = user_Type.CreatedTimestamp;
                        userType.Id = user_Type.Id;
                        userType.IsActive = user_Type.IsActive;
                        userType.Timestamp = user_Type.Timestamp;
                        userType.TypeName = user_Type.TypeName;

                    }
                }
            }
            return userType;
        }
    }
}