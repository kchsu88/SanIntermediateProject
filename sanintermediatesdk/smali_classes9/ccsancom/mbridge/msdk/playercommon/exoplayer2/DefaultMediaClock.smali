.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
    }
.end annotation


# instance fields
.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

.field private rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

.field private rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    .line 59
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    .line 60
    return-void
.end method

.method private ensureSynced()V
    .locals 3

    .line 160
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 165
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 167
    :cond_0
    return-void
.end method

.method private isUsingRendererClock()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 175
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0
.end method


# virtual methods
.method public final getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 155
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0
.end method

.method public final getPositionUs()J
    .locals 2

    .line 136
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->isUsingRendererClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onRendererDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    if-ne p1, v0, :cond_0

    .line 115
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    .line 116
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 118
    :cond_0
    return-void
.end method

.method public final onRendererEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getMediaClock()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    if-eq v0, v1, :cond_1

    .line 96
    if-nez v1, :cond_0

    .line 100
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    .line 101
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClockSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 102
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 103
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->ensureSynced()V

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 83
    return-void
.end method

.method public final setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 145
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 148
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 149
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 150
    return-object p1
.end method

.method public final start()V
    .locals 1

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 67
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 74
    return-void
.end method

.method public final syncAndGetPositionUs()J
    .locals 2

    .line 124
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->isUsingRendererClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->ensureSynced()V

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->rendererClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    .line 128
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method