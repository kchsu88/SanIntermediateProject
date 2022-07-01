.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;


# instance fields
.field private configuration:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .line 153
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 154
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 156
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 157
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onDisabled()V

    .line 158
    return-void
.end method

.method public final enable(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 80
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->configuration:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    .line 81
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    .line 82
    invoke-virtual {p0, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onEnabled(Z)V

    .line 83
    invoke-virtual {p0, p2, p3, p7, p8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->replaceStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;J)V

    .line 84
    invoke-virtual {p0, p4, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onPositionReset(JZ)V

    .line 85
    return-void
.end method

.method public final getCapabilities()Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;
    .locals 0

    .line 42
    return-object p0
.end method

.method protected final getConfiguration()Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;
    .locals 1

    .line 268
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->configuration:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 275
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 57
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;
    .locals 1

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 37
    const/4 v0, 0x5

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .line 260
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 229
    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 214
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 240
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 251
    return-void
.end method

.method public final replaceStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 109
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 110
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 111
    invoke-virtual {p0, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onRendererOffsetChanged(J)V

    .line 112
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onPositionReset(JZ)V

    .line 142
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 127
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 47
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->index:I

    .line 48
    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    .line 91
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onStarted()V

    .line 92
    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 146
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 147
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->state:I

    .line 148
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/NoSampleRenderer;->onStopped()V

    .line 149
    return-void
.end method

.method public supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 174
    const/4 p1, 0x0

    return p1
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return v0
.end method
