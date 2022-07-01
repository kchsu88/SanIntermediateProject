.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;


# instance fields
.field private configuration:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

.field private index:I

.field private readEndOfStream:Z

.field private state:I

.field private stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

.field private streamFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->trackType:I

    .line 49
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 50
    return-void
.end method

.method protected static supportsFormatDrm(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "*>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    .line 334
    if-nez p1, :cond_0

    .line 336
    const/4 p0, 0x1

    return p0

    .line 337
    :cond_0
    if-nez p0, :cond_1

    .line 339
    const/4 p0, 0x0

    return p0

    .line 341
    :cond_1
    invoke-interface {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->canAcquireSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .line 148
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 149
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 151
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 152
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 153
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onDisabled()V

    .line 154
    return-void
.end method

.method public final enable(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->configuration:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    .line 83
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    .line 84
    invoke-virtual {p0, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onEnabled(Z)V

    .line 85
    invoke-virtual {p0, p2, p3, p7, p8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->replaceStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;J)V

    .line 86
    invoke-virtual {p0, p4, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 87
    return-void
.end method

.method public final getCapabilities()Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;
    .locals 0

    .line 59
    return-object p0
.end method

.method protected final getConfiguration()Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;
    .locals 1

    .line 261
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->configuration:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 268
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MediaClock;
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 74
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;
    .locals 1

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method protected final getStreamFormats()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 1

    .line 254
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 54
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->readEndOfStream:Z

    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->readEndOfStream:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 130
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .line 248
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 217
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 228
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method protected onStreamChanged([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 199
    return-void
.end method

.method protected final readSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 5

    .line 288
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;->readData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    .line 289
    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 290
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 292
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 294
    :cond_1
    iget-wide v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    goto :goto_1

    .line 295
    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 296
    iget-object p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 297
    iget-wide v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 298
    iget-wide v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    .line 299
    iput-object p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 302
    :cond_3
    :goto_1
    return p3
.end method

.method public final replaceStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 100
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 101
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 102
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 103
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamOffsetUs:J

    .line 104
    invoke-virtual {p0, p1, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onStreamChanged([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;J)V

    .line 105
    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 135
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 136
    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 137
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 120
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 64
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->index:I

    .line 65
    return-void
.end method

.method protected skipSource(J)I
    .locals 3

    .line 313
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->stream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    .line 93
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onStarted()V

    .line 94
    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 142
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->state:I

    .line 143
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;->onStopped()V

    .line 144
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    return v0
.end method
