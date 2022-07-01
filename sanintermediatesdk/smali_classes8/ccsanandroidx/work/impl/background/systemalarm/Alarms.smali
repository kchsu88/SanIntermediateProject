.class Lccsanandroidx/work/impl/background/systemalarm/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "Alarms"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static cancelAlarm(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "workSpecId"    # Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 88
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v1

    .line 89
    .local v1, "systemIdInfoDao":Lccsanandroidx/work/impl/model/SystemIdInfoDao;
    invoke-interface {v1, p2}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;)Lccsanandroidx/work/impl/model/SystemIdInfo;

    move-result-object v2

    .line 90
    .local v2, "systemIdInfo":Lccsanandroidx/work/impl/model/SystemIdInfo;
    if-eqz v2, :cond_0

    .line 91
    iget v3, v2, Lccsanandroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0, p2, v3}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    .line 92
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 93
    const-string v7, "Removing SystemIdInfo for workSpecId (%s)"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Throwable;

    .line 92
    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    invoke-interface {v1, p2}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->removeSystemIdInfo(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private static cancelExactAlarm(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "alarmId"    # I

    .line 103
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AlarmManager;

    .line 104
    .local v0, "alarmManager":Lccsanandroid/app/AlarmManager;
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 105
    .local v1, "delayMet":Lccsanandroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-static {p0, p2, v1, v2}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v2

    .line 107
    .local v2, "pendingIntent":Lccsanandroid/app/PendingIntent;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v7, 0x1

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    .line 108
    const-string v7, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {v0, v2}, Lccsanandroid/app/AlarmManager;->cancel(Lccsanandroid/app/PendingIntent;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static setAlarm(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "workSpecId"    # Ljava/lang/String;
    .param p3, "triggerAtMillis"    # J

    .line 60
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 61
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v1

    .line 62
    .local v1, "systemIdInfoDao":Lccsanandroidx/work/impl/model/SystemIdInfoDao;
    invoke-interface {v1, p2}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;)Lccsanandroidx/work/impl/model/SystemIdInfo;

    move-result-object v2

    .line 63
    .local v2, "systemIdInfo":Lccsanandroidx/work/impl/model/SystemIdInfo;
    if-eqz v2, :cond_0

    .line 64
    iget v3, v2, Lccsanandroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0, p2, v3}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    .line 65
    iget v3, v2, Lccsanandroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0, p2, v3, p3, p4}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Lccsanandroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v3, Lccsanandroidx/work/impl/utils/IdGenerator;

    invoke-direct {v3, p0}, Lccsanandroidx/work/impl/utils/IdGenerator;-><init>(Lccsanandroid/content/Context;)V

    .line 68
    .local v3, "idGenerator":Lccsanandroidx/work/impl/utils/IdGenerator;
    invoke-virtual {v3}, Lccsanandroidx/work/impl/utils/IdGenerator;->nextAlarmManagerId()I

    move-result v4

    .line 69
    .local v4, "alarmId":I
    new-instance v5, Lccsanandroidx/work/impl/model/SystemIdInfo;

    invoke-direct {v5, p2, v4}, Lccsanandroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V

    .line 70
    .local v5, "newSystemIdInfo":Lccsanandroidx/work/impl/model/SystemIdInfo;
    invoke-interface {v1, v5}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->insertSystemIdInfo(Lccsanandroidx/work/impl/model/SystemIdInfo;)V

    .line 71
    invoke-static {p0, p2, v4, p3, p4}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Lccsanandroid/content/Context;Ljava/lang/String;IJ)V

    .line 73
    .end local v3    # "idGenerator":Lccsanandroidx/work/impl/utils/IdGenerator;
    .end local v4    # "alarmId":I
    .end local v5    # "newSystemIdInfo":Lccsanandroidx/work/impl/model/SystemIdInfo;
    :goto_0
    return-void
.end method

.method private static setExactAlarm(Lccsanandroid/content/Context;Ljava/lang/String;IJ)V
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "alarmId"    # I
    .param p3, "triggerAtMillis"    # J

    .line 122
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AlarmManager;

    .line 123
    .local v0, "alarmManager":Lccsanandroid/app/AlarmManager;
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, "delayMet":Lccsanandroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, p2, v1, v2}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v2

    .line 126
    .local v2, "pendingIntent":Lccsanandroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 127
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 128
    invoke-virtual {v0, v5, p3, p4, v2}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, v5, p3, p4, v2}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V

    .line 133
    :cond_1
    :goto_0
    return-void
.end method
