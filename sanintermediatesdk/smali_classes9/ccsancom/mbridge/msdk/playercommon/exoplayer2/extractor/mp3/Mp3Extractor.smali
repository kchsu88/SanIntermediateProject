.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x2

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field private static final MAX_SNIFF_BYTES:I = 0x4000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I

.field private static final SEEK_HEADER_UNSET:I

.field private static final SEEK_HEADER_VBRI:I

.field private static final SEEK_HEADER_XING:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

.field private final id3Peeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Id3Peeker;

.field private metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 93
    const-string v0, "Xing"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_XING:I

    .line 94
    const-string v0, "Info"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_INFO:I

    .line 95
    const-string v0, "VBRI"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_VBRI:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 119
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 125
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 126
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    .line 135
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 136
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 137
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    .line 138
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    .line 139
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 140
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Id3Peeker;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Id3Peeker;

    .line 141
    return-void
.end method

.method private getConstantBitrateSeeker(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 374
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 375
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;)Z

    .line 376
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;)V

    return-object v0
.end method

.method private static getSeekFrameHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I
    .locals 2

    .line 392
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 393
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 394
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 395
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_XING:I

    if-eq p1, v0, :cond_0

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_INFO:I

    if-ne p1, v0, :cond_1

    .line 396
    :cond_0
    return p1

    .line 399
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    .line 400
    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 401
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    sget p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_VBRI:I

    if-ne p0, p1, :cond_2

    .line 402
    return p1

    .line 405
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static headersMatch(IJ)Z
    .locals 4

    .line 383
    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeReadSeekFrame(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 335
    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-direct {v5, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 336
    iget-object v0, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 337
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->version:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->channels:I

    if-eq v0, v1, :cond_0

    const/16 v2, 0x24

    const/16 v7, 0x24

    goto :goto_0

    :cond_0
    const/16 v7, 0x15

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->channels:I

    if-eq v0, v1, :cond_2

    const/16 v7, 0x15

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    const/16 v7, 0xd

    .line 340
    :goto_0
    invoke-static {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I

    move-result v8

    .line 342
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_XING:I

    if-eq v8, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_INFO:I

    if-ne v8, v0, :cond_3

    goto :goto_1

    .line 357
    :cond_3
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_VBRI:I

    if-ne v8, v0, :cond_4

    .line 358
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->create(JJLccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2

    .line 362
    :cond_4
    const/4 v0, 0x0

    .line 363
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2

    .line 343
    :cond_5
    :goto_1
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/XingSeeker;->create(JJLccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/XingSeeker;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_6

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-nez v1, :cond_6

    .line 346
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 347
    add-int/lit16 v7, v7, 0x8d

    invoke-interface {p1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 348
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 349
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 350
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    .line 352
    :cond_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 353
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->SEEK_HEADER_INFO:I

    if-ne v8, v1, :cond_7

    .line 355
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object p1

    return-object p1

    .line 365
    :cond_7
    :goto_2
    return-object v0
.end method

.method private readSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 211
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 212
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 213
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x4

    invoke-interface {p1, v0, v3, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    return v2

    .line 216
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 217
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 218
    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;)Z

    .line 226
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 228
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 230
    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 233
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    goto :goto_1

    .line 221
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 222
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 223
    return v3

    .line 235
    :cond_4
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    .line 236
    if-ne p1, v2, :cond_5

    .line 237
    return v2

    .line 239
    :cond_5
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 240
    if-lez v0, :cond_6

    .line 241
    return v3

    .line 243
    :cond_6
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v6, p1

    div-long/2addr v4, v6

    add-long v7, v0, v4

    .line 244
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v9, 0x1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v10, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 246
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 247
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 248
    return v3
.end method

.method private synchronize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 258
    :goto_0
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 259
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_5

    .line 262
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 264
    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_INFO_ID3_FRAME_PREDICATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 265
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Id3Peeker;

    invoke-virtual {v2, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Id3Peeker;->peekId3Data(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 266
    if-eqz v1, :cond_3

    .line 267
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)Z

    .line 269
    :cond_3
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 270
    if-nez p2, :cond_4

    .line 271
    invoke-interface {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 275
    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    .line 259
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 275
    :goto_3
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    if-lez v1, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x4

    invoke-interface {p1, v7, v6, v9, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v7

    if-nez v7, :cond_7

    .line 277
    goto :goto_6

    .line 279
    :cond_7
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 280
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 282
    if-eqz v3, :cond_8

    int-to-long v10, v3

    .line 283
    invoke-static {v7, v10, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 284
    :cond_8
    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_d

    .line 286
    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    .line 287
    if-eqz p2, :cond_a

    .line 290
    return v6

    .line 288
    :cond_a
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_b
    nop

    .line 293
    nop

    .line 294
    if-eqz p2, :cond_c

    .line 295
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 296
    add-int v3, v2, v1

    invoke-interface {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_5

    .line 298
    :cond_c
    invoke-interface {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 311
    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_9

    .line 302
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 303
    if-ne v1, v5, :cond_e

    .line 304
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v7, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;)Z

    .line 305
    move v3, v7

    goto :goto_8

    .line 306
    :cond_e
    if-ne v1, v9, :cond_10

    .line 307
    nop

    .line 313
    :goto_6
    if-eqz p2, :cond_f

    .line 314
    add-int/2addr v2, v4

    invoke-interface {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_7

    .line 316
    :cond_f
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 318
    :goto_7
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 319
    return v5

    .line 309
    :cond_10
    :goto_8
    add-int/lit8 v8, v8, -0x4

    invoke-interface {p1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 311
    :goto_9
    goto :goto_3
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 152
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 154
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 155
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    move-object/from16 v1, p0

    iget v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const/4 v0, -0x1

    return v0

    .line 173
    :cond_0
    move-object/from16 v2, p1

    .line 180
    :goto_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v0, :cond_4

    .line 181
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    .line 182
    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 184
    :cond_1
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    .line 186
    :cond_2
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget-object v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 187
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v3, 0x0

    iget-object v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    iget-object v8, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->channels:I

    iget-object v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    const/4 v10, -0x1

    iget-object v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    iget v11, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    iget-object v12, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;

    iget v12, v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 203
    iget v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    iget-object v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    :goto_1
    move-object/from16 v17, v15

    .line 188
    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v3

    .line 187
    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 205
    :cond_4
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->readSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .line 168
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 159
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 160
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 161
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 162
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 163
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p1

    return p1
.end method