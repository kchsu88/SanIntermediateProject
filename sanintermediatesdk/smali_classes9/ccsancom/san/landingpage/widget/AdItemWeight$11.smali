.class final enum Lccsancom/san/landingpage/widget/AdItemWeight$11;
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
.field private static getDownloadingList:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

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
    .locals 7
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 16
    .end local p1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local p2    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    nop

    .line 1
    new-instance v0, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget v2, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-static {v2}, Lccsancom/san/landingpage/widget/AdItemWeight;->getWidthPixels(I)I

    move-result v2

    iget v3, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-static {v3}, Lccsancom/san/landingpage/widget/AdItemWeight;->getHeightPixels(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    iget v2, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedList:I

    if-nez v2, :cond_0

    .line 16
    const/16 v3, 0x20

    goto :goto_0

    :cond_0
    const/16 v3, 0x29

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    sget v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    xor-int/lit8 v3, v2, 0x6d

    and-int/lit8 v6, v2, 0x6d

    or-int/2addr v3, v6

    shl-int/2addr v3, v5

    and-int/lit8 v6, v2, -0x6e

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x6d

    or-int/2addr v2, v6

    neg-int v2, v2

    and-int v6, v3, v2

    or-int/2addr v2, v3

    add-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x80

    sput v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    goto :goto_3

    .line 4
    :pswitch_0
    if-ne v2, v5, :cond_1

    .line 16
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x3a

    and-int/lit8 v3, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    goto :goto_2

    .line 6
    :pswitch_1
    const/16 v2, 0x55

    .line 8
    iput v2, v1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    sget v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    xor-int/lit8 v3, v2, 0x1d

    and-int/lit8 v2, v2, 0x1d

    shl-int/2addr v2, v5

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    goto :goto_5

    .line 4
    :cond_2
    :goto_2
    const/16 v2, 0x51

    .line 6
    iput v2, v1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    sget v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x6e

    sub-int/2addr v2, v5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    goto :goto_5

    .line 3
    :cond_3
    :goto_3
    const/16 v2, 0x53

    .line 4
    iput v2, v1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    sget v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

    or-int/lit8 v3, v2, 0x6b

    shl-int/2addr v3, v5

    xor-int/lit8 v2, v2, 0x6b

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 10
    :cond_5
    :goto_5
    :pswitch_2
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "san_common_dimens_16dp"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 11
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string v3, "san_common_dimens_12dp"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 12
    invoke-virtual {v1, v4, v4, v2, p1}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {v0, p2}, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;->setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$11;->unifiedDownload:I

    xor-int/lit8 p2, p1, 0x5d

    and-int/lit8 v1, p1, 0x5d

    or-int/2addr p2, v1

    shl-int/2addr p2, v5

    and-int/lit8 v1, p1, -0x5e

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x5d

    or-int/2addr p1, v1

    neg-int p1, p1

    xor-int v1, p2, p1

    and-int/2addr p1, p2

    shl-int/2addr p1, v5

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight$11;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    const/16 p1, 0x4f

    goto :goto_6

    :cond_6
    const/16 p1, 0x49

    :goto_6
    packed-switch p1, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    return-object v0

    :goto_7
    const/16 p1, 0x48

    :try_start_0
    div-int/2addr p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_3
    .end packed-switch
.end method
