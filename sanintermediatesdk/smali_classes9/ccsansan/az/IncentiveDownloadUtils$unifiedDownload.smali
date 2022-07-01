.class Lccsansan/az/IncentiveDownloadUtils$unifiedDownload;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/az/IncentiveDownloadUtils;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsansan/az/IncentiveDownloadUtils;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 2
    invoke-static {}, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/az/IncentiveDownloadUtils;

    move-result-object p1

    invoke-static {p1}, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;)V

    return-void
.end method
