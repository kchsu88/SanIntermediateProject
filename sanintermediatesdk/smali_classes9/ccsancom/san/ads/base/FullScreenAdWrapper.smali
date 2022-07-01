.class public Lccsancom/san/ads/base/FullScreenAdWrapper;
.super Lccsancom/san/ads/base/AdWrapper;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/FullScreenAdWrapper;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/base/FullScreenAdWrapper;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/base/AdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .line 7
    sget v0, Lccsancom/san/ads/base/FullScreenAdWrapper;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/FullScreenAdWrapper;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    instance-of v1, v0, Lccsancom/san/ads/base/IFullScreenAd;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 7
    sget v1, Lccsancom/san/ads/base/FullScreenAdWrapper;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1c

    sub-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/ads/base/FullScreenAdWrapper;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 4
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 2
    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->resetFullAdHasComplete()V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    check-cast v0, Lccsancom/san/ads/base/IFullScreenAd;

    invoke-interface {v0}, Lccsancom/san/ads/base/IFullScreenAd;->show()V

    .line 4
    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->onImpression()V

    goto :goto_2

    .line 2
    :pswitch_0
    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->resetFullAdHasComplete()V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    check-cast v0, Lccsancom/san/ads/base/IFullScreenAd;

    invoke-interface {v0}, Lccsancom/san/ads/base/IFullScreenAd;->show()V

    .line 4
    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->onImpression()V

    goto :goto_3

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :goto_3
    sget v0, Lccsancom/san/ads/base/FullScreenAdWrapper;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/FullScreenAdWrapper;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 4
    :cond_3
    :pswitch_1
    nop

    .line 7
    iput-boolean v3, p0, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload:Z

    sget v0, Lccsancom/san/ads/base/FullScreenAdWrapper;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x2d

    or-int/lit8 v0, v0, 0x2d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/FullScreenAdWrapper;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 4
    const/16 v0, 0x24

    goto :goto_4

    :cond_4
    const/16 v0, 0x5d

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 7
    return-void

    :pswitch_2
    const/16 v0, 0x53

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_2
    .end packed-switch
.end method
