.class public interface abstract Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createProgressiveMediaExtractor(ILccsancom/google/android/exoplayer2/Format;ZLjava/util/List;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/google/android/exoplayer2/Format;",
            "Z",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/Format;",
            ">;",
            "Lccsancom/google/android/exoplayer2/extractor/TrackOutput;",
            ")",
            "Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;"
        }
    .end annotation
.end method
