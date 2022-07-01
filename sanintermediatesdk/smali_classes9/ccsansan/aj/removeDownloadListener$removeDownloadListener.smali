.class final Lccsansan/aj/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    const-string v1, "reserve_alarm_service"

    invoke-static {v1, v0}, Lccsansan/aj/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lccsanandroid/content/ComponentName;

    iget-object v1, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.san.reserve.service.ReserveAlarmService"

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-direct {v1}, Lccsanandroid/content/Intent;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 8
    const-string v0, "action_type"

    const-string v2, "check_reserve_time"

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 9
    iget-object v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    const-string v2, "source_type"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 11
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->startForegroundService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/aj/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/aj/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    return-void
.end method
