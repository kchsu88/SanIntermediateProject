.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

.field endUs:J

.field public final mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

.field private pendingInitialDiscontinuityPositionUs:J

.field private sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

.field startUs:J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;ZJJ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 63
    const/4 p1, 0x0

    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 64
    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 65
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 66
    iput-wide p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 67
    return-void
.end method

.method private clipSeekParameters(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;
    .locals 9

    .line 225
    iget-wide v0, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, p1, v2

    .line 226
    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 228
    iget-wide v2, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    .line 232
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    move-wide v6, v4

    .line 229
    :goto_0
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    .line 233
    iget-wide v2, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v2, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 235
    return-object p3

    .line 237
    :cond_1
    new-instance p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    invoke-direct {p3, v0, v1, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;-><init>(JJ)V

    return-object p3
.end method

.method private static shouldKeepInitialDiscontinuity(J[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;)Z
    .locals 4

    .line 251
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 252
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v1, p2, p1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    .line 255
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const/4 p0, 0x1

    return p0

    .line 252
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return v0
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public final discardBuffer(JZ)V
    .locals 1

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 133
    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J
    .locals 3

    .line 185
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 187
    return-wide v0

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->clipSeekParameters(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    move-result-object p3

    .line 190
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getBufferedPositionUs()J
    .locals 7

    .line 160
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 161
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    return-wide v0

    .line 163
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getNextLoadPositionUs()J
    .locals 7

    .line 195
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    .line 196
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    return-wide v0

    .line 198
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method final isPendingInitialDiscontinuity()Z
    .locals 5

    .line 221
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 90
    return-void
.end method

.method public final onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    .line 218
    return-void
.end method

.method public final bridge synthetic onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 33
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public final onPrepared(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 213
    return-void
.end method

.method public final prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 83
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    .line 84
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 85
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 9

    .line 142
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 143
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 144
    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 146
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    .line 147
    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    .line 149
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    .line 150
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 151
    return-wide v1

    .line 153
    :cond_2
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 154
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 155
    return-wide v3
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 138
    return-void
.end method

.method public final seekToUs(J)J
    .locals 6

    .line 170
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 172
    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    .line 171
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    .line 177
    cmp-long v3, v0, p1

    if-eqz v3, :cond_2

    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 180
    return-wide v0
.end method

.method public final selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J
    .locals 12

    .line 100
    move-object v0, p0

    move-object v1, p3

    array-length v2, v1

    new-array v2, v2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 101
    array-length v2, v1

    new-array v9, v2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 102
    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    .line 103
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v1, v2

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v4, v3, v2

    .line 104
    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    iget-object v11, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    :cond_0
    aput-object v11, v9, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 107
    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v2

    .line 109
    nop

    .line 112
    nop

    .line 110
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_2

    .line 112
    move-object v6, p1

    invoke-static {v4, v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity(J[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    move-wide v4, v2

    goto :goto_1

    .line 114
    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 115
    cmp-long v4, v2, p5

    if-eqz v4, :cond_4

    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 119
    nop

    :goto_4
    array-length v4, v1

    if-ge v10, v4, :cond_8

    .line 120
    aget-object v4, v9, v10

    if-nez v4, :cond_5

    .line 121
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v11, v4, v10

    goto :goto_5

    .line 122
    :cond_5
    aget-object v4, v1, v10

    if-eqz v4, :cond_6

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v10

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    aget-object v5, v9, v10

    if-eq v4, v5, :cond_7

    .line 123
    :cond_6
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;)V

    aput-object v5, v4, v10

    .line 125
    :cond_7
    :goto_5
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    .line 119
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 127
    :cond_8
    return-wide v2
.end method

.method public final updateClipping(JJ)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 78
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 79
    return-void
.end method
