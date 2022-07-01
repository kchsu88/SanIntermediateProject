.class public interface abstract Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TimestampSeeker"
.end annotation


# virtual methods
.method public abstract onSeekFinished()V
.end method

.method public abstract searchForTimestamp(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;J)Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
