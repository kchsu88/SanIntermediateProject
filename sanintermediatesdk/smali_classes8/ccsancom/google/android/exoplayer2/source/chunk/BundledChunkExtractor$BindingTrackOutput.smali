.class final Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field private endTimeUs:J

.field private final fakeTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

.field private final id:I

.field private final manifestFormat:Lccsancom/google/android/exoplayer2/Format;

.field public sampleFormat:Lccsancom/google/android/exoplayer2/Format;

.field private trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

.field private final type:I


# direct methods
.method public constructor <init>(IILccsancom/google/android/exoplayer2/Format;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "manifestFormat"    # Lccsancom/google/android/exoplayer2/Format;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    .line 204
    iput p2, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    .line 205
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lccsancom/google/android/exoplayer2/Format;

    .line 206
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    .line 207
    return-void
.end method


# virtual methods
.method public bind(Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;J)V
    .locals 2
    .param p1, "trackOutputProvider"    # Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .param p2, "endTimeUs"    # J

    .line 210
    if-nez p1, :cond_0

    .line 211
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 212
    return-void

    .line 214
    :cond_0
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    .line 215
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    iget v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    invoke-interface {p1, v0, v1}, Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 216
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lccsancom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->format(Lccsancom/google/android/exoplayer2/Format;)V

    .line 219
    :cond_1
    return-void
.end method

.method public format(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 223
    nop

    .line 224
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lccsancom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lccsancom/google/android/exoplayer2/Format;

    .line 225
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->format(Lccsancom/google/android/exoplayer2/Format;)V

    .line 226
    return-void
.end method

.method public synthetic sampleData(Lccsancom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Lccsancom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .locals 1
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v0

    return v0
.end method

.method public synthetic sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;II)V
    .locals 1
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 237
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 238
    return-void
.end method

.method public sampleMetadata(JIIILccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 8
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Lccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 247
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 248
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 250
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 251
    return-void
.end method
