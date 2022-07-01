.class Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput$1;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 1
    .param p1, "seekMap"    # Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
