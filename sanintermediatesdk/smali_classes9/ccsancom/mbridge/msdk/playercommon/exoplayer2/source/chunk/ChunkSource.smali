.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J
.end method

.method public abstract getNextChunk(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/MediaChunk;JJLccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkHolder;)V
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/MediaChunk;",
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

.method public abstract onChunkLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
.end method
