using System;

/// <summary>
/// Summary description for TimeUtils
/// </summary>
public static class TimeUtils
{

    public static DateTime convertDate(string user_date)
    {
        DateTime _localDate = DateTime.Parse(DateTime.Parse(user_date).ToShortDateString());
        // _localDate = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(_localDate, TimeZoneInfo.Local.Id, "E. Africa Standard Time");
        return _localDate;
    }

    public static DateTime getDate()
    {
        DateTime serverTime = DateTime.Now;
        return TimeZoneInfo.ConvertTimeBySystemTimeZoneId(serverTime, TimeZoneInfo.Local.Id, "E. Africa Standard Time");
    }
    public static DateTime toLocalDate(DateTime user_date)
    {
        return TimeZoneInfo.ConvertTimeBySystemTimeZoneId(user_date, TimeZoneInfo.Local.Id, "E. Africa Standard Time");
    }

    public static string convertTime(string user_time)
    {
        DateTime _localTime = DateTime.Parse(user_time);
        // _localTime = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(_localTime, TimeZoneInfo.Local.Id, "E. Africa Standard Time");
        return _localTime.ToString("HH:mm");
    }
}