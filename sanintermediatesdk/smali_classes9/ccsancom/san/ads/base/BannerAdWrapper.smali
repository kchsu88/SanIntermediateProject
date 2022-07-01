.class public Lccsancom/san/ads/base/BannerAdWrapper;
.super Lccsancom/san/ads/base/AdWrapper;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/base/AdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    return-void
.end method


# virtual methods
.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    instance-of v4, v0, Lccsancom/san/ads/base/IBannerAd;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    instance-of v4, v0, Lccsancom/san/ads/base/IBannerAd;

    if-eqz v4, :cond_1

    const/16 v4, 0x3f

    goto :goto_1

    :cond_1
    const/16 v4, 0x20

    :goto_1
    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_2

    goto :goto_6

    :goto_4
    check-cast v0, Lccsancom/san/ads/base/IBannerAd;

    invoke-interface {v0}, Lccsancom/san/ads/base/IBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v2

    sget v0, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x49

    and-int/lit8 v0, v0, 0x49

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :goto_5
    goto :goto_7

    :goto_6
    :pswitch_2
    sget v0, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    and-int/lit8 v4, v0, 0x65

    or-int/lit8 v0, v0, 0x65

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    goto :goto_5

    :cond_3
    const/16 v1, 0x39

    :cond_4
    :goto_7
    sget v0, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x55

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0x55

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getAdView()Lccsanandroid/view/View;
    .locals 6

    .line 4
    sget v0, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x13

    and-int/lit8 v0, v0, 0x13

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    instance-of v1, v0, Lccsancom/san/ads/base/IBannerAd;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 4
    sget v1, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    and-int/lit8 v5, v1, 0x19

    or-int/lit8 v1, v1, 0x19

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    goto :goto_1

    .line 1
    :pswitch_0
    move-object v0, v4

    goto :goto_4

    .line 3
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 1
    check-cast v0, Lccsancom/san/ads/base/IBannerAd;

    invoke-interface {v0}, Lccsancom/san/ads/base/IBannerAd;->getAdView()Lccsanandroid/view/View;

    move-result-object v0

    goto :goto_3

    .line 4
    :pswitch_1
    check-cast v0, Lccsancom/san/ads/base/IBannerAd;

    invoke-interface {v0}, Lccsancom/san/ads/base/IBannerAd;->getAdView()Lccsanandroid/view/View;

    move-result-object v0

    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    nop

    .line 1
    :goto_4
    if-eqz v0, :cond_3

    .line 3
    const/4 v3, 0x1

    goto :goto_5

    :cond_3
    nop

    :goto_5
    packed-switch v3, :pswitch_data_2

    goto :goto_9

    .line 4
    :pswitch_2
    sget v1, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    or-int/lit8 v3, v1, 0x5f

    shl-int/2addr v3, v2

    xor-int/lit8 v1, v1, 0x5f

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v1, 0x38

    if-eqz v3, :cond_4

    .line 3
    const/16 v3, 0x38

    goto :goto_6

    :cond_4
    const/16 v3, 0x30

    :goto_6
    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->onImpression()V

    packed-switch v3, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 4
    :catchall_1
    move-exception v0

    throw v0

    :goto_7
    sget v3, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    xor-int/lit8 v4, v3, 0x65

    and-int/lit8 v3, v3, 0x65

    shl-int/2addr v3, v2

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 3
    const/16 v1, 0x28

    goto :goto_8

    :cond_5
    nop

    :goto_8
    packed-switch v1, :pswitch_data_4

    .line 4
    :pswitch_4
    nop

    .line 3
    :goto_9
    nop

    .line 4
    iput-boolean v2, p0, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload:Z

    .line 3
    sget v1, Lccsancom/san/ads/base/BannerAdWrapper;->IncentiveDownloadUtils:I

    or-int/lit8 v3, v1, 0x33

    shl-int/lit8 v2, v3, 0x1

    xor-int/lit8 v1, v1, 0x33

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/ads/base/BannerAdWrapper;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    .line 4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x38
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x28
        :pswitch_4
    .end packed-switch
.end method
