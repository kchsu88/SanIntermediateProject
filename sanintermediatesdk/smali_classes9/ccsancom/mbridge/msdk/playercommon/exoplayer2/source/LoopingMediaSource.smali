.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private childPeriodCount:I

.field private final childSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 47
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 57
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 58
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 59
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->loopCount:I

    .line 60
    return-void
.end method


# virtual methods
.method public final createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 70
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    rem-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 70
    :goto_0
    return-object p1
.end method

.method protected final bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Void;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 90
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    .line 92
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    .line 93
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->loopCount:I

    invoke-direct {p1, p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;I)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-direct {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 95
    :goto_0
    invoke-virtual {p0, p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->refreshSourceInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public final prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V

    .line 65
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->prepareChildSource(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 66
    return-void
.end method

.method public final releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 79
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 1

    .line 83
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    .line 85
    return-void
.end method
