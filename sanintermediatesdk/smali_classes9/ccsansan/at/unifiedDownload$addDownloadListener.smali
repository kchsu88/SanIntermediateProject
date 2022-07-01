.class Lccsansan/at/unifiedDownload$addDownloadListener;
.super Lccsanandroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/at/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "addDownloadListener"
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/at/unifiedDownload;

.field unifiedDownload:Lccsanandroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lccsansan/at/unifiedDownload;JJLccsanandroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/at/unifiedDownload;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lccsanandroid/os/CountDownTimer;-><init>(JJ)V

    .line 3
    iput-object p6, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsanandroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsanandroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/at/unifiedDownload;

    invoke-static {v0}, Lccsansan/at/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/at/unifiedDownload;)Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/at/unifiedDownload;

    invoke-static {v0}, Lccsansan/at/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/at/unifiedDownload;)Lccsanandroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/at/unifiedDownload;

    invoke-static {v0}, Lccsansan/at/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/at/unifiedDownload;)Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/at/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsanandroid/widget/PopupWindow;

    invoke-virtual {v0}, Lccsanandroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
