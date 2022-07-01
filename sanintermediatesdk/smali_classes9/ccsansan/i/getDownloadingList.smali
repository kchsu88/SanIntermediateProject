.class public Lccsansan/i/getDownloadingList;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/i/getDownloadingList$unifiedDownload;
    }
.end annotation


# instance fields
.field private addDownloadListener:Lccsansan/i/getDownloadingList$unifiedDownload;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/co/getDownloadedRecordByUrl;)Lccsansan/co/ActionTypeReserveApp;
    .locals 2

    .line 33
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 34
    invoke-virtual {p2}, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/co/ActionTypeDetailPage;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/co/ActionTypeReserveApp;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/co/ActionTypeDetailPage;)Lccsansan/co/ActionTypeReserveApp;

    move-result-object p1

    .line 36
    new-instance p2, Lccsansan/i/getDownloadingList$removeDownloadListener;

    invoke-direct {p2, p0}, Lccsansan/i/getDownloadingList$removeDownloadListener;-><init>(Lccsansan/i/getDownloadingList;)V

    invoke-virtual {p1, p2}, Lccsansan/co/ActionTypeReserveApp;->setVastWebViewClickListener(Lccsansan/co/ActionTypeReserveApp$getDownloadingList;)V

    .line 45
    new-instance p2, Lccsansan/i/getDownloadingList$addDownloadListener;

    invoke-direct {p2, p0}, Lccsansan/i/getDownloadingList$addDownloadListener;-><init>(Lccsansan/i/getDownloadingList;)V

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    return-object p1
.end method

.method private getDownloadingList(Lccsansan/co/resolveUrl;I)Lccsanandroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 19
    :goto_0
    invoke-virtual {p1, v1}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lccsansan/i/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/co/getDownloadedRecordByUrl;)Lccsansan/co/ActionTypeReserveApp;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v0

    .line 27
    :cond_3
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 28
    invoke-virtual {p1}, Lccsansan/co/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result v1

    .line 29
    invoke-virtual {p1}, Lccsansan/co/getDownloadedRecordByUrl;->unifiedDownload()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 31
    iput p1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {p2, v0}, Lccsanandroid/webkit/WebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method static synthetic removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/i/getDownloadingList;->addDownloadListener:Lccsansan/i/getDownloadingList$unifiedDownload;

    return-object p0
.end method

.method private unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 4

    .line 11
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 12
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 13
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object p1

    const-string v3, "san_black"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;I)V

    .line 14
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    const/16 v1, 0x11

    iput v1, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 18
    new-instance p1, Lccsansan/i/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {p1, p0}, Lccsansan/i/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/i/getDownloadingList;)V

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setCompanionViewListener(Lccsansan/i/getDownloadingList$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/getDownloadingList;->addDownloadListener:Lccsansan/i/getDownloadingList$unifiedDownload;

    return-void
.end method

.method public unifiedDownload(ZLccsansan/dt/removeDownloadListener;I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p2}, Lccsansan/bw/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p3}, Lccsansan/i/getDownloadingList;->getDownloadingList(Lccsansan/co/resolveUrl;I)Lccsanandroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lccsansan/i/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p2}, Lccsansan/i/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    :goto_0
    return-void
.end method
