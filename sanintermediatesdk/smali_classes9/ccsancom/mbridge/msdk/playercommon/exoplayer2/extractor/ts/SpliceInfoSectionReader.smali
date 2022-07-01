.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionPayloadReader;


# instance fields
.field private formatDeclared:Z

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 47
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 53
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    .line 52
    const-string v4, "application/x-scte35"

    invoke-static {v1, v4, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    .line 56
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 58
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 60
    return-void
.end method

.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 39
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 40
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 41
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 43
    return-void
.end method
