.class final Lccsansan/w/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    instance-of p1, p1, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lccsansan/ay/unifiedDownload;->addDownloadListener()Lccsansan/ay/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ay/unifiedDownload;->IncentiveDownloadUtils()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "systemstart"

    const-string v1, "reserve_lifecycle_pause"

    invoke-static {p1, v0, v1}, Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "systemstart"

    const-string v1, "reserve_lifecycle_resume"

    invoke-static {p1, v0, v1}, Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method
