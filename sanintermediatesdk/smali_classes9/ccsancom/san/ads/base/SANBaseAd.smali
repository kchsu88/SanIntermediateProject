.class public abstract Lccsancom/san/ads/base/SANBaseAd;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I = 0x0

.field private static final MSG_TIMEOUT:I = 0x7

.field private static removeDownloadListener:I


# instance fields
.field protected TIMEOUT_DEF:J

.field private mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

.field private mAdInfo:Lccsancom/san/ads/AdInfo;

.field private mAdLoadInnerListener:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

.field private mContext:Lccsanandroid/content/Context;

.field private final mHandler:Lccsanandroid/os/Handler;

.field protected mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedAdHasComplete:Z

.field public mSpotId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lccsancom/san/ads/base/SANBaseAd;->TIMEOUT_DEF:J

    .line 6
    iput-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mContext:Lccsanandroid/content/Context;

    .line 7
    iput-object p2, p0, Lccsancom/san/ads/base/SANBaseAd;->mSpotId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lccsancom/san/ads/base/SANBaseAd;->mLocalExtras:Ljava/util/Map;

    .line 9
    new-instance p1, Lccsancom/san/ads/base/SANBaseAd$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lccsancom/san/ads/base/SANBaseAd$1;-><init>(Lccsancom/san/ads/base/SANBaseAd;Lccsanandroid/os/Looper;)V

    iput-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mHandler:Lccsanandroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 3

    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getAdDetail()Ljava/lang/String;
    .locals 2

    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x79

    or-int/lit8 v0, v0, 0x79

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x1a

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    const-string v0, ""

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getAdFormat()Lccsancom/san/ads/AdFormat;
.end method

.method public getAdInfo()Lccsancom/san/ads/AdInfo;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x41

    or-int/lit8 v2, v0, 0x41

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    or-int/lit8 v2, v0, 0x7

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v0, v0, 0x7

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v2, 0x9

    :try_start_0
    div-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getBid()J
    .locals 7

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x11

    or-int/lit8 v2, v0, 0x11

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    if-nez v1, :cond_1

    const/16 v2, 0x39

    goto :goto_0

    :cond_1
    const/16 v2, 0x36

    :goto_0
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v0, v0, 0x64

    sub-int/2addr v0, v6

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v3

    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_1

    :cond_3
    :goto_2
    goto :goto_3

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getContext()Lccsanandroid/content/Context;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x3

    or-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mContext:Lccsanandroid/content/Context;

    xor-int/lit8 v2, v0, 0xb

    and-int/lit8 v0, v0, 0xb

    const/4 v3, 0x1

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v1

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getLoadDuration()J
    .locals 6

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x3f

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    const-string v3, "load_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v2, v3, v0, v1}, Lccsansan/bu/unifiedDownload;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v2, v3, v0, v1}, Lccsansan/bu/unifiedDownload;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    :goto_1
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getNetworkId()Ljava/lang/String;
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x4f

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x4f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    if-nez v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    const/16 v4, 0x1d

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/16 v4, 0x41

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const/16 v4, 0x4e

    goto :goto_3

    :cond_2
    const/16 v4, 0x5d

    :goto_3
    packed-switch v4, :pswitch_data_2

    :pswitch_1
    goto :goto_5

    :goto_4
    :pswitch_2
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_7

    :goto_5
    and-int/lit8 v1, v0, 0x9

    or-int/lit8 v0, v0, 0x9

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v0, 0x5a

    goto :goto_6

    :cond_3
    const/16 v0, 0x5c

    :goto_6
    packed-switch v0, :pswitch_data_3

    :pswitch_3
    const-string v0, ""

    :cond_4
    :goto_7
    sget v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    or-int/lit8 v4, v1, 0xd

    shl-int/2addr v4, v2

    xor-int/lit8 v1, v1, 0xd

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    goto :goto_8

    :cond_5
    const/4 v2, 0x0

    :goto_8
    packed-switch v2, :pswitch_data_4

    return-object v0

    :pswitch_4
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5a
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public getSpotId()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mSpotId:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6e

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getTrackKey()Ljava/lang/String;
.end method

.method public innerLoad()V
    .locals 2

    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public abstract isAdReady()Z
.end method

.method public load(Lccsancom/san/ads/AdInfo;)V
    .locals 4
    .param p1, "adInfo"    # Lccsancom/san/ads/AdInfo;

    .line 15
    .end local p1    # "adInfo":Lccsancom/san/ads/AdInfo;
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x48

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1, v1}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "load_time"

    invoke-virtual {p1, v0, v2, v3}, Lccsansan/bu/unifiedDownload;->putExtra(Ljava/lang/String;J)V

    .line 5
    invoke-static {}, Lccsancom/san/ads/core/AdCacheManager;->getInstance()Lccsancom/san/ads/core/AdCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/san/ads/core/AdCacheManager;->getCachedAdBySpotId(Lccsancom/san/ads/AdInfo;)Lccsancom/san/ads/base/AdWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    const/16 v0, 0x1b

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mHandler:Lccsanandroid/os/Handler;

    iget-wide v0, p0, Lccsancom/san/ads/base/SANBaseAd;->TIMEOUT_DEF:J

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 15
    :pswitch_0
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x43

    and-int/lit8 v0, v0, 0x43

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 5
    :cond_2
    nop

    .line 7
    invoke-virtual {p0, p1, v1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;Z)V

    .line 15
    sget p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    or-int/lit8 v0, p1, 0x69

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x69

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 12
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->innerLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 14
    new-instance v0, Lccsancom/san/ads/AdError;

    sget-object v1, Lccsancom/san/ads/AdError;->UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {v1}, Lccsancom/san/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-static {v0, v1, p1}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 2
    .param p1, "adAction"    # Lccsancom/san/ads/base/IAdListener$AdAction;

    .line 1
    .end local p1    # "adAction":Lccsancom/san/ads/base/IAdListener$AdAction;
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;Ljava/util/Map;)V

    sget p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    xor-int/lit8 v1, p1, 0x49

    and-int/lit8 p1, p1, 0x49

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    array-length p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;Ljava/util/Map;)V
    .locals 3
    .param p1, "adAction"    # Lccsancom/san/ads/base/IAdListener$AdAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/san/ads/base/IAdListener$AdAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    .end local p1    # "adAction":Lccsancom/san/ads/base/IAdListener$AdAction;
    nop

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-nez v0, :cond_0

    .line 34
    sget p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    and-int/lit8 p2, p1, 0x29

    or-int/lit8 p1, p1, 0x29

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    .line 5
    :cond_0
    sget-object v0, Lccsancom/san/ads/base/SANBaseAd$2;->addDownloadListener:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 24
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    iget-boolean p2, p0, Lccsancom/san/ads/base/SANBaseAd;->mRewardedAdHasComplete:Z

    invoke-interface {p1, p2}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdClosed(Z)V

    .line 25
    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->destroy()V

    goto/16 :goto_6

    .line 26
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    invoke-interface {p1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdCompleted()V

    .line 27
    iput-boolean v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mRewardedAdHasComplete:Z

    .line 34
    sget p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const/16 p1, 0x2c

    goto :goto_0

    .line 28
    :pswitch_2
    iget-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    invoke-interface {p1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdClicked()V

    goto/16 :goto_6

    .line 29
    :pswitch_3
    iget-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    invoke-interface {p1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdImpression()V

    .line 34
    :goto_0
    goto/16 :goto_6

    .line 30
    :pswitch_4
    sget-object p1, Lccsancom/san/ads/AdError;->UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

    if-eqz p2, :cond_2

    .line 34
    const/16 v1, 0x13

    goto :goto_1

    :cond_2
    const/16 v1, 0x49

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_5
    sget v1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1a

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 30
    :cond_3
    nop

    .line 31
    const-string v1, "adError"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lccsancom/san/ads/AdError;

    if-eqz v2, :cond_4

    .line 34
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_2

    goto :goto_4

    :pswitch_6
    sget p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x56

    sub-int/2addr p1, v0

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    .line 31
    :cond_5
    nop

    .line 32
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/AdError;

    .line 34
    sget p2, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x72

    sub-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_6

    const/16 p2, 0x3a

    goto :goto_3

    :cond_6
    const/4 p2, 0x5

    :goto_3
    packed-switch p2, :pswitch_data_3

    :goto_4
    :pswitch_7
    iget-object p2, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    invoke-interface {p2, p1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdImpressionError(Lccsancom/san/ads/AdError;)V

    goto :goto_6

    :goto_5
    sget p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    const/16 p1, 0x30

    goto :goto_0

    :cond_7
    const/16 p1, 0x21

    goto :goto_0

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_7
    .end packed-switch
.end method

.method public onAdLoadError(Lccsancom/san/ads/AdError;)V
    .locals 5
    .param p1, "adError"    # Lccsancom/san/ads/AdError;

    .line 6
    .end local p1    # "adError":Lccsancom/san/ads/AdError;
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x9

    const/16 v2, 0x9

    and-int/2addr v0, v2

    const/4 v3, 0x1

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(ILccsancom/san/ads/AdError;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    const-string v4, "loaded_error"

    invoke-static {v0, v1, v4, p1}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;Ljava/lang/String;Lccsancom/san/ads/AdError;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdLoadInnerListener:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x2d

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x7c

    sub-int/2addr v1, v3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    :cond_2
    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0, v1, p1}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    sget p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/san/ads/base/AdWrapper;

    .line 1
    .end local p1    # "ad":Lccsancom/san/ads/base/AdWrapper;
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;Z)V

    sget p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x70

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x3c

    goto :goto_0

    :cond_1
    const/16 p1, 0x14

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
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method protected onAdLoaded(Lccsancom/san/ads/base/AdWrapper;Z)V
    .locals 8
    .param p1, "ad"    # Lccsancom/san/ads/base/AdWrapper;
    .param p2, "isFromCache"    # Z

    .line 10
    .end local p1    # "ad":Lccsancom/san/ads/base/AdWrapper;
    .end local p2    # "isFromCache":Z
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x1b

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 0
    :pswitch_0
    if-nez p1, :cond_1

    .line 10
    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/16 v0, 0x62

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v0, 0x33

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    const/16 v0, 0x1b

    goto :goto_3

    :cond_2
    const/16 v0, 0xf

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_7

    .line 2
    :goto_4
    sget-object p1, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 10
    sget p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x5c

    sub-int/2addr p1, v3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_3

    const/16 p1, 0x14

    goto :goto_5

    :cond_3
    const/16 p1, 0x34

    :goto_5
    packed-switch p1, :pswitch_data_3

    goto :goto_6

    :pswitch_2
    return-void

    :goto_6
    :try_start_1
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :goto_7
    :pswitch_3
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v5}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->addDownloadListener()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lccsancom/san/ads/AdInfo;->setBid(J)V

    .line 7
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0, v1, p2}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(IZ)V

    .line 8
    iget-object p2, p0, Lccsancom/san/ads/base/SANBaseAd;->mContext:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    const-string v2, "loaded_success"

    invoke-static {p2, v0, v2, v5}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;Ljava/lang/String;Lccsancom/san/ads/AdError;)V

    .line 10
    iget-object p2, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdLoadInnerListener:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz p2, :cond_4

    const/16 v4, 0x21

    :cond_4
    packed-switch v4, :pswitch_data_4

    :goto_8
    goto :goto_9

    :pswitch_4
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x4f

    and-int/lit8 v0, v0, 0x4f

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_5

    :cond_5
    iget-object v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdInfo:Lccsancom/san/ads/AdInfo;

    invoke-virtual {p2, v0, p1}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoaded(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/AdWrapper;)V

    sget p1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x43

    or-int/lit8 p1, p1, 0x43

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_6

    const/16 p1, 0x57

    goto :goto_8

    :cond_6
    const/16 p1, 0x2c

    goto :goto_8

    :goto_9
    return-void

    :catchall_1
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x21
        :pswitch_4
    .end packed-switch
.end method

.method public resetFullAdHasComplete()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x43

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x43

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lccsancom/san/ads/base/SANBaseAd;->mRewardedAdHasComplete:Z

    goto :goto_1

    :pswitch_0
    iput-boolean v2, p0, Lccsancom/san/ads/base/SANBaseAd;->mRewardedAdHasComplete:Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch
.end method

.method public setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V
    .locals 2
    .param p1, "adActionListener"    # Lccsancom/san/ads/base/IAdListener$AdActionListener;

    .line 1
    .end local p1    # "adActionListener":Lccsancom/san/ads/base/IAdListener$AdActionListener;
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    iput-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdActionListener:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x4c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
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
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public setAdLoadListener(Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)V
    .locals 4
    .param p1, "adLoadInnerListener"    # Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    .line 1
    .end local p1    # "adLoadInnerListener":Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
    sget v0, Lccsancom/san/ads/base/SANBaseAd;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x3f

    and-int/lit8 v2, v0, 0x3f

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/ads/base/SANBaseAd;->mAdLoadInnerListener:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    xor-int/lit8 p1, v0, 0x15

    and-int/lit8 v0, v0, 0x15

    shl-int/2addr v0, v3

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/16 p1, 0x62

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
