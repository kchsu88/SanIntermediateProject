.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;


# instance fields
.field private baseElapsedMs:J

.field private baseUs:J

.field private final clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

.field private playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

.field private started:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    .line 41
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 42
    return-void
.end method


# virtual methods
.method public final getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public final getPositionUs()J
    .locals 6

    .line 78
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    .line 79
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    sub-long/2addr v2, v4

    .line 81
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    iget v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 82
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 84
    :cond_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-virtual {v4, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->getMediaTimeUsForPlayoutTimeMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 87
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public final resetPosition(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    .line 71
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    .line 74
    :cond_0
    return-void
.end method

.method public final setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 2

    .line 93
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 96
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 97
    return-object p1
.end method

.method public final start()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    .line 52
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->started:Z

    .line 62
    :cond_0
    return-void
.end method
