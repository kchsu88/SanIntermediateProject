.class public final Lccsancom/google/android/exoplayer2/extractor/DummyExtractorOutput;
.super Ljava/lang/Object;
.source "DummyExtractorOutput.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    .line 29
    return-void
.end method

.method public seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    .line 34
    return-void
.end method

.method public track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 23
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object v0
.end method
