.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 171
    return-void
.end method


# virtual methods
.method public final getNextWindowIndex(IIZ)I
    .locals 1

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    .line 178
    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getFirstWindowIndex(Z)I

    move-result p1

    goto :goto_0

    .line 179
    :cond_0
    nop

    .line 178
    :goto_0
    return p1
.end method

.method public final getPreviousWindowIndex(IIZ)I
    .locals 1

    .line 185
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    .line 187
    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getLastWindowIndex(Z)I

    move-result p1

    goto :goto_0

    .line 188
    :cond_0
    nop

    .line 187
    :goto_0
    return p1
.end method
