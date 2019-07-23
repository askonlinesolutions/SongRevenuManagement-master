using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SongsManagement.Models
{
    public partial class UserType
    {
        public System.Guid Id { get; set; }
        public string TypeName { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> CreatedTimestamp { get; set; }
        public Nullable<System.DateTime> Timestamp { get; set; }
    }
}