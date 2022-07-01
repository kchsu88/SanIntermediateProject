.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;


# instance fields
.field private callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

.field private final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

.field public final periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 47
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 49
    const/4 p2, 0x0

    new-array p2, p2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    .line 50
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    .line 51
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 52
    return-void
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 4

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 157
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 158
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return v1

    .line 162
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public final discardBuffer(JZ)V
    .locals 4

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    invoke-interface {v3, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J
    .locals 2

    .line 211
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    .line 194
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    .line 168
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public final onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    .line 242
    return-void
.end method

.method public final bridge synthetic onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 30
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public final onPrepared(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 10

    .line 218
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    nop

    .line 223
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 224
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    iget v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v3, v4

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    new-array p1, v3, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    .line 227
    nop

    .line 228
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 229
    invoke-interface {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    .line 230
    iget v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    .line 231
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    .line 232
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v9

    aput-object v9, p1, v4

    .line 231
    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    .line 228
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_3
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 236
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 237
    return-void
.end method

.method public final prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 3

    .line 56
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    .line 57
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 59
    invoke-interface {v2, p0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 9

    .line 173
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 175
    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_1

    .line 176
    aget-object v4, v4, v0

    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 183
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 184
    invoke-interface {v6, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    goto :goto_2

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected child seekToUs result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 189
    :cond_4
    return-wide v2
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    .line 149
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 150
    return-void
.end method

.method public final seekToUs(J)J
    .locals 4

    .line 199
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 201
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 202
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    return-wide p1
.end method

.method public final selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 80
    array-length v4, v1

    new-array v4, v4, [I

    .line 81
    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 82
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    .line 83
    :cond_0
    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 84
    aput v8, v4, v6

    .line 85
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 86
    aget-object v7, v1, v6

    invoke-interface {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 87
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 88
    aget-object v10, v10, v9

    invoke-interface {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->indexOf(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 89
    aput v9, v4, v6

    .line 90
    goto :goto_3

    .line 87
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 81
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_3
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 97
    array-length v6, v1

    new-array v7, v6, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 98
    array-length v8, v1

    new-array v8, v8, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 99
    array-length v9, v1

    new-array v14, v9, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    .line 100
    new-instance v15, Ljava/util/ArrayList;

    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v9, v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    move-wide/from16 v16, p5

    const/4 v13, 0x0

    :goto_4
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    array-length v9, v9

    if-ge v13, v9, :cond_f

    .line 102
    const/4 v9, 0x0

    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 103
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    .line 104
    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    .line 102
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 106
    :cond_6
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    aget-object v9, v9, v13

    move-object v10, v14

    move-object/from16 v11, p2

    move-object v12, v8

    move v5, v13

    move-object/from16 v13, p4

    move-object/from16 v18, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-interface/range {v9 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v9

    .line 108
    if-nez v5, :cond_7

    .line 109
    move-wide/from16 v16, v9

    goto :goto_7

    .line 110
    :cond_7
    cmp-long v11, v9, v16

    if-nez v11, :cond_e

    .line 113
    :goto_7
    nop

    .line 114
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    array-length v11, v1

    if-ge v9, v11, :cond_c

    .line 115
    aget v11, v4, v9

    const/4 v12, 0x1

    if-ne v11, v5, :cond_9

    .line 117
    aget-object v10, v8, v9

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_9

    :cond_8
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 118
    aget-object v10, v8, v9

    aput-object v10, v7, v9

    .line 119
    nop

    .line 120
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v11, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_b

    .line 121
    :cond_9
    aget v11, v3, v9

    if-ne v11, v5, :cond_b

    .line 123
    aget-object v11, v8, v9

    if-nez v11, :cond_a

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    invoke-static {v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 114
    :cond_b
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 126
    :cond_c
    if-eqz v10, :cond_d

    .line 127
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->periods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    aget-object v9, v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_d
    add-int/lit8 v13, v5, 0x1

    move-object v15, v2

    move-object/from16 v14, v18

    move-object/from16 v2, p3

    goto/16 :goto_4

    .line 111
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_f
    move-object v2, v15

    move-object/from16 v1, p3

    const/4 v3, 0x0

    invoke-static {v7, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 134
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 136
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;

    .line 137
    return-wide v16
.end method
