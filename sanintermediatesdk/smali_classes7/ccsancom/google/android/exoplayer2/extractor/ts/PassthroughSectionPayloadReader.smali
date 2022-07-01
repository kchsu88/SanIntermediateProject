.class public final Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;
.super Ljava/lang/Object;
.source "PassthroughSectionPayloadReader.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;


# instance fields
.field private format:Lccsancom/google/android/exoplayer2/Format;

.field private output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

.field private timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lccsancom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Format$Builder;->build()Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 47
    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "timestampAdjuster",
            "output"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 12
    .param p1, "sectionData"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 64
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->assertInitialized()V

    .line 65
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v8

    .line 66
    .local v8, "sampleTimestampUs":J
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v10

    .line 67
    .local v10, "subsampleOffsetUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v0

    if-eqz v2, :cond_2

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-wide v0, v0, Lccsancom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v2, v10, v0

    if-eqz v2, :cond_1

    .line 72
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lccsancom/google/android/exoplayer2/Format;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Format;->buildUpon()Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Format$Builder;->build()Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 73
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->format(Lccsancom/google/android/exoplayer2/Format;)V

    .line 75
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 76
    .local v0, "sampleSize":I
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 77
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v8

    move v5, v0

    invoke-interface/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 78
    return-void

    .line 69
    .end local v0    # "sampleSize":I
    :cond_2
    :goto_0
    return-void
.end method

.method public init(Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "timestampAdjuster"    # Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 54
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 55
    invoke-virtual {p3}, Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 56
    invoke-virtual {p3}, Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p2, v0, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 59
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lccsancom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->format(Lccsancom/google/android/exoplayer2/Format;)V

    .line 60
    return-void
.end method
