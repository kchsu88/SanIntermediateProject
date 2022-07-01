.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field private blockFlags:I

.field private chunkSize:I

.field private foundSyncframe:Z

.field private sampleCount:I

.field private final syncframePrefix:[B

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    .line 1552
    return-void
.end method


# virtual methods
.method public final outputPendingSampleMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 8

    .line 1594
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    if-lez v0, :cond_0

    .line 1595
    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->timeUs:J

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->blockFlags:I

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    const/4 v6, 0x0

    iget-object v7, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1596
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    .line 1598
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 1556
    return-void
.end method

.method public final sampleMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 9

    .line 1578
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_0

    .line 1579
    return-void

    .line 1581
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    if-nez v0, :cond_1

    .line 1583
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->timeUs:J

    .line 1585
    :cond_1
    const/16 p2, 0x10

    if-ge v1, p2, :cond_2

    .line 1587
    return-void

    .line 1589
    :cond_2
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->timeUs:J

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->blockFlags:I

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    const/4 v7, 0x0

    iget-object v8, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1590
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    .line 1591
    return-void
.end method

.method public final startSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1560
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1561
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 1562
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1563
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount([B)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1564
    return-void

    .line 1566
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 1567
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    .line 1569
    :cond_1
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleCount:I

    if-nez p1, :cond_2

    .line 1571
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->blockFlags:I

    .line 1572
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    .line 1574
    :cond_2
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    .line 1575
    return-void
.end method
