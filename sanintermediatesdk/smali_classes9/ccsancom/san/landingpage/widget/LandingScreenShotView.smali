.class public Lccsancom/san/landingpage/widget/LandingScreenShotView;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Ad.ScreenShotView"

.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field private mAdapter:Lccsansan/bx/unifiedDownload;

.field private mScreenShotView:Lccsanandroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->unifiedDownload:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenShotView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenShotView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenShotView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Lccsanandroid/content/Context;

    .line 2
    .end local p1    # "ctx":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x37

    xor-int/lit8 v0, v0, 0x37

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v0, "san_rv_screen_scrop"

    const-string v1, "ccsan_san_adshonor_screenshot_view"

    packed-switch v3, :pswitch_data_0

    .line 1
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 2
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mScreenShotView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 2
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mScreenShotView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 5
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 11
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x2

    or-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingScreenShotView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mAdapter:Lccsansan/bx/unifiedDownload;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mAdapter:Lccsansan/bx/unifiedDownload;

    if-nez v0, :cond_1

    const/16 v0, 0xb

    goto :goto_1

    :cond_1
    const/16 v0, 0x2a

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :goto_5
    if-eqz p1, :cond_4

    .line 2
    new-instance v0, Lccsansan/bx/unifiedDownload;

    iget-object v4, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    invoke-direct {v0, v4}, Lccsansan/bx/unifiedDownload;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mAdapter:Lccsansan/bx/unifiedDownload;

    .line 3
    new-instance v4, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;

    invoke-direct {v4, p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;-><init>(Lccsancom/san/landingpage/widget/LandingScreenShotView;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    invoke-virtual {v0, v4}, Lccsansan/bx/unifiedDownload;->getDownloadingList(Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;)V

    .line 10
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mScreenShotView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v1, v1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;-><init>(Lccsanandroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mScreenShotView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView;->mAdapter:Lccsansan/bx/unifiedDownload;

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget p1, Lccsancom/san/landingpage/widget/LandingScreenShotView;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x64

    xor-int/lit8 v4, p1, -0x1

    and-int/lit8 v4, v4, 0x63

    or-int/2addr v0, v4

    and-int/lit8 p1, p1, 0x63

    shl-int/2addr p1, v2

    and-int v4, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenShotView;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 1
    goto :goto_6

    :cond_3
    const/4 v1, 0x1

    :goto_6
    packed-switch v1, :pswitch_data_3

    .line 11
    :pswitch_1
    nop

    :cond_4
    :pswitch_2
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenShotView;->getDownloadingList:I

    xor-int/lit8 v0, p1, 0x13

    and-int/lit8 v1, p1, 0x13

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x13

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenShotView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 1
    const/16 p1, 0x25

    goto :goto_7

    :cond_5
    const/16 p1, 0x52

    :goto_7
    packed-switch p1, :pswitch_data_4

    .line 11
    goto :goto_8

    :pswitch_3
    return-void

    :goto_8
    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x52
        :pswitch_3
    .end packed-switch
.end method
