.class public final Lccsanandroidx/core/app/AlarmManagerCompat;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static setAlarmClock(Lccsanandroid/app/AlarmManager;JLccsanandroid/app/PendingIntent;Lccsanandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "alarmManager"    # Lccsanandroid/app/AlarmManager;
    .param p1, "triggerTime"    # J
    .param p3, "showIntent"    # Lccsanandroid/app/PendingIntent;
    .param p4, "operation"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alarmManager",
            "triggerTime",
            "showIntent",
            "operation"
        }
    .end annotation

    .line 59
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Lccsanandroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroid/app/AlarmManager$AlarmClockInfo;-><init>(JLccsanandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0, p4}, Lccsanandroid/app/AlarmManager;->setAlarmClock(Lccsanandroid/app/AlarmManager$AlarmClockInfo;Lccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p4}, Lccsanandroidx/core/app/AlarmManagerCompat;->setExact(Lccsanandroid/app/AlarmManager;IJLccsanandroid/app/PendingIntent;)V

    .line 66
    :goto_0
    return-void
.end method

.method public static setAndAllowWhileIdle(Lccsanandroid/app/AlarmManager;IJLccsanandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "alarmManager"    # Lccsanandroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alarmManager",
            "type",
            "triggerAtMillis",
            "operation"
        }
    .end annotation

    .line 117
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/app/AlarmManager;->setAndAllowWhileIdle(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V

    .line 122
    :goto_0
    return-void
.end method

.method public static setExact(Lccsanandroid/app/AlarmManager;IJLccsanandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "alarmManager"    # Lccsanandroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alarmManager",
            "type",
            "triggerAtMillis",
            "operation"
        }
    .end annotation

    .line 162
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V

    .line 167
    :goto_0
    return-void
.end method

.method public static setExactAndAllowWhileIdle(Lccsanandroid/app/AlarmManager;IJLccsanandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "alarmManager"    # Lccsanandroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alarmManager",
            "type",
            "triggerAtMillis",
            "operation"
        }
    .end annotation

    .line 222
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lccsanandroidx/core/app/AlarmManagerCompat;->setExact(Lccsanandroid/app/AlarmManager;IJLccsanandroid/app/PendingIntent;)V

    .line 227
    :goto_0
    return-void
.end method
