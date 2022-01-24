using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utility
/// </summary>
using dsMainTableAdapters;

public static class Utils
{
    public static void logAudit(string action, string table, string details, string action_by)
    {
        new AuditTrailTableAdapter().Insert(action, table, details, action_by);
    }
    
    public static void logError(Exception ex)
    {
        new ErrorLogsTableAdapter().Insert(ex.Message.ToString());
    }
}