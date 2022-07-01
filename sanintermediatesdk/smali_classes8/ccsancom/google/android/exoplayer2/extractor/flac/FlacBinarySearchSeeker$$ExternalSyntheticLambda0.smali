.class public final synthetic Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
