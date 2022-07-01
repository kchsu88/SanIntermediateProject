.class Lccsancom/san/ads/SANBanner$AutoRefreshHandler;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/SANBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoRefreshHandler"
.end annotation


# instance fields
.field removeDownloadListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/san/ads/SANBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/san/ads/SANBanner;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/san/ads/SANBanner$AutoRefreshHandler;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result p1

    .line 7
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    .line 8
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    .line 9
    new-instance v4, Lccsanandroid/graphics/Rect;

    invoke-direct {v4, v0, v0, v2, v3}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_1

    .line 10
    invoke-static {v1, v4}, Lccsanandroid/graphics/Rect;->intersects(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/ads/SANBanner$AutoRefreshHandler;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/SANBanner$AutoRefreshHandler;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/SANBanner;

    .line 5
    invoke-static {p1}, Lccsancom/san/ads/SANBanner;->deleteDownItem(Lccsancom/san/ads/SANBanner;)Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/san/ads/SANBanner$AutoRefreshHandler;->getDownloadingList(Lccsanandroid/view/View;)Z

    move-result v0

    const-string v1, "SANBanner"

    if-nez v0, :cond_1

    .line 6
    const-string v0, "AutoRefreshHandler#handleMessage banner invisible, stop refresh"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lccsancom/san/ads/SANBanner;->getDownloadingList(Lccsancom/san/ads/SANBanner;)V

    return-void

    :cond_1
    nop

    .line 10
    const-string v0, "AutoRefreshHandler#handleMessage reload"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lccsancom/san/ads/SANBanner;->IncentiveDownloadUtils(Lccsancom/san/ads/SANBanner;Z)V

    :cond_2
    :goto_0
    return-void
.end method
