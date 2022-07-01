.class public Lccsanandroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "ForceStopRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field static final ACTION_FORCE_STOP_RESCHEDULE:Ljava/lang/String; = "ACTION_FORCE_STOP_RESCHEDULE"

.field private static final ALARM_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TEN_YEARS:J


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private final mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mContext:Lccsanandroid/content/Context;

    .line 71
    iput-object p2, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 72
    return-void
.end method

.method static getIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 182
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0}, Lccsanandroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Lccsanandroid/content/Intent;
    new-instance v1, Lccsanandroid/content/ComponentName;

    const-class v2, Lccsanandroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 184
    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 185
    return-object v0
.end method

.method private static getPendingIntent(Lccsanandroid/content/Context;I)Lccsanandroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "flags"    # I

    .line 173
    invoke-static {p0}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->getIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, "intent":Lccsanandroid/content/Intent;
    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p1}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static setAlarm(Lccsanandroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 189
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AlarmManager;

    .line 191
    .local v0, "alarmManager":Lccsanandroid/app/AlarmManager;
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->getPendingIntent(Lccsanandroid/content/Context;I)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    .line 192
    .local v1, "pendingIntent":Lccsanandroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    add-long/2addr v2, v4

    .line 193
    .local v2, "triggerAt":J
    if-eqz v0, :cond_1

    .line 194
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    .line 195
    invoke-virtual {v0, v6, v2, v3, v1}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0, v6, v2, v3, v1}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V

    .line 200
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 11

    .line 128
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelInvalidJobs(Lccsanandroid/content/Context;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 134
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 135
    .local v1, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 138
    :try_start_0
    invoke-interface {v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getRunningWork()Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "workSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 140
    .local v5, "needsScheduling":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 148
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroidx/work/impl/model/WorkSpec;

    .line 149
    .local v7, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    sget-object v8, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    new-array v9, v3, [Ljava/lang/String;

    iget-object v10, v7, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-interface {v1, v8, v9}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 150
    iget-object v8, v7, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const-wide/16 v9, -0x1

    invoke-interface {v1, v8, v9, v10}, Lccsanandroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 151
    nop

    .end local v7    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v2    # "workSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 156
    nop

    .line 157
    return v5

    .line 155
    .end local v5    # "needsScheduling":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 156
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public isForceStopped()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mContext:Lccsanandroid/content/Context;

    const/high16 v1, 0x20000000

    invoke-static {v0, v1}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->getPendingIntent(Lccsanandroid/content/Context;I)Lccsanandroid/app/PendingIntent;

    move-result-object v0

    .line 109
    .local v0, "pendingIntent":Lccsanandroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 110
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mContext:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->setAlarm(Lccsanandroid/content/Context;)V

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public run()V
    .locals 6

    .line 78
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    const-string v4, "Performing cleanup operations."

    invoke-virtual {v0, v1, v4, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->cleanUp()Z

    move-result v0

    .line 81
    .local v0, "needsScheduling":Z
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->shouldRescheduleWorkers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    const-string v5, "Rescheduling Workers."

    invoke-virtual {v3, v1, v5, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 83
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    .line 85
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getPreferences()Lccsanandroidx/work/impl/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/utils/Preferences;->setNeedsReschedule(Z)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->isForceStopped()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Application was force-stopped, rescheduling."

    invoke-virtual {v3, v1, v4, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 88
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    goto :goto_0

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Found unfinished work, scheduling it."

    invoke-virtual {v3, v1, v4, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 92
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 93
    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v2

    iget-object v3, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 94
    invoke-virtual {v3}, Lccsanandroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v3

    .line 91
    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/Schedulers;->schedule(Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 96
    :cond_2
    :goto_0
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    .line 97
    return-void
.end method

.method shouldRescheduleWorkers()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getPreferences()Lccsanandroidx/work/impl/utils/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/Preferences;->needsReschedule()Z

    move-result v0

    return v0
.end method
