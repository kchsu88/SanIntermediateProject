.class public Lccsancom/san/ads/base/AdWrapper;
.super Lccsansan/bu/unifiedDownload;
.source ""


# static fields
.field private static deleteDownItem:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field private final IncentiveDownloadUtils:J

.field protected addDownloadListener:Z

.field private final getDownloadingList:Lccsancom/san/ads/AdInfo;

.field protected removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

.field protected unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/bu/unifiedDownload;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    .line 3
    iput-object p2, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/base/AdWrapper;->IncentiveDownloadUtils:J

    return-void
.end method


# virtual methods
.method addDownloadListener()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v1, v0, 0x6f

    and-int/lit8 v0, v0, 0x6f

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    if-nez v1, :cond_2

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    const/16 v3, 0x8

    :try_start_0
    div-int/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_2

    :goto_2
    goto :goto_3

    :pswitch_1
    invoke-virtual {v1}, Lccsancom/san/ads/base/SANBaseAd;->getBid()J

    move-result-wide v0

    sget v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v3, v2, 0x57

    or-int/lit8 v2, v2, 0x57

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    goto :goto_4

    :goto_3
    const-wide/16 v0, -0x1

    :cond_3
    :goto_4
    sget v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v3, v2, 0x3

    or-int/lit8 v2, v2, 0x3

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getAdInfo()Lccsancom/san/ads/AdInfo;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    or-int/lit8 v1, v0, 0x1f

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v0, 0x1f

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    and-int/lit8 v2, v0, 0xf

    or-int/lit8 v0, v0, 0xf

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v0, 0x35

    goto :goto_0

    :cond_1
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method public getAdType()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v1, v0, 0x65

    and-int/lit8 v2, v0, 0x65

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    if-nez v1, :cond_1

    const/16 v2, 0x13

    goto :goto_0

    :cond_1
    const/16 v2, 0x48

    :goto_0
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    xor-int/lit8 v1, v0, 0x2d

    and-int/lit8 v0, v0, 0x2d

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getAdType()Ljava/lang/String;

    move-result-object v4

    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    or-int/lit8 v1, v0, 0x7b

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0x7b

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :goto_1
    const/16 v0, 0x10

    goto :goto_2

    :cond_3
    const/16 v0, 0x9

    :goto_2
    packed-switch v0, :pswitch_data_1

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :pswitch_1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    or-int/lit8 v1, v0, 0x53

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0x53

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return-object v4

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch
.end method

.method public getFormat()Lccsancom/san/ads/AdFormat;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v0, 0x14

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getAdFormat()Lccsancom/san/ads/AdFormat;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    xor-int/lit8 v1, v0, 0x69

    and-int/lit8 v3, v0, 0x69

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    :cond_2
    const/4 v1, 0x0

    or-int/lit8 v3, v0, 0x15

    shl-int/lit8 v2, v3, 0x1

    xor-int/lit8 v0, v0, 0x15

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    :cond_3
    :goto_1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v2, v0, 0x6d

    or-int/lit8 v0, v0, 0x6d

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getLoadedTime()J
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lccsancom/san/ads/base/AdWrapper;->IncentiveDownloadUtils:J

    goto :goto_1

    :pswitch_0
    iget-wide v0, p0, Lccsancom/san/ads/base/AdWrapper;->IncentiveDownloadUtils:J

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x31

    or-int/lit8 v0, v0, 0x31

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    sget v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    or-int/lit8 v2, v1, 0x45

    shl-int/2addr v2, v3

    xor-int/lit8 v1, v1, 0x45

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    :goto_1
    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x0

    xor-int/lit8 v4, v1, 0x39

    and-int/lit8 v1, v1, 0x39

    shl-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x7a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v2, v2, 0x2e

    sub-int/2addr v2, v1

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    sget v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v4, v2, 0x29

    and-int/lit8 v2, v2, 0x29

    shl-int/2addr v2, v1

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, ""

    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    or-int/lit8 v1, v0, 0x31

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x31

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    if-nez v1, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :cond_1
    const/16 v3, 0x25

    :goto_1
    packed-switch v3, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/16 v3, 0x22

    goto :goto_4

    :cond_2
    const/16 v3, 0x55

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :cond_3
    add-int/lit8 v1, v1, 0x70

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    and-int/lit8 v1, v0, 0x57

    or-int/lit8 v0, v0, 0x57

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const/16 v0, 0x1f

    goto :goto_6

    :cond_4
    const/16 v0, 0x5f

    :cond_5
    :goto_6
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch
.end method

.method public getSanAd()Lccsancom/san/ads/base/SANBaseAd;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x65

    or-int/lit8 v0, v0, 0x65

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method public getSpotId()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    xor-int/lit8 v1, v0, 0x41

    and-int/lit8 v0, v0, 0x41

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    if-nez v0, :cond_1

    const/16 v1, 0x51

    goto :goto_1

    :cond_1
    const/16 v1, 0xb

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 v3, 0x63

    :try_start_0
    div-int/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    move-object v0, v1

    :pswitch_2
    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_6

    :goto_5
    const-string v0, ""

    :cond_3
    :goto_6
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getTrackKey()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    and-int/lit8 v1, v0, 0x4d

    or-int/lit8 v2, v0, 0x4d

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    if-nez v1, :cond_1

    const/16 v2, 0x51

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    :goto_0
    packed-switch v2, :pswitch_data_0

    and-int/lit8 v1, v0, 0x2d

    or-int/lit8 v0, v0, 0x2d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Lccsancom/san/ads/base/SANBaseAd;->getTrackKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_1
    const/16 v0, 0xb

    goto :goto_2

    :cond_2
    const/16 v0, 0x3d

    :goto_2
    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x3b

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    const-string v0, ""

    :goto_3
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method public isAdReady()Z
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v1, v0, 0x1d

    and-int/lit8 v0, v0, 0x1d

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    if-eqz v0, :cond_1

    const/16 v3, 0x19

    goto :goto_1

    :cond_1
    const/16 v3, 0x28

    :goto_1
    packed-switch v3, :pswitch_data_1

    :goto_2
    :pswitch_1
    goto :goto_8

    :goto_3
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    :goto_4
    packed-switch v3, :pswitch_data_2

    :pswitch_2
    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_2

    :pswitch_3
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v3, v0, 0x5b

    or-int/lit8 v0, v0, 0x5b

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    :goto_6
    packed-switch v3, :pswitch_data_4

    :pswitch_4
    and-int/lit8 v3, v0, 0x59

    or-int/lit8 v0, v0, 0x59

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    goto :goto_7

    :cond_5
    const/4 v1, 0x1

    :goto_7
    packed-switch v1, :pswitch_data_5

    :pswitch_5
    goto :goto_a

    :goto_8
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    or-int/lit8 v3, v0, 0x11

    shl-int/2addr v3, v2

    xor-int/lit8 v0, v0, 0x11

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    goto :goto_9

    :cond_6
    const/4 v2, 0x0

    :goto_9
    packed-switch v2, :pswitch_data_6

    :pswitch_6
    const/4 v2, 0x0

    :goto_a
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    and-int/lit8 v1, v0, 0x5f

    or-int/lit8 v0, v0, 0x5f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return v2

    :catchall_0
    move-exception v0

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public isFastReturn()Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    and-int/lit8 v1, v0, 0x29

    or-int/lit8 v0, v0, 0x29

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsancom/san/ads/base/AdWrapper;->addDownloadListener:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsancom/san/ads/base/AdWrapper;->addDownloadListener:Z

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isFromDB()Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    or-int/lit8 v1, v0, 0x31

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x31

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x25

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->isMads()Z

    move-result v1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->isMads()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x42

    :goto_1
    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_5

    :goto_2
    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/16 v3, 0x12

    :goto_3
    packed-switch v3, :pswitch_data_2

    :pswitch_2
    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    check-cast v1, Lccsancom/san/mads/base/BaseMadsAd;

    invoke-virtual {v1}, Lccsancom/san/mads/base/BaseMadsAd;->isFromDB()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x58

    goto :goto_4

    :cond_3
    const/16 v1, 0x28

    :goto_4
    packed-switch v1, :pswitch_data_3

    sget v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    or-int/lit8 v3, v1, 0x2f

    shl-int/2addr v3, v2

    xor-int/lit8 v1, v1, 0x2f

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    goto :goto_7

    :goto_5
    sget v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x36

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_4

    :pswitch_3
    const/4 v2, 0x0

    goto :goto_9

    :cond_5
    :goto_7
    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x1

    :goto_8
    packed-switch v0, :pswitch_data_5

    :goto_9
    :pswitch_4
    return v2

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public isMads()Z
    .locals 4

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    instance-of v0, v0, Lccsancom/san/mads/base/BaseMadsAd;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    instance-of v0, v0, Lccsancom/san/mads/base/BaseMadsAd;

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    or-int/lit8 v3, v2, 0x43

    shl-int/lit8 v1, v3, 0x1

    xor-int/lit8 v2, v2, 0x43

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isValid()Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x6f

    or-int/lit8 v2, v0, 0x6f

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x19

    goto :goto_0

    :cond_0
    const/16 v1, 0x5e

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload:Z

    goto :goto_2

    :pswitch_0
    iget-boolean v1, p0, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_5

    :goto_2
    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_2
    xor-int/lit8 v1, v0, 0x73

    and-int/lit8 v0, v0, 0x73

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    :cond_3
    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_3

    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x3d

    or-int/lit8 v0, v0, 0x3d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_7

    :goto_5
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x6f

    or-int/lit8 v0, v0, 0x6f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_9

    :goto_7
    const/16 v0, 0x4a

    goto :goto_8

    :cond_6
    const/4 v0, 0x7

    :goto_8
    packed-switch v0, :pswitch_data_4

    goto :goto_6

    :goto_9
    :pswitch_3
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x2d

    or-int/lit8 v0, v0, 0x2d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return v2

    :catchall_0
    move-exception v0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_3
    .end packed-switch
.end method

.method public onImpression()V
    .locals 5

    .line 6
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, 0x2d

    or-int/lit8 v0, v0, 0x2d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    iput-boolean v0, p0, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload:Z

    .line 2
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p0, v3}, Lccsansan/bn/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/ads/base/AdWrapper;Ljava/util/HashMap;)V

    .line 6
    invoke-static {}, Lccsancom/san/ads/core/AdCacheManager;->getInstance()Lccsancom/san/ads/core/AdCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/san/ads/core/AdCacheManager;->removeAdOnImpression(Lccsancom/san/ads/base/AdWrapper;)V

    goto :goto_2

    .line 1
    :pswitch_0
    iput-boolean v2, p0, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload:Z

    goto :goto_1

    .line 6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V
    .locals 4
    .param p1, "adActionListener"    # Lccsancom/san/ads/base/IAdListener$AdActionListener;

    .line 2
    .end local p1    # "adActionListener":Lccsancom/san/ads/base/IAdListener$AdActionListener;
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v1, v0, 0x35

    and-int/lit8 v0, v0, 0x35

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    if-eqz v0, :cond_1

    const/16 v1, 0x1e

    goto :goto_1

    :cond_1
    const/16 v1, 0x3f

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :pswitch_1
    move-object v0, v1

    .line 2
    :goto_4
    invoke-virtual {v0, p1}, Lccsancom/san/ads/base/SANBaseAd;->setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V

    .line 1
    sget p1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    or-int/lit8 v0, p1, 0x27

    shl-int/2addr v0, v2

    xor-int/lit8 p1, p1, 0x27

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 p1, 0x33

    goto :goto_5

    :cond_3
    const/16 p1, 0x47

    :goto_5
    packed-switch p1, :pswitch_data_3

    .line 2
    nop

    :goto_6
    :pswitch_2
    nop

    .line 1
    sget p1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    and-int/lit8 v0, p1, 0x6f

    or-int/lit8 p1, p1, 0x6f

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_2
    .end packed-switch
.end method

.method public setFastReturn(Z)V
    .locals 2
    .param p1, "fastReturn"    # Z

    .line 1
    .end local p1    # "fastReturn":Z
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    and-int/lit8 v1, v0, 0x29

    or-int/lit8 v0, v0, 0x29

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/ads/base/AdWrapper;->addDownloadListener:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x41

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

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public setSanAd(Lccsancom/san/ads/base/SANBaseAd;)V
    .locals 3
    .param p1, "sanAd"    # Lccsancom/san/ads/base/SANBaseAd;

    .line 1
    .end local p1    # "sanAd":Lccsancom/san/ads/base/SANBaseAd;
    sget v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    or-int/lit8 v1, v0, 0x6d

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v0, 0x6d

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/ads/base/AdWrapper;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    and-int/lit8 p1, v0, 0x55

    or-int/lit8 v0, v0, 0x55

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method unifiedDownload()I
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    if-nez v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/16 v1, 0x57

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const/16 v1, 0x17

    goto :goto_3

    :cond_2
    const/16 v1, 0x8

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    goto :goto_5

    :goto_4
    :pswitch_2
    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v0

    sget v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_6

    :goto_5
    const/4 v0, -0x1

    :cond_3
    :goto_6
    sget v1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v2, v1, 0x19

    and-int/lit8 v1, v1, 0x19

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch
.end method

.method public win(Lccsancom/san/ads/base/AdWrapper;)Z
    .locals 8
    .param p1, "adWrapper"    # Lccsancom/san/ads/base/AdWrapper;

    .line 4
    .end local p1    # "adWrapper":Lccsancom/san/ads/base/AdWrapper;
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x14

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingList:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->isColdStart()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x49

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->addDownloadListener()J

    move-result-wide v4

    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->addDownloadListener()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_6

    goto :goto_4

    :pswitch_0
    sget v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v4, v0, 0x21

    and-int/lit8 v0, v0, 0x21

    shl-int/2addr v0, v1

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 2
    :cond_2
    invoke-virtual {p0}, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload()I

    move-result v0

    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->unifiedDownload()I

    move-result p1

    if-le v0, p1, :cond_3

    .line 4
    const/16 p1, 0x53

    goto :goto_1

    :cond_3
    const/16 p1, 0x5a

    :goto_1
    packed-switch p1, :pswitch_data_1

    sget p1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x76

    sub-int/2addr p1, v1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    goto :goto_2

    .line 2
    :pswitch_1
    nop

    .line 4
    const/4 v1, 0x0

    goto :goto_3

    .line 2
    :cond_4
    :goto_2
    nop

    .line 4
    add-int/lit8 v0, v0, 0x40

    sub-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const/16 v3, 0x30

    :cond_5
    packed-switch v3, :pswitch_data_2

    .line 2
    :goto_3
    :pswitch_2
    return v1

    .line 4
    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    :goto_5
    packed-switch p1, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    sget p1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, p1, 0x46

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    const/16 p1, 0x3d

    goto :goto_6

    :cond_7
    const/16 p1, 0x35

    :goto_6
    packed-switch p1, :pswitch_data_4

    :pswitch_4
    const/4 v2, 0x1

    :goto_7
    sget p1, Lccsancom/san/ads/base/AdWrapper;->deleteDownItem:I

    xor-int/lit8 v0, p1, 0x31

    and-int/lit8 p1, p1, 0x31

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/ads/base/AdWrapper;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x49
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3d
        :pswitch_4
    .end packed-switch
.end method
