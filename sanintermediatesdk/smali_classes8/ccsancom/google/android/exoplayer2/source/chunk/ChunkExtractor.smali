.class public interface abstract Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;,
        Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;
    }
.end annotation


# virtual methods
.method public abstract getChunkIndex()Lccsancom/google/android/exoplayer2/extractor/ChunkIndex;
.end method

.method public abstract getSampleFormats()[Lccsancom/google/android/exoplayer2/Format;
.end method

.method public abstract init(Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
.end method

.method public abstract read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method
