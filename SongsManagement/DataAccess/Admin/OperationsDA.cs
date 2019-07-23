using SongsManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SongsManagement.DataAccess.Admin
{
    public class OperationsDA
    {
        public void CreateUser(UserLoginInfo userLoginInfo, UserPersonalInfo userPersonalInfo)
        {
            using (var context = new SongsManagementEntities())
            {
                User_LoginInfo user_LoginInfo = new User_LoginInfo();
                user_LoginInfo.CreatedTimestamp = userLoginInfo.CreatedTimestamp;
                user_LoginInfo.Id = userLoginInfo.Id;
                user_LoginInfo.LoginAttempts = userLoginInfo.LoginAttempts;
                user_LoginInfo.Password = userLoginInfo.Password;
                user_LoginInfo.Timestamp = userLoginInfo.Timestamp;
                user_LoginInfo.UserName = userLoginInfo.UserName;
                user_LoginInfo.UserTypeId = userLoginInfo.UserTypeId;

                context.User_LoginInfo.Add(user_LoginInfo);

                User_PersonalInfo user_PersonalInfo = new User_PersonalInfo();
                user_PersonalInfo.Address = userPersonalInfo.Address;
                user_PersonalInfo.City = userPersonalInfo.City;
                user_PersonalInfo.DisplayName = userPersonalInfo.DisplayName;
                user_PersonalInfo.Email = userPersonalInfo.Email;
                user_PersonalInfo.FirstName = userPersonalInfo.FirstName;
                user_PersonalInfo.Id = userPersonalInfo.Id;
                user_PersonalInfo.IP = userPersonalInfo.IP;
                user_PersonalInfo.LastName = userPersonalInfo.LastName;
                user_PersonalInfo.MiddleName = userPersonalInfo.MiddleName;
                user_PersonalInfo.Phone = userPersonalInfo.Phone;
                user_PersonalInfo.PhotoPath = userPersonalInfo.PhotoPath;
                user_PersonalInfo.PRO = userPersonalInfo.PRO;
                user_PersonalInfo.State = userPersonalInfo.State;
                user_PersonalInfo.User_LoginInfo_Id = userPersonalInfo.User_LoginInfo_Id;

                context.User_PersonalInfo.Add(user_PersonalInfo);

                context.SaveChanges();
            }
        }

        public UserType[] GetUserTypes()
        {
            List<UserType> userTypes = new List<UserType>();
            using (var context = new SongsManagementEntities())
            {
                User_Type[] user_Types = context.User_Type.ToArray();
                foreach(User_Type user_Type in user_Types)
                {
                    UserType userType = new UserType();
                    userType.CreatedTimestamp = user_Type.CreatedTimestamp;
                    userType.Id = user_Type.Id;
                    userType.IsActive = user_Type.IsActive;
                    userType.Timestamp = user_Type.Timestamp;
                    userType.TypeName = user_Type.TypeName;

                    userTypes.Add(userType);
                }
            }
            return userTypes.ToArray();
        }
    }
}