.class final enum Lccsancom/san/landingpage/widget/AdItemWeight$3;
.super Lccsancom/san/landingpage/widget/AdItemWeight;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/AdItemWeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/san/landingpage/widget/AdItemWeight;-><init>(Ljava/lang/String;ILjava/lang/String;Lccsancom/san/landingpage/widget/AdItemWeight$1;)V

    return-void
.end method


# virtual methods
.method public render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;
    .locals 8
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 21
    .end local p1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local p2    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x49

    and-int/lit8 v0, v0, 0x49

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    const/16 v0, 0x43

    goto :goto_0

    :cond_0
    const/16 v0, 0x55

    :goto_0
    const/16 v1, 0x2d0

    const/16 v3, 0x31

    const/4 v4, -0x2

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    const/16 v6, 0x5f

    if-ne v0, v6, :cond_2

    goto :goto_2

    :pswitch_0
    iget v0, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    if-ne v0, v4, :cond_1

    const/16 v0, 0x31

    goto :goto_1

    :cond_1
    const/16 v0, 0x29

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    iget v0, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    if-ne v0, v1, :cond_3

    .line 3
    new-instance v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 4
    new-instance p1, Lccsanandroid/view/ViewGroup$LayoutParams;

    iget v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->getWidthPixels(I)I

    move-result v1

    iget v2, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    iget v3, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-virtual {p0, v2, v3}, Lccsancom/san/landingpage/widget/AdItemWeight;->getImageHeightPixels(II)I

    move-result v2

    invoke-direct {p1, v1, v2}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {v0, p2}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    .line 1
    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    and-int/lit8 p2, p1, 0x3b

    or-int/lit8 p1, p1, 0x3b

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    .line 21
    return-object v0

    .line 9
    :cond_3
    :pswitch_1
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 10
    iget v6, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    if-eq v6, v1, :cond_4

    .line 1
    const/16 v1, 0x42

    goto :goto_5

    :cond_4
    const/16 v1, 0x23

    :goto_5
    packed-switch v1, :pswitch_data_3

    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    xor-int/lit8 v6, v1, 0x57

    and-int/lit8 v1, v1, 0x57

    shl-int/2addr v1, v2

    and-int v7, v6, v1

    or-int/2addr v1, v6

    add-int/2addr v7, v1

    rem-int/lit16 v1, v7, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_5

    .line 10
    :cond_5
    iget v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    if-ne v1, v4, :cond_9

    .line 1
    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x33

    sub-int/2addr v1, v2

    and-int/lit8 v3, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    packed-switch v1, :pswitch_data_4

    goto :goto_7

    .line 21
    :pswitch_2
    nop

    .line 14
    :goto_7
    :pswitch_3
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_XY:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 1
    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x52

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    const/4 v5, 0x1

    :cond_7
    packed-switch v5, :pswitch_data_5

    .line 21
    :cond_8
    :goto_8
    goto :goto_9

    .line 13
    :cond_9
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 1
    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    add-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    goto :goto_8

    .line 17
    :goto_9
    :pswitch_4
    new-instance v1, Lccsanandroid/view/ViewGroup$LayoutParams;

    iget v3, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-static {v3}, Lccsancom/san/landingpage/widget/AdItemWeight;->getWidthPixels(I)I

    move-result v3

    iget v4, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    iget v5, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-virtual {p0, v4, v5}, Lccsancom/san/landingpage/widget/AdItemWeight;->getImageHeightPixels(II)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3, v0}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 20
    iget-object p1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 21
    new-instance p1, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;

    invoke-direct {p1, p0, p2}, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;-><init>(Lccsancom/san/landingpage/widget/AdItemWeight$3;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1
    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    xor-int/lit8 p2, p1, 0x1b

    and-int/lit8 p1, p1, 0x1b

    or-int/2addr p1, p2

    shl-int/2addr p1, v2

    neg-int p2, p2

    xor-int v1, p1, p2

    and-int/2addr p1, p2

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    .line 21
    :cond_a
    nop

    :cond_b
    nop

    .line 1
    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->addDownloadListener:I

    and-int/lit8 p2, p1, 0x77

    xor-int/lit8 p1, p1, 0x77

    or-int/2addr p1, p2

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v2

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight$3;->IncentiveDownloadUtils:I

    rem-int/lit8 p2, p2, 0x2

    .line 21
    return-object v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x23
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
