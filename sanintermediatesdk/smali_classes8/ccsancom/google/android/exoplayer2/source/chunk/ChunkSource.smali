.class public interface abstract Lccsancom/google/android/exoplayer2/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract getAdjustedSeekPositionUs(JLccsancom/google/android/exoplayer2/SeekParameters;)J
.end method

.method public abstract getNextChunk(JJLjava/util/List;Lccsancom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lccsancom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;",
            "Lccsancom/google/android/exoplayer2/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lccsancom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Lccsancom/google/android/exoplayer2/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lccsancom/google/android/exoplayer2/source/chunk/Chunk;ZLccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Z
.end method

.method public abstract release()V
.end method

.method public abstract shouldCancelLoad(JLccsancom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lccsancom/google/android/exoplayer2/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lccsancom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation
.end method
