using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SongsManagement.Models
{
    public class UserLoginInfo
    {
        public System.Guid Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public Nullable<byte> LoginAttempts { get; set; }
        public Nullable<System.Guid> UserTypeId { get; set; }
        public Nullable<System.DateTime> CreatedTimestamp { get; set; }
        public Nullable<System.DateTime> Timestamp { get; set; }
    }
}