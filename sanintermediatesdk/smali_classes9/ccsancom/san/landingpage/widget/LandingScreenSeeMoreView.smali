.class public Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;
.super Lccsanandroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lccsansan/ci/unifiedDownload;


# static fields
.field private static final TAG:Ljava/lang/String; = "Ad.LandingScreenSeeMoreView"

.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field private mContext:Lccsanandroid/content/Context;

.field private mSeeMoreLayout:Lccsanandroid/widget/LinearLayout;

.field private mSeeMoreView:Lccsanandroid/widget/TextView;

.field private mSoundView:Lccsanandroid/widget/ImageView;

.field private mTotalLayout:Lccsanandroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 8
    .end local p1    # "context":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x17

    and-int/lit8 v2, v0, 0x17

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x17

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1
    :cond_0
    const-string v0, "Ad.LandingScreenSeeMoreView"

    const-string v1, "LandingScreenSeeMoreView init "

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mContext:Lccsanandroid/content/Context;

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 4
    const-string v1, "ccsan_san_landing_page_see_more_layout"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 5
    const-string p1, "san_ll_total"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/LinearLayout;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mTotalLayout:Lccsanandroid/widget/LinearLayout;

    .line 6
    const-string p1, "san_ll_see_more"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/LinearLayout;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreLayout:Lccsanandroid/widget/LinearLayout;

    .line 7
    const-string p1, "san_tv_see_more"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreView:Lccsanandroid/widget/TextView;

    .line 8
    const-string p1, "san_iv_sound"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x6

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method


# virtual methods
.method public getSoundView()Lccsanandroid/widget/ImageView;
    .locals 7

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x3d

    and-int/lit8 v2, v0, 0x3d

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v4, v0, 0x3d

    and-int/2addr v2, v4

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    :try_start_0
    array-length v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    const/16 v4, 0x15

    xor-int/lit8 v5, v0, 0x15

    and-int/lit8 v6, v0, 0x15

    or-int/2addr v5, v6

    shl-int/2addr v5, v3

    and-int/lit8 v6, v0, -0x16

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v4

    or-int/2addr v0, v6

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v5, v0

    sub-int/2addr v5, v3

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    return-object v1

    :pswitch_1
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getValuePx2Dp(I)I
    .locals 8
    .param p1, "value"    # I

    .line 3
    .end local p1    # "value":I
    nop

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x7e

    or-int/lit8 v2, v0, 0x7e

    add-int/2addr v1, v2

    xor-int/lit8 v2, v1, -0x1

    const/4 v3, -0x1

    and-int/2addr v1, v3

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v6, -0x2

    packed-switch v2, :pswitch_data_0

    .line 0
    if-ne p1, v3, :cond_2

    goto :goto_2

    .line 1
    :pswitch_0
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_1

    const/16 v2, 0xf

    goto :goto_1

    :cond_1
    const/16 v2, 0x42

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/16 v2, 0x11

    goto :goto_3

    :cond_2
    const/4 v2, 0x3

    :goto_3
    packed-switch v2, :pswitch_data_2

    :pswitch_1
    goto/16 :goto_c

    .line 0
    :goto_4
    :pswitch_2
    const/16 v2, 0x2d0

    if-ne p1, v2, :cond_3

    .line 1
    const/4 v2, 0x1

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    :goto_5
    const/16 v7, 0x71

    packed-switch v2, :pswitch_data_3

    .line 0
    if-ne p1, v6, :cond_5

    goto :goto_6

    .line 3
    :pswitch_3
    and-int/lit8 p1, v0, 0x7

    xor-int/lit8 v1, p1, -0x1

    or-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v1

    shl-int/2addr p1, v4

    neg-int p1, p1

    neg-int p1, p1

    xor-int/2addr p1, v3

    sub-int/2addr v0, p1

    sub-int/2addr v0, v4

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1
    :cond_4
    xor-int/lit8 v0, p1, 0x71

    and-int/lit8 v1, p1, 0x71

    or-int/2addr v0, v1

    shl-int/2addr v0, v4

    and-int/lit8 v1, p1, -0x72

    xor-int/2addr p1, v3

    and-int/2addr p1, v7

    or-int/2addr p1, v1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v4

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    .line 3
    return v3

    .line 1
    :goto_6
    goto :goto_7

    :cond_5
    const/4 v5, 0x1

    :goto_7
    packed-switch v5, :pswitch_data_4

    .line 3
    or-int/lit8 p1, v1, 0x63

    shl-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, v1, 0x63

    xor-int/2addr v1, v3

    and-int/2addr p1, v1

    neg-int p1, p1

    or-int v1, v0, p1

    shl-int/2addr v1, v4

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_8

    :pswitch_4
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p1

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x27

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x27

    and-int/2addr v0, v2

    shl-int/2addr v1, v4

    and-int v2, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    .line 3
    return p1

    .line 1
    :goto_8
    const/16 p1, 0x19

    goto :goto_9

    :cond_6
    const/16 p1, 0x32

    :goto_9
    packed-switch p1, :pswitch_data_5

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    ushr-int/lit8 p1, p1, 0x4

    :goto_a
    int-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p1

    goto :goto_b

    :pswitch_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_a

    .line 3
    :goto_b
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x71

    shl-int/2addr v1, v4

    xor-int/2addr v0, v7

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return p1

    :goto_c
    or-int/lit8 p1, v0, 0x6b

    shl-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, v0, 0x6b

    xor-int/2addr v0, v3

    and-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 1
    goto :goto_d

    :cond_7
    const/4 v4, 0x0

    :goto_d
    packed-switch v4, :pswitch_data_6

    .line 3
    const/16 v6, 0x16

    :pswitch_6
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public setClickListenerForScreen(Lccsanandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "onClickListener"    # Lccsanandroid/view/View$OnClickListener;

    .line 1
    .end local p1    # "onClickListener":Lccsanandroid/view/View$OnClickListener;
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x23

    xor-int/lit8 v0, v0, 0x23

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/LinearLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/LinearLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

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
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v1, p1, 0x3d

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 p1, p1, 0x3d

    and-int/2addr p1, v2

    shl-int/lit8 v0, v1, 0x1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 8
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 28
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x7b

    and-int/lit8 v2, v0, 0x7b

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x7b

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1
    :cond_0
    iget-object v0, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 28
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/16 v4, 0x49

    const/16 v5, 0x8

    const-string v6, "Ad.LandingScreenSeeMoreView"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v2, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v7, v2, 0x75

    or-int/lit8 v2, v2, 0x75

    add-int/2addr v7, v2

    rem-int/lit16 v2, v7, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 1
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    const-string v0, "SeeMore show "

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget v2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-virtual {p0, v2}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getValuePx2Dp(I)I

    move-result v2

    const/4 v7, -0x2

    invoke-direct {v0, v7, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v2, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mTotalLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    iget v2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-virtual {p0, v2}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getValuePx2Dp(I)I

    move-result v2

    invoke-direct {v0, v7, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8c

    .line 6
    invoke-virtual {p0, v2}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getValuePx2Dp(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 7
    iget-object v2, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreView:Lccsanandroid/widget/TextView;

    iget v2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setTextSize(F)V

    .line 9
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreView:Lccsanandroid/widget/TextView;

    iget-object v2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;)Lccsanandroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x2d

    and-int/lit8 v7, v0, 0x2d

    or-int/2addr v2, v7

    shl-int/2addr v2, v3

    and-int/lit8 v7, v0, -0x2e

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x2d

    or-int/2addr v0, v7

    neg-int v0, v0

    and-int v7, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v7, v0

    rem-int/lit16 v0, v7, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_5

    goto :goto_3

    .line 9
    :cond_3
    :goto_1
    nop

    .line 11
    const-string v0, "SeeMore not show "

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSeeMoreLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/16 v0, 0x48

    goto :goto_2

    :cond_4
    const/16 v0, 0x49

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 15
    :cond_5
    :goto_3
    :pswitch_1
    iget v0, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownList:I

    if-ne v0, v3, :cond_b

    .line 16
    const-string v0, "Sound show "

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    iget v2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-virtual {p0, v2}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getValuePx2Dp(I)I

    move-result v2

    iget v5, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-virtual {p0, v5}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getValuePx2Dp(I)I

    move-result v5

    invoke-direct {v0, v2, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x14

    .line 18
    invoke-virtual {p0, v2}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getValuePx2Dp(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    iget-object v2, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    if-eqz v0, :cond_6

    .line 28
    const/16 v0, 0x16

    goto :goto_4

    :cond_6
    const/16 v0, 0x3d

    :goto_4
    packed-switch v0, :pswitch_data_2

    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_7

    .line 20
    :pswitch_2
    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    const/16 v0, 0x18

    goto :goto_6

    :cond_8
    const/16 v0, 0x34

    :goto_6
    packed-switch v0, :pswitch_data_4

    goto :goto_9

    :goto_7
    const/4 v5, 0x0

    :try_start_0
    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    packed-switch v0, :pswitch_data_5

    goto :goto_9

    :pswitch_3
    sget v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x5d

    and-int/lit8 v5, v0, 0x5d

    or-int/2addr v2, v5

    shl-int/2addr v2, v3

    and-int/lit8 v5, v0, -0x5e

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x5d

    or-int/2addr v0, v5

    neg-int v0, v0

    xor-int v5, v2, v0

    and-int/2addr v0, v2

    shl-int/2addr v0, v3

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    .line 21
    :cond_a
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    iget-object v2, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2, p1, v5}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 28
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    and-int/lit8 v0, p1, -0x4a

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    and-int/2addr p1, v4

    shl-int/2addr p1, v3

    xor-int v2, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    goto :goto_b

    .line 23
    :goto_9
    :pswitch_4
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    const-string v0, "ccsan_san_mads_see_more_sound_selector"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 28
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x16

    and-int/2addr p1, v2

    shl-int/2addr p1, v3

    add-int/2addr v0, p1

    sub-int/2addr v0, v3

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    goto :goto_b

    :catchall_0
    move-exception p1

    throw p1

    .line 23
    :cond_b
    nop

    .line 27
    const-string p1, "Sound not show "

    invoke-static {v6, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->mSoundView:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v5}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x70

    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 v2, v2, 0x6f

    or-int/2addr v0, v2

    and-int/lit8 p1, p1, 0x6f

    shl-int/2addr p1, v3

    or-int v2, v0, p1

    shl-int/2addr v2, v3

    xor-int/2addr p1, v0

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    const/4 p1, 0x1

    goto :goto_a

    :cond_c
    const/4 p1, 0x0

    :goto_a
    packed-switch p1, :pswitch_data_6

    :cond_d
    :goto_b
    :pswitch_5
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x42

    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 v2, v2, 0x41

    or-int/2addr v0, v2

    and-int/lit8 p1, p1, 0x41

    shl-int/2addr p1, v3

    or-int v2, v0, p1

    shl-int/2addr v2, v3

    xor-int/2addr p1, v0

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    const/16 p1, 0x27

    goto :goto_c

    :cond_e
    const/16 p1, 0x2e

    :goto_c
    packed-switch p1, :pswitch_data_7

    return-void

    :pswitch_6
    const/16 p1, 0x23

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3d
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x27
        :pswitch_6
    .end packed-switch
.end method

.method public setVideoStatusListener(Lccsansan/ci/getDownloadingList;)V
    .locals 1

    sget p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->getDownloadingList:I

    xor-int/lit8 v0, p1, 0x7e

    and-int/lit8 p1, p1, 0x7e

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
