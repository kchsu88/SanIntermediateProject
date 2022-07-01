.class final Lccsancom/san/api/ActionSdkInitProxy$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/api/ActionSdkInitProxy;->addDownloadListener(Lccsanandroid/content/Context;)V
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

    .line 1
    invoke-static {p1}, Lccsancom/san/api/ActionSdkInitProxy;->IncentiveDownloadUtils(Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/au/unifiedDownload;->IncentiveDownloadUtils()V

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lccsancom/san/api/ActionSdkInitProxy;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method
