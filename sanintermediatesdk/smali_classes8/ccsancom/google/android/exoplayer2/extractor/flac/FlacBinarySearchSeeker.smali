.class final Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;
.super Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;IJJ)V
    .locals 18
    .param p1, "flacStreamMetadata"    # Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "frameStartMarker"    # I
    .param p3, "firstFramePosition"    # J
    .param p5, "inputLength"    # J

    .line 50
    move-object/from16 v0, p1

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V

    new-instance v3, Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v1, 0x0

    move/from16 v14, p2

    invoke-direct {v3, v0, v14, v1}, Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v4

    iget-wide v8, v0, Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 58
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v15

    iget v1, v0, Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 59
    const/4 v6, 0x6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 50
    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide v14, v15

    move/from16 v16, v17

    invoke-direct/range {v1 .. v16}, Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker;-><init>(Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    .line 61
    return-void
.end method
