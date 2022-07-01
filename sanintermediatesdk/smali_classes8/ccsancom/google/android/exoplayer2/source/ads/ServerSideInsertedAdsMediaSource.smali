.class public final Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;
.super Lccsancom/google/android/exoplayer2/source/BaseMediaSource;
.source "ServerSideInsertedAdsMediaSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
.implements Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;,
        Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;,
        Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;,
        Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    }
.end annotation


# instance fields
.field private adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

.field private final drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

.field private final mediaPeriods:Lccsancom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ListMultimap<",
            "Ljava/lang/Long;",
            "Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private playbackHandler:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1, "mediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 102
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 103
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 104
    invoke-static {}, Lccsancom/google/common/collect/ArrayListMultimap;->create()Lccsancom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    .line 105
    sget-object v0, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 107
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->createDrmEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 108
    return-void
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 79
    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodEndPositionUs(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p2, "x2"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 79
    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v0

    return-object v0
.end method

.method private static correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .locals 11
    .param p0, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    .param p1, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p2, "adPlaybackState"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 499
    new-instance v10, Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    iget v1, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget v2, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    iget-object v3, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lccsancom/google/android/exoplayer2/Format;

    iget v4, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iget-object v5, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    .line 505
    invoke-static {v6, v7, p0, p2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadDataPositionMs(JLccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v6

    iget-wide v8, p1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    .line 507
    invoke-static {v8, v9, p0, p2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadDataPositionMs(JLccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v8

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lccsancom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILccsancom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 499
    return-object v10
.end method

.method private static correctMediaLoadDataPositionMs(JLccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 7
    .param p0, "mediaPositionMs"    # J
    .param p2, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    .param p3, "adPlaybackState"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 512
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 513
    return-wide v0

    .line 515
    :cond_0
    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 516
    .local v0, "mediaPositionUs":J
    iget-object v2, p2, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 518
    .local v2, "id":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    iget v3, v2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {v0, v1, v3, v4, p3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getMediaPeriodPositionUsForAd(JIILccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v3

    goto :goto_0

    .line 523
    :cond_1
    const/4 v3, -0x1

    invoke-static {v0, v1, v3, p3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getMediaPeriodPositionUsForContent(JILccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v3

    :goto_0
    nop

    .line 525
    .local v3, "correctedPositionUs":J
    invoke-static {v3, v4}, Lccsancom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v5

    return-wide v5
.end method

.method private static getMediaPeriodEndPositionUs(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 9
    .param p0, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    .param p1, "adPlaybackState"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 485
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 486
    .local v0, "id":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 487
    iget v1, v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p1, v1}, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 488
    .local v1, "adGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget v3, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v3, v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget v3, v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-wide v3, v2, v3

    move-wide v2, v3

    :goto_0
    return-wide v2

    .line 490
    .end local v1    # "adGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    :cond_1
    iget v1, v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const-wide v3, 0x7fffffffffffffffL

    if-ne v1, v2, :cond_2

    .line 491
    return-wide v3

    .line 493
    :cond_2
    iget v1, v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {p1, v1}, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 494
    .local v1, "nextAdGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v5, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v2, v5, v7

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v3, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    :goto_1
    return-wide v3
.end method

.method private getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    .locals 4
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p3, "useLoadingPeriod"    # Z

    .line 461
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 462
    return-object v0

    .line 464
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    iget-wide v2, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 465
    .local v1, "periods":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    return-object v0

    .line 468
    :cond_1
    if-eqz p3, :cond_3

    .line 469
    invoke-static {v1}, Lccsancom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 470
    .local v0, "loadingPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->access$000(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 471
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->access$000(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v2

    goto :goto_0

    .line 472
    :cond_2
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->access$100(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    .line 470
    :goto_0
    return-object v2

    .line 474
    .end local v0    # "loadingPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 475
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v2, p2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v2

    .line 476
    .local v2, "period":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-eqz v2, :cond_4

    .line 477
    return-object v2

    .line 474
    .end local v2    # "period":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->access$100(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    return-object v0
.end method

.method private releaseLastUsedMediaPeriod()V
    .locals 2

    .line 450
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->release(Lccsancom/google/android/exoplayer2/source/MediaSource;)V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 9
    .param p1, "id"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lccsancom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 214
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 216
    .local v0, "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 217
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    iget-wide v2, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lccsancom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v0    # "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    iget-wide v2, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 221
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsancom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 222
    .local v0, "lastExistingPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p1, p3, p4}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->canReuseMediaPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    move-object v1, v0

    .local v1, "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    goto :goto_0

    .line 226
    .end local v1    # "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p3, p4, p1, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getStreamPositionUs(JLccsancom/google/android/exoplayer2/source/MediaPeriodId;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v1

    .line 227
    .local v1, "streamPositionUs":J
    new-instance v3, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    new-instance v5, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v5, v6, v7, v8}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 229
    invoke-interface {v4, v5, p2, v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v4

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v3, v4, v5}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;-><init>(Lccsancom/google/android/exoplayer2/source/MediaPeriod;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    .line 234
    .local v3, "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    iget-wide v5, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lccsancom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v0, v3

    .line 237
    .end local v1    # "streamPositionUs":J
    .end local v3    # "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    .local v0, "sharedPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    :goto_0
    new-instance v1, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    .line 239
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->createDrmEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v3

    invoke-direct {v1, v0, p1, v2, v3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;-><init>(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 240
    .local v1, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->add(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;)V

    .line 241
    return-object v1
.end method

.method protected disableInternal()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->releaseLastUsedMediaPeriod()V

    .line 187
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->disable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 188
    return-void
.end method

.method protected enableInternal()V
    .locals 1

    .line 181
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->enable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 182
    return-void
.end method

.method public getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 160
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setAdPlaybackState$0$com-google-android-exoplayer2-source-ads-ServerSideInsertedAdsMediaSource(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2
    .param p1, "adPlaybackState"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 142
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    invoke-interface {v0}, Lccsancom/google/common/collect/ListMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 143
    .local v1, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    invoke-virtual {v1, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->updateAdPlaybackState(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    .line 144
    .end local v1    # "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;
    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->updateAdPlaybackState(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    .line 148
    :cond_1
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 149
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    if-eqz v0, :cond_2

    .line 150
    new-instance v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    invoke-direct {v0, v1, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 153
    :cond_2
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 177
    return-void
.end method

.method public onDownstreamFormatChanged(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 438
    nop

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 440
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 441
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, v0, p3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->onDownstreamFormatChanged(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 444
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 445
    invoke-static {v0, p3, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 447
    :goto_0
    return-void
.end method

.method public onDrmKeysLoaded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 277
    nop

    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 280
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 281
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    .line 285
    :goto_0
    return-void
.end method

.method public onDrmKeysRemoved(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 317
    nop

    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 320
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 321
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    .line 325
    :goto_0
    return-void
.end method

.method public onDrmKeysRestored(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 304
    nop

    .line 305
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 307
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 308
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    .line 312
    :goto_0
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 264
    nop

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 267
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 268
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 272
    :goto_0
    return-void
.end method

.method public onDrmSessionManagerError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 291
    nop

    .line 292
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 294
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 295
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 299
    :goto_0
    return-void
.end method

.method public onDrmSessionReleased(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 330
    nop

    .line 331
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 333
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 334
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->drmEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 338
    :goto_0
    return-void
.end method

.method public onLoadCanceled(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 383
    nop

    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 385
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 386
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->onLoadFinished(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 389
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 390
    invoke-static {v0, p4, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 389
    invoke-virtual {v1, p3, v2}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 392
    :goto_0
    return-void
.end method

.method public onLoadCompleted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 365
    nop

    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 367
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 368
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->onLoadFinished(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 371
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 372
    invoke-static {v0, p4, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 371
    invoke-virtual {v1, p3, v2}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 374
    :goto_0
    return-void
.end method

.method public onLoadError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 403
    nop

    .line 404
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 405
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 406
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4, p5, p6}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    goto :goto_0

    .line 409
    :cond_0
    if-eqz p6, :cond_1

    .line 410
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->onLoadFinished(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 412
    :cond_1
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 414
    invoke-static {v0, p4, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 412
    invoke-virtual {v1, p3, v2, p5, p6}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 418
    :goto_0
    return-void
.end method

.method public onLoadStarted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 347
    nop

    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 349
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 350
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3, p4}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->onLoadStarted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 353
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 354
    invoke-static {v0, p4, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 353
    invoke-virtual {v1, p3, v2}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 356
    :goto_0
    return-void
.end method

.method public onSourceInfoRefreshed(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 2
    .param p1, "source"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 192
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 193
    sget-object v0, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v0, p2, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 197
    return-void
.end method

.method public onUpstreamDiscarded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 424
    nop

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->getMediaPeriodForEvent(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Z)Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 426
    .local v0, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_0

    .line 427
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSourceEventDispatcherWithoutId:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 430
    invoke-static {v0, p3, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->correctMediaLoadData(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 432
    :goto_0
    return-void
.end method

.method protected prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2
    .param p1, "mediaTransferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 165
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Lccsanandroid/os/Handler;

    move-result-object v0

    .line 166
    .local v0, "handler":Lccsanandroid/os/Handler;
    monitor-enter p0

    .line 167
    :try_start_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->playbackHandler:Lccsanandroid/os/Handler;

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->addEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 170
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 171
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, p0, p1}, Lccsancom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 172
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 4
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 246
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    .line 247
    .local v0, "mediaPeriodImpl":Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->remove(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;)V

    .line 248
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->isUnused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    .line 249
    invoke-interface {v1, v2, v3}, Lccsancom/google/common/collect/ListMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaPeriods:Lccsancom/google/common/collect/ListMultimap;

    invoke-interface {v1}, Lccsancom/google/common/collect/ListMultimap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lastUsedMediaPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->release(Lccsancom/google/android/exoplayer2/source/MediaSource;)V

    .line 258
    :cond_1
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->releaseLastUsedMediaPeriod()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->playbackHandler:Lccsanandroid/os/Handler;

    .line 205
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 207
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 208
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 209
    return-void

    .line 205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAdPlaybackState(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 9
    .param p1, "adPlaybackState"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 123
    iget v0, p1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 124
    iget v0, p1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .local v0, "i":I
    :goto_1
    iget v1, p1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v0, v1, :cond_5

    .line 125
    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 126
    .local v1, "adGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-boolean v4, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    invoke-static {v4}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 127
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v4, v4, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v0, v4, :cond_2

    .line 128
    nop

    .line 129
    invoke-static {p1, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getAdCountInGroup(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v4

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 130
    invoke-static {v5, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getAdCountInGroup(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v5

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 128
    :goto_2
    invoke-static {v4}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 132
    :cond_2
    iget-wide v4, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 133
    invoke-static {p1, v0}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getAdCountInGroup(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 124
    .end local v1    # "adGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "i":I
    :cond_5
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->playbackHandler:Lccsanandroid/os/Handler;

    if-nez v0, :cond_6

    .line 138
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    goto :goto_4

    .line 140
    :cond_6
    new-instance v1, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :goto_4
    monitor-exit p0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
