.class public Lccsancom/san/landingpage/widget/LandingAppView;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Ad.AppView"

.field private static getDownloadingList:I


# instance fields
.field private mAppAvatar:Lccsanandroid/widget/ImageView;

.field private mAppDeveloper:Lccsanandroid/widget/TextView;

.field private mAppName:Lccsanandroid/widget/TextView;

.field private mAppScore:Lccsanandroid/widget/TextView;

.field private mCategoryGroup:Lccsanandroid/widget/TextView;

.field private mFileSize:Lccsanandroid/widget/TextView;

.field private mRatingBar:Lccsancom/san/landingpage/widget/RatingBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingAppView;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingAppView;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingAppView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingAppView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingAppView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Lccsanandroid/content/Context;

    .line 8
    .end local p1    # "ctx":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingAppView;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingAppView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "ccsan_san_app_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 2
    const-string p1, "san_iv_app_avatar"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppAvatar:Lccsanandroid/widget/ImageView;

    .line 3
    const-string p1, "san_tv_app_name"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppName:Lccsanandroid/widget/TextView;

    .line 4
    const-string p1, "san_tv_app_developer"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppDeveloper:Lccsanandroid/widget/TextView;

    .line 5
    const-string p1, "san_tv_app_size"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mFileSize:Lccsanandroid/widget/TextView;

    .line 6
    const-string p1, "san_tv_score"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppScore:Lccsanandroid/widget/TextView;

    .line 7
    const-string p1, "san_rating_bar"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsancom/san/landingpage/widget/RatingBar;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mRatingBar:Lccsancom/san/landingpage/widget/RatingBar;

    .line 8
    const-string p1, "san_ll_category"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mCategoryGroup:Lccsanandroid/widget/TextView;

    sget p1, Lccsancom/san/landingpage/widget/LandingAppView;->getDownloadingList:I

    and-int/lit8 v0, p1, 0x11

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x11

    and-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    or-int v1, p1, v0

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingAppView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x24

    goto :goto_0

    :cond_1
    const/16 p1, 0x27

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 9
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 11
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingAppView;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x3f

    xor-int/lit8 v2, v0, 0x3f

    or-int/2addr v2, v1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingAppView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x3d

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 0
    if-nez p1, :cond_2

    goto :goto_1

    .line 11
    :pswitch_0
    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingAppView;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x2f

    goto :goto_2

    :cond_1
    const/16 p1, 0x18

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    .line 1
    :cond_2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppName:Lccsanandroid/widget/TextView;

    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->pause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppDeveloper:Lccsanandroid/widget/TextView;

    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mFileSize:Lccsanandroid/widget/TextView;

    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mRatingBar:Lccsancom/san/landingpage/widget/RatingBar;

    iget v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getThumbPathByRecord:F

    invoke-virtual {v0, v1}, Lccsancom/san/landingpage/widget/RatingBar;->setStarMark(F)V

    .line 5
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mRatingBar:Lccsancom/san/landingpage/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/san/landingpage/widget/RatingBar;->setMarkable(Z)V

    .line 6
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppScore:Lccsanandroid/widget/TextView;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getThumbPathByRecord:F

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mCategoryGroup:Lccsanandroid/widget/TextView;

    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v3

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/san/landingpage/widget/LandingAppView;->mAppAvatar:Lccsanandroid/widget/ImageView;

    .line 9
    const-string p1, "ccsan_san_app_icon_bg"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v7

    .line 10
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string v0, "san_common_dimens_8dp"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 11
    invoke-virtual/range {v3 .. v8}, Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V

    sget p1, Lccsancom/san/landingpage/widget/LandingAppView;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x40

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingAppView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 p1, 0x55

    goto :goto_3

    :cond_3
    const/16 p1, 0x4a

    :goto_3
    packed-switch p1, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return-void

    :goto_4
    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4a
        :pswitch_2
    .end packed-switch
.end method
