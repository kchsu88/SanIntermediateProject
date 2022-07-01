.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;I)V
    .locals 2

    .line 106
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(ZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder;)V

    .line 107
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 108
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 109
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 110
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 111
    if-lez v0, :cond_1

    .line 112
    const p1, 0x7fffffff

    div-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method protected final getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1

    .line 139
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 140
    const/4 p1, -0x1

    return p1

    .line 142
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getChildIndexByPeriodIndex(I)I
    .locals 1

    .line 129
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected final getChildIndexByWindowIndex(I)I
    .locals 1

    .line 134
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected final getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final getFirstPeriodIndexByChildIndex(I)I
    .locals 1

    .line 152
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int p1, p1, v0

    return p1
.end method

.method protected final getFirstWindowIndexByChildIndex(I)I
    .locals 1

    .line 157
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int p1, p1, v0

    return p1
.end method

.method public final getPeriodCount()I
    .locals 2

    .line 124
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getTimelineByChildIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
    .locals 0

    .line 147
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    return-object p1
.end method

.method public final getWindowCount()I
    .locals 2

    .line 119
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method
