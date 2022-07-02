.class Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsansan/cq/unifiedDownload;->getDownloadingList(Lccsansan/cq/unifiedDownload;Z)Z

    .line 39
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {v0, v1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {v0}, Lccsansan/cq/unifiedDownload;->removeDownloadListener(Lccsansan/cq/unifiedDownload;)Z

    move-result v0

    return v0
.end method

.method public getDownloadingList(I)V
    .locals 0

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/view/View;Ljava/lang/String;)Z
    .locals 1

    .line 33
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {p1}, Lccsansan/cq/unifiedDownload;->unifiedDownload(Lccsansan/cq/unifiedDownload;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewClient shouldOverrideUrlLoading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", placement_id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Banner.Web"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/content/Context;

    invoke-virtual {v0, p1, p2}, Lccsansan/cq/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Lccsancom/san/mads/banner/removeDownloadListener;->getDownloadingList()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewClient onReceivedError  placement_id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errorCode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failingUrl :  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Banner.Web"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {p1}, Lccsansan/cq/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cq/unifiedDownload;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz p1, :cond_1

    .line 4
    sget-object p2, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p1, p2}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz p1, :cond_1

    .line 7
    sget-object p2, Lccsancom/san/ads/AdError;->CANCEL_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p1, p2}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unifiedDownload(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 8
    :try_start_0
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lccsansan/cq/unifiedDownload;->removeDownloadListener(Lccsansan/cq/unifiedDownload;Z)Z

    .line 9
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {p2}, Lccsansan/cq/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cq/unifiedDownload;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/getDownloadingList;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p2}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {p2}, Lccsansan/cq/unifiedDownload;->addDownloadListener(Lccsansan/cq/unifiedDownload;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {p2}, Lccsansan/cq/unifiedDownload;->addDownloadListener(Lccsansan/cq/unifiedDownload;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/ViewGroup;

    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 13
    :cond_0
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/getDownloadingList;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {p2}, Lccsansan/cq/unifiedDownload;->addDownloadListener(Lccsansan/cq/unifiedDownload;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    iget-object v2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v2, v2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p2, v1, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p2, Lccsanandroid/widget/ImageView;

    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/content/Context;

    invoke-direct {p2, v0}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 16
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x35

    .line 17
    iput v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 19
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "ccsan_san_ad_logo"

    .line 20
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, p2}, Lccsansan/bw/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsanandroid/view/View;)V

    .line 22
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/getDownloadingList;

    invoke-virtual {v0, p2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 24
    iget-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p2, p2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz p2, :cond_2

    .line 25
    invoke-interface {p2, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz p1, :cond_2

    .line 28
    sget-object p2, Lccsancom/san/ads/AdError;->CANCEL_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p1, p2}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    iget-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    if-eqz p1, :cond_2

    .line 32
    sget-object p2, Lccsancom/san/ads/AdError;->INTERNAL_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p1, p2}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    :cond_2
    :goto_0
    return-void
.end method
