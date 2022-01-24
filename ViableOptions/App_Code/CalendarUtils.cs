using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3;
using Google.Apis.Services;
using Google.Apis.Util.Store;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using System.Web;

/// <summary>
/// Summary description for CalendarUtils
/// </summary>

public static class CalendarUtils
{
    public static CalendarService GetCalendarService(string json_path, string credential_path)
    {
        UserCredential credential;
        string[] scopes = { CalendarService.Scope.CalendarEvents };
        string applicationName = "Viable-Options Calendar";

        using (var stream =
           new FileStream(json_path, FileMode.Open, FileAccess.Read))
        {
            // The file token.json stores the user's access and refresh tokens, and is created
            // automatically when the authorization flow completes for the first time.
            credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
                GoogleClientSecrets.Load(stream).Secrets,
                scopes,
                "user",
                CancellationToken.None,
                new FileDataStore(credential_path, true)).Result;
        }
        return new CalendarService(new BaseClientService.Initializer
        {
            HttpClientInitializer = credential,
            ApplicationName = applicationName,
        });
    }

    public static CalendarService GetCalendarServiceForService(string service_path)
    {

        var certificate = new X509Certificate2(service_path, "notasecret", X509KeyStorageFlags.Exportable);

        string service_email = System.Configuration.ConfigurationManager.AppSettings["service_email"];
        ServiceAccountCredential credential = new ServiceAccountCredential(
            new ServiceAccountCredential.Initializer(service_email)
            {
                Scopes = new[] { CalendarService.Scope.CalendarEvents },
            }.FromCertificate(certificate));
        // Create the service.
        CalendarService service = new CalendarService(new BaseClientService.Initializer()
        {
            HttpClientInitializer = credential,
            ApplicationName = "Viable Options",
        });

        return service;
    }

    public static CalendarService FetchService(string jsonFile)
    {
        ServiceAccountCredential credential;
        string[] scopes = { CalendarService.Scope.Calendar };

        using (var stream =
            new FileStream(jsonFile, FileMode.Open, FileAccess.Read))
        {
            var confg = Google.Apis.Json.NewtonsoftJsonSerializer.Instance.Deserialize<JsonCredentialParameters>(stream);
            credential = new ServiceAccountCredential(
               new ServiceAccountCredential.Initializer(confg.ClientEmail)
               {
                   Scopes = scopes
               }.FromPrivateKey(confg.PrivateKey));
        }

        return new CalendarService(new BaseClientService.Initializer()
        {
            HttpClientInitializer = credential,
            ApplicationName = "Viable-Options Calendar",
        });
    }
}