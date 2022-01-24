using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;

public static class Utilities
{
    static Utilities()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    // Generic method for sending emails
    public static void SendMail(string from, string to, string subject,
    string body)
    {
        // Configure mail client
        using (SmtpClient mailClient = new SmtpClient(DbConfiguration.MailServer, 587))
        {
            // Set credentials (for SMTP servers that require authentication)
            mailClient.UseDefaultCredentials = false;
            mailClient.Credentials = new NetworkCredential(
                DbConfiguration.MailUsername, DbConfiguration.MailPassword);
            // Create the mail message
            MailMessage mailMessage = new MailMessage(from, to, subject, body);
            // Send mail
           // mailClient.Send(mailMessage);
        }
    }
    // Send error log mail
    public static void LogError(Exception ex)
    {
        DateTime serverTime = DateTime.Now;
        DateTime _localTime = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(serverTime, TimeZoneInfo.Local.Id, "E. Africa Standard Time");
        // get the current date and time
        string dateTime = _localTime.ToLongDateString() + ", at "
        + _localTime.ToShortTimeString();
        // stores the error message
        string errorMessage = "Exception generated on " + dateTime;
        // obtain the page that generated the error
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        errorMessage += "\n\n Page location: " + context.Request.RawUrl;
        // build the error message
        errorMessage += "\n\n Message: " + ex.Message;
        errorMessage += "\n\n Source: " + ex.Source;
        errorMessage += "\n\n Method: " + ex.TargetSite;
        errorMessage += "\n\n Stack Trace: \n\n" + ex.StackTrace;
        // send error email in case the option is activated in web.config
        if (DbConfiguration.EnableErrorLogEmail)
        {
            string from = DbConfiguration.MailFrom;
            string to = DbConfiguration.ErrorLogEmail;
            string subject = "KwikServe Error Report";
            string body = errorMessage;
            SendMail(from, to, subject, body);
        }
    }
}
