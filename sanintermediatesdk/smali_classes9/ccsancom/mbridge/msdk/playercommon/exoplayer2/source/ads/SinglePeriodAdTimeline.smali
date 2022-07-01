.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/SinglePeriodAdTimeline;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;
.source "SinglePeriodAdTimeline.java"


# instance fields
.field private final adPlaybackState:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 39
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 40
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 41
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;

    .line 42
    return-void
.end method


# virtual methods
.method public final getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
    .locals 10

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/SinglePeriodAdTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 47
    iget-object v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v3, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget v4, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    iget-wide v5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->durationUs:J

    .line 52
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v7

    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;

    .line 47
    move-object v1, p2

    invoke-virtual/range {v1 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 54
    return-object p2
.end method

.method public final getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    .locals 1

    .line 60
    invoke-super/range {p0 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object p1

    .line 61
    iget-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->durationUs:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 62
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;

    iget-wide p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iput-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->durationUs:J

    .line 64
    :cond_0
    return-object p1
.end method