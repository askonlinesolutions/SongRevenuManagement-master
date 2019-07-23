using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SongsManagement.Models
{
    public partial class UserPersonalInfo
    {
        public System.Guid Id { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string DisplayName { get; set; }
        public string PRO { get; set; }
        public string IP { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string PhotoPath { get; set; }
        public System.Guid User_LoginInfo_Id { get; set; }
    }
}