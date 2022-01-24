using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cookies
/// </summary>
namespace myCookies
{
    public class Cookies
    {
        public static void resetCookie()
        {
            try
            {
                DateTime now = DateTime.Now;
                HttpCookie staffIdCookie = HttpContext.Current.Request.Cookies["staffId"];
                HttpCookie roleCookie = HttpContext.Current.Request.Cookies["role"];
                HttpCookie userNameCookie = HttpContext.Current.Request.Cookies["userName"];
                HttpCookie roleIdCookie = HttpContext.Current.Request.Cookies["roleId"];
                HttpCookie staffCodeCookie = HttpContext.Current.Request.Cookies["staffCode"];

                // Set the cookie expiration date.

                staffIdCookie.Expires = now.AddDays(-1d);
                userNameCookie.Expires = now.AddDays(-1d);
                roleIdCookie.Expires = now.AddDays(-1d);
                roleCookie.Expires = now.AddDays(-1d);
                staffCodeCookie.Expires = now.AddDays(-1d);

                HttpContext.Current.Response.Cookies.Add(staffIdCookie);
                HttpContext.Current.Response.Cookies.Add(userNameCookie);
                HttpContext.Current.Response.Cookies.Add(roleIdCookie);
                HttpContext.Current.Response.Cookies.Add(roleCookie);
                HttpContext.Current.Response.Cookies.Add(staffCodeCookie);
            }
            catch (Exception)
            {
            }
        }
        public static int getStaffId()
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies["staffId"];
            int staffId = Int32.Parse(cookie.Value);
            return staffId;
        }
        public static string getUserName()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies["userName"];
            string userName = cookie.Value;
            return userName;
        }
        public static int getRoleId()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies["roleId"];
            int roleId = Int32.Parse(cookie.Value);
            return roleId;
        }
        public static string getRole()
        {
            HttpCookie roleCookie = HttpContext.Current.Request.Cookies["role"];
            string role = roleCookie.Value;
            return role;
        }
        public static string getStaffCode()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies["staffCode"];
            string staffCode = cookie.Value;
            return staffCode;
        }
    }
}
  