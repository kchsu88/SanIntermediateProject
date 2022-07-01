.class public Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lccsanandroidx/work/impl/ExecutionListener;


# static fields
.field static final ACTION_CONSTRAINTS_CHANGED:Ljava/lang/String; = "ACTION_CONSTRAINTS_CHANGED"

.field static final ACTION_DELAY_MET:Ljava/lang/String; = "ACTION_DELAY_MET"

.field static final ACTION_EXECUTION_COMPLETED:Ljava/lang/String; = "ACTION_EXECUTION_COMPLETED"

.field static final ACTION_RESCHEDULE:Ljava/lang/String; = "ACTION_RESCHEDULE"

.field static final ACTION_SCHEDULE_WORK:Ljava/lang/String; = "ACTION_SCHEDULE_WORK"

.field static final ACTION_STOP_WORK:Ljava/lang/String; = "ACTION_STOP_WORK"

.field private static final KEY_NEEDS_RESCHEDULE:Ljava/lang/String; = "KEY_NEEDS_RESCHEDULE"

.field private static final KEY_WORKSPEC_ID:Ljava/lang/String; = "KEY_WORKSPEC_ID"

.field private static final TAG:Ljava/lang/String;

.field static final WORK_PROCESSING_TIME_IN_MS:J = 0x927c0L


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingDelayMet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/impl/ExecutionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "CommandHandler"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method static createConstraintsChangedIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 85
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 87
    return-object v0
.end method

.method static createDelayMetIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 71
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "ACTION_DELAY_MET"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 73
    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 74
    return-object v0
.end method

.method static createExecutionCompletedIntent(Lccsanandroid/content/Context;Ljava/lang/String;Z)Lccsanandroid/content/Intent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 101
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 103
    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 104
    const-string v1, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 105
    return-object v0
.end method

.method static createRescheduleIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 91
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "ACTION_RESCHEDULE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 93
    return-object v0
.end method

.method static createScheduleWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 64
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 66
    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 67
    return-object v0
.end method

.method static createStopWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 78
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "ACTION_STOP_WORK"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 80
    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 81
    return-object v0
.end method

.method private handleConstraintsChanged(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 5
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 300
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Handling constraints changed %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 303
    new-instance v0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;

    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;-><init>(Lccsanandroid/content/Context;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 305
    .local v0, "changedCommandHandler":Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->handleConstraintsChanged()V

    .line 306
    return-void
.end method

.method private handleDelayMet(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 9
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 261
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 262
    .local v0, "extras":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    const-string v2, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "workSpecId":Ljava/lang/String;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const-string v5, "Handing delay met for %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v8, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v7}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 268
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    new-instance v3, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;

    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v3, v4, p2, v2, p3}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;-><init>(Lccsanandroid/content/Context;ILjava/lang/String;Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 271
    .local v3, "delayMetCommandHandler":Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;
    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v3}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->handleProcessWork()V

    .line 273
    .end local v3    # "delayMetCommandHandler":Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;
    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    const-string v5, "WorkSpec %s is already being handled for ACTION_DELAY_MET"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    .line 275
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Throwable;

    .line 274
    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 278
    .end local v2    # "workSpecId":Ljava/lang/String;
    :goto_0
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleExecutionCompleted(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 9
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 322
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 323
    .local v0, "extras":Lccsanandroid/os/Bundle;
    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "workSpecId":Ljava/lang/String;
    const-string v2, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 325
    .local v2, "needsReschedule":Z
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 327
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-string v7, "Handling onExecutionCompleted %s, %s"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Throwable;

    .line 325
    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 329
    invoke-virtual {p0, v1, v2}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->onExecuted(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method private handleReschedule(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 6
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 313
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "Handling reschedule %s, %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 314
    invoke-virtual {p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    .line 315
    return-void
.end method

.method private handleScheduleWorkIntent(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 17
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 188
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v3

    .line 189
    .local v3, "extras":Lccsanandroid/os/Bundle;
    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {v3, v0}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "workSpecId":Ljava/lang/String;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v5, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const-string v9, "Handling schedule work for %s"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v7, v9}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v7

    .line 193
    .local v7, "workManager":Lccsanandroidx/work/impl/WorkManagerImpl;
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v9

    .line 194
    .local v9, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 197
    :try_start_0
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 198
    .local v0, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v0, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    .local v10, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    const-string v11, "Skipping scheduling "

    if-nez v10, :cond_0

    .line 208
    :try_start_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " because it\'s no longer in the DB"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v8, v8, [Ljava/lang/Throwable;

    invoke-virtual {v6, v5, v11, v8}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 211
    return-void

    .line 212
    :cond_0
    :try_start_2
    iget-object v12, v10, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    invoke-virtual {v12}, Lccsanandroidx/work/WorkInfo$State;->isFinished()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 216
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "because it is finished."

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v8, v8, [Ljava/lang/Throwable;

    invoke-virtual {v6, v5, v11, v8}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 218
    return-void

    .line 223
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Lccsanandroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v11

    .line 225
    .local v11, "triggerAt":J
    invoke-virtual {v10}, Lccsanandroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v13

    const/4 v14, 0x2

    if-nez v13, :cond_2

    .line 226
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v13

    const-string v15, "Setting up Alarms for %s at %s"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v4, v14, v8

    .line 227
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v6

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v8, [Ljava/lang/Throwable;

    .line 226
    invoke-virtual {v13, v5, v6, v8}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 228
    iget-object v5, v1, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v6

    invoke-static {v5, v6, v4, v11, v12}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->setAlarm(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V

    move/from16 v8, p2

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v13

    const-string v15, "Opportunistically setting an alarm for %s at %s"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v4, v14, v8

    .line 233
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v6

    .line 232
    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v8, [Ljava/lang/Throwable;

    .line 231
    invoke-virtual {v13, v5, v6, v8}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 234
    iget-object v5, v1, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    .line 236
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v6

    .line 234
    invoke-static {v5, v6, v4, v11, v12}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->setAlarm(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V

    .line 242
    iget-object v5, v1, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-static {v5}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createConstraintsChangedIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object v5

    .line 243
    .local v5, "constraintsUpdate":Lccsanandroid/content/Intent;
    new-instance v6, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v8, p2

    :try_start_4
    invoke-direct {v6, v2, v5, v8}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    invoke-virtual {v2, v6}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 250
    .end local v5    # "constraintsUpdate":Lccsanandroid/content/Intent;
    :goto_0
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    .end local v0    # "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    .end local v10    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v11    # "triggerAt":J
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v8, p2

    :goto_1
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 253
    throw v0
.end method

.method private handleStopWork(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 7
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 285
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 286
    .local v0, "extras":Lccsanandroid/os/Bundle;
    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "workSpecId":Ljava/lang/String;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v6, "Handing stopWork work for %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 289
    invoke-virtual {p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->stopWork(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lccsanandroidx/work/impl/background/systemalarm/Alarms;->cancelAlarm(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3, v1, v5}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onExecuted(Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method private static varargs hasKeys(Lccsanandroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lccsanandroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 337
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 338
    return v0

    .line 336
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method hasPendingCommands()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onExecuted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 121
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/ExecutionListener;

    .line 125
    .local v1, "listener":Lccsanandroidx/work/impl/ExecutionListener;
    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v1, p1, p2}, Lccsanandroidx/work/impl/ExecutionListener;->onExecuted(Ljava/lang/String;Z)V

    .line 128
    .end local v1    # "listener":Lccsanandroidx/work/impl/ExecutionListener;
    :cond_0
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onHandleIntent(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 8
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 154
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->handleConstraintsChanged(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto/16 :goto_0

    .line 158
    :cond_0
    const-string v1, "ACTION_RESCHEDULE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->handleReschedule(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto/16 :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, "extras":Lccsanandroid/os/Bundle;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "KEY_WORKSPEC_ID"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->hasKeys(Lccsanandroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v6, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v5, v7, v2

    .line 164
    const-string v2, "Invalid request for %s, requires %s."

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 163
    invoke-virtual {v3, v6, v2, v4}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v3, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->handleScheduleWorkIntent(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    .line 170
    :cond_3
    const-string v3, "ACTION_DELAY_MET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->handleDelayMet(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    .line 172
    :cond_4
    const-string v3, "ACTION_STOP_WORK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->handleStopWork(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    .line 174
    :cond_5
    const-string v3, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->handleExecutionCompleted(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    .line 177
    :cond_6
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v5, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v6, "Ignoring intent %s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v2, v4}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 181
    .end local v1    # "extras":Lccsanandroid/os/Bundle;
    :goto_0
    return-void
.end method
