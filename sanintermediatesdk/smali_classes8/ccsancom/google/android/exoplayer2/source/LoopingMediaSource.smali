.class public final Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;
.super Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;,
        Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private final loopCount:I

.field private final maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

.field private final mediaPeriodToChildMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/android/exoplayer2/source/MediaPeriod;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "childSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 58
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSource;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSource;I)V
    .locals 2
    .param p1, "childSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p2, "loopCount"    # I

    .line 67
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 68
    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 69
    new-instance v1, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-direct {v1, p1, v0}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSource;Z)V

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 70
    iput p2, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    .line 73
    return-void
.end method


# virtual methods
.method public createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 4
    .param p1, "id"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lccsancom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 101
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "childPeriodUid":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 106
    .local v1, "childMediaPeriodId":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 108
    invoke-virtual {v2, v1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object v2

    .line 109
    .local v2, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object v2
.end method

.method public getInitialTimeline()Lccsancom/google/android/exoplayer2/Timeline;
    .locals 3

    .line 83
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 84
    new-instance v0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lccsancom/google/android/exoplayer2/Timeline;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;I)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lccsancom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 83
    :goto_0
    return-object v0
.end method

.method public getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;->getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 2
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 136
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_0

    .line 138
    :cond_0
    move-object v0, p2

    .line 136
    :goto_0
    return-object v0
.end method

.method public isSingleWindow()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "mediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p3, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 126
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 127
    new-instance v0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget v1, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    invoke-direct {v0, p3, v1}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;I)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-direct {v0, p3}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;)V

    :goto_0
    nop

    .line 129
    .local v0, "loopingTimeline":Lccsancom/google/android/exoplayer2/Timeline;
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 130
    return-void
.end method

.method protected prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2
    .param p1, "mediaTransferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 95
    invoke-super {p0, p1}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 96
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->prepareChildSource(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;)V

    .line 97
    return-void
.end method

.method public releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 115
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->maskingMediaSource:Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 117
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 118
    .local v0, "childMediaPeriodId":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    return-void
.end method
