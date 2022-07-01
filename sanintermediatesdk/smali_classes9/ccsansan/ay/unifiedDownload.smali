.class public Lccsansan/ay/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ay/unifiedDownload$removeDownloadListener;
    }
.end annotation


# static fields
.field private static removeDownloadListener:Lccsansan/ay/unifiedDownload;


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/ay/unifiedDownload$removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/ay/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    return-void
.end method

.method public static addDownloadListener()Lccsansan/ay/unifiedDownload;
    .locals 2

    .line 3
    sget-object v0, Lccsansan/ay/unifiedDownload;->removeDownloadListener:Lccsansan/ay/unifiedDownload;

    if-nez v0, :cond_0

    .line 4
    const-class v0, Lccsansan/ay/unifiedDownload;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Lccsansan/ay/unifiedDownload;

    invoke-direct {v1}, Lccsansan/ay/unifiedDownload;-><init>()V

    sput-object v1, Lccsansan/ay/unifiedDownload;->removeDownloadListener:Lccsansan/ay/unifiedDownload;

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_0
    :goto_0
    sget-object v0, Lccsansan/ay/unifiedDownload;->removeDownloadListener:Lccsansan/ay/unifiedDownload;

    return-object v0
.end method

.method private getDownloadingList(J)V
    .locals 5

    .line 24
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AlarmManager;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 26
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    const-class v3, Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-direct {p1, p2, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "action_type"

    const-string v3, "check_reserve_time"

    .line 27
    invoke-virtual {p1, p2, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p2, "source_type"

    const-string v3, "addReserveDelay"

    .line 28
    invoke-virtual {p1, p2, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 29
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    const/16 v3, 0x2710

    const/high16 v4, 0x8000000

    invoke-static {p2, v3, p1, v4}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    .line 30
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt p2, v3, :cond_0

    .line 31
    invoke-virtual {v0, v4, v1, v2, p1}, Lccsanandroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    if-lt p2, v3, :cond_1

    .line 33
    invoke-virtual {v0, v4, v1, v2, p1}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    nop

    .line 35
    invoke-virtual {v0, v4, v1, v2, p1}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/ay/unifiedDownload;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsansan/ay/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/ay/unifiedDownload;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/ay/unifiedDownload;->getDownloadingList(J)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ay/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/ay/unifiedDownload$removeDownloadListener;

    .line 7
    invoke-virtual {v1}, Lccsansan/ay/unifiedDownload$removeDownloadListener;->removeDownloadListener()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lccsansan/ay/unifiedDownload$removeDownloadListener;->getDownloadingList()V

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Ljava/lang/String;)V
    .locals 1

    .line 36
    new-instance p3, Lccsansan/ay/unifiedDownload$unifiedDownload;

    invoke-direct {p3, p0, p2, p1}, Lccsansan/ay/unifiedDownload$unifiedDownload;-><init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;Lccsanandroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p3}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;ZLccsansan/ay/getDownloadingList$removeDownloadListener;)V

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V
    .locals 2

    .line 9
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p2}, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 23
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/ay/unifiedDownload$addDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/ay/unifiedDownload$addDownloadListener;-><init>(Lccsansan/ay/unifiedDownload;Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
