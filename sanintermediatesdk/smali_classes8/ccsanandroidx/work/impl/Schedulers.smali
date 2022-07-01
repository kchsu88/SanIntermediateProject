.class public Lccsanandroidx/work/impl/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field public static final GCM_SCHEDULER:Ljava/lang/String; = "androidx.work.impl.background.gcm.GcmScheduler"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "Schedulers"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static createBestAvailableBackgroundScheduler(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/Scheduler;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 104
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 105
    new-instance v0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;)V

    .line 106
    .local v0, "scheduler":Lccsanandroidx/work/impl/Scheduler;
    const-class v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {p0, v3, v2}, Lccsanandroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Lccsanandroid/content/Context;Ljava/lang/Class;Z)V

    .line 107
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v4, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v2, v3, v4, v1}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    .end local v0    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    :cond_0
    invoke-static {p0}, Lccsanandroidx/work/impl/Schedulers;->tryCreateGcmBasedScheduler(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/Scheduler;

    move-result-object v0

    .line 110
    .restart local v0    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    if-nez v0, :cond_1

    .line 111
    new-instance v3, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;

    invoke-direct {v3, p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;-><init>(Lccsanandroid/content/Context;)V

    move-object v0, v3

    .line 112
    const-class v3, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {p0, v3, v2}, Lccsanandroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Lccsanandroid/content/Context;Ljava/lang/Class;Z)V

    .line 113
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v4, "Created SystemAlarmScheduler"

    invoke-virtual {v2, v3, v4, v1}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 116
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static schedule(Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 7
    .param p0, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p1, "workDatabase"    # Lccsanandroidx/work/impl/WorkDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/Configuration;",
            "Lccsanandroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "schedulers":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/Scheduler;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 69
    .local v0, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 71
    nop

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/work/Configuration;->getMaxSchedulerLimit()I

    move-result v1

    .line 71
    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getEligibleWorkForScheduling(I)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "eligibleWorkSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    .local v2, "now":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/work/impl/model/WorkSpec;

    .line 80
    .local v5, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    iget-object v6, v5, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v0, v6, v2, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 81
    nop

    .end local v5    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    goto :goto_0

    .line 83
    .end local v2    # "now":J
    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 86
    nop

    .line 88
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 89
    const/4 v2, 0x0

    new-array v2, v2, [Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lccsanandroidx/work/impl/model/WorkSpec;

    .line 91
    .local v2, "eligibleWorkSpecsArray":[Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/work/impl/Scheduler;

    .line 92
    .local v4, "scheduler":Lccsanandroidx/work/impl/Scheduler;
    invoke-interface {v4, v2}, Lccsanandroidx/work/impl/Scheduler;->schedule([Lccsanandroidx/work/impl/model/WorkSpec;)V

    .line 93
    .end local v4    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    goto :goto_1

    .line 95
    .end local v2    # "eligibleWorkSpecsArray":[Lccsanandroidx/work/impl/model/WorkSpec;
    :cond_2
    return-void

    .line 85
    .end local v1    # "eligibleWorkSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 86
    throw v1

    .line 63
    .end local v0    # "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    :cond_3
    :goto_2
    return-void
.end method

.method private static tryCreateGcmBasedScheduler(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/Scheduler;
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 122
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 123
    .local v3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lccsanandroid/content/Context;

    aput-object v5, v4, v2

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/work/impl/Scheduler;

    .line 125
    .local v4, "scheduler":Lccsanandroidx/work/impl/Scheduler;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v6, Lccsanandroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    const-string v7, "Created %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v0, v7}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    return-object v4

    .line 127
    .end local v3    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v0, v1, v2

    const-string v2, "Unable to create GCM Scheduler"

    invoke-virtual {v3, v4, v2, v1}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 129
    const/4 v1, 0x0

    return-object v1
.end method
