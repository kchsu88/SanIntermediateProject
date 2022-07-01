.class public Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
.super Lccsanandroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lccsansan/ci/unifiedDownload;


# static fields
.field private static IncentiveDownloadUtils:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Ad.LandingFullScreenImageView"

.field private static addDownloadListener:I


# instance fields
.field private mCircularProgressBar:Lccsanandroid/widget/ProgressBar;

.field private mContext:Lccsanandroid/content/Context;

.field private mFullScreenImg:Lccsanandroid/widget/ImageView;

.field private mItem:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

.field private mLoadingView:Lccsanandroid/widget/TextView;

.field private mRefreshImg:Lccsanandroid/widget/ImageView;

.field private mTotalLayout:Lccsanandroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ProgressBar;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x74

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mCircularProgressBar:Lccsanandroid/widget/ProgressBar;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x69

    and-int/lit8 v2, v0, 0x69

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x69

    and-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/TextView;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x55

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v0, 0x55

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    sub-int/2addr v2, v1

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mLoadingView:Lccsanandroid/widget/TextView;

    and-int/lit8 v2, v0, 0x79

    or-int/lit8 v0, v0, 0x79

    and-int v3, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5f

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mRefreshImg:Lccsanandroid/widget/ImageView;

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x1b

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    const/16 v1, 0x31

    and-int/lit8 v2, v0, -0x32

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v1, v2, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x33

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mFullScreenImg:Lccsanandroid/widget/ImageView;

    packed-switch v1, :pswitch_data_0

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$400(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/content/Context;
    .locals 4
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x4b

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v0, 0x4b

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mContext:Lccsanandroid/content/Context;

    const/16 v1, 0x29

    xor-int/lit8 v2, v0, 0x29

    and-int/lit8 v3, v0, 0x29

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v0, -0x2a

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic access$500(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/RelativeLayout;
    .locals 5
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x53

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x54

    xor-int/lit8 v4, v0, -0x1

    and-int/lit8 v4, v4, 0x53

    or-int/2addr v3, v4

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mTotalLayout:Lccsanandroid/widget/RelativeLayout;

    packed-switch v1, :pswitch_data_0

    :try_start_0
    array-length v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    xor-int/lit8 v1, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    shl-int/2addr v0, v2

    xor-int v4, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/16 v0, 0x5f

    goto :goto_1

    :cond_1
    const/16 v0, 0xd

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p0

    :goto_2
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$600(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x76

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mItem:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    xor-int/lit8 v1, v0, 0x67

    and-int/lit8 v2, v0, 0x67

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x67

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic access$700(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    .param p1, "x1"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingFullScreenImageView;
    .end local p1    # "x1":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, -0x2a

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x29

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x29

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->loadImageView(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    sget p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x5f

    and-int/lit8 v0, p0, 0x5f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    and-int/lit8 v0, p0, -0x60

    xor-int/lit8 p0, p0, -0x1

    and-int/lit8 p0, p0, 0x5f

    or-int/2addr p0, v0

    neg-int p0, p0

    xor-int/lit8 p0, p0, -0x1

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p0, 0x3f

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 9
    .end local p1    # "context":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x4b

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x4b

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    const-string v0, "Ad.LandingFullScreenImageView"

    const-string v1, "LandingFullScreenImageView init "

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mContext:Lccsanandroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 4
    const-string v0, "san_landing_page_full_screen_image_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 5
    const-string p1, "san_rl_total"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mTotalLayout:Lccsanandroid/widget/RelativeLayout;

    .line 6
    const-string p1, "san_iv_full_screen"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mFullScreenImg:Lccsanandroid/widget/ImageView;

    .line 7
    const-string p1, "san_tv_loading"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mLoadingView:Lccsanandroid/widget/TextView;

    .line 8
    const-string p1, "san_progress"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ProgressBar;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mCircularProgressBar:Lccsanandroid/widget/ProgressBar;

    .line 9
    const-string p1, "san_iv_refresh"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mRefreshImg:Lccsanandroid/widget/ImageView;

    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x2b

    xor-int/lit8 p1, p1, 0x2b

    or-int/2addr p1, v0

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x45

    goto :goto_0

    :cond_1
    const/16 p1, 0x18

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method private loadImageView(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 6
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 1
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mFullScreenImg:Lccsanandroid/widget/ImageView;

    const-string p1, "san_black"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;

    invoke-direct {v5, p0}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;-><init>(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)V

    invoke-virtual/range {v0 .. v5}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V

    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x7a

    and-int/lit8 p1, p1, 0x7a

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    or-int/lit8 p1, v0, -0x1

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method


# virtual methods
.method public setClickListenerForScreen(Lccsanandroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "onClickListener"    # Lccsanandroid/view/View$OnClickListener;

    .line 1
    .end local p1    # "onClickListener":Lccsanandroid/view/View$OnClickListener;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    const/16 v1, 0x25

    xor-int/lit8 v2, v0, 0x25

    and-int/lit8 v3, v0, 0x25

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x26

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x12

    :goto_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mFullScreenImg:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 6
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 2
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    const/16 v1, 0x1d

    xor-int/lit8 v2, v0, 0x1d

    and-int/lit8 v3, v0, 0x1d

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x1e

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mItem:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->loadImageView(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    goto :goto_1

    .line 1
    :pswitch_0
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->mItem:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->loadImageView(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    goto :goto_2

    :goto_1
    :try_start_0
    array-length p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    const/16 v1, 0x15

    and-int/lit8 v4, p1, -0x16

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    and-int/2addr p1, v1

    shl-int/2addr p1, v3

    add-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoStatusListener(Lccsansan/ci/getDownloadingList;)V
    .locals 2

    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x7

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
