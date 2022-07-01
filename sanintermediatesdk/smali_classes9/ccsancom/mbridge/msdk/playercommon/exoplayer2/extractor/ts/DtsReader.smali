.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x12

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 65
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 135
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 136
    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseHeader()V
    .locals 5

    .line 167
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 168
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 170
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 172
    :cond_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    .line 175
    const-wide/32 v1, 0xf4240

    .line 176
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 177
    return-void
.end method

.method private skipToNextSync(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    .line 147
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 148
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 149
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 150
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->isSyncWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 152
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p1, v2

    .line 153
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x2

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 154
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x3

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 155
    const/4 p1, 0x4

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 156
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 157
    return v2

    .line 160
    :cond_1
    return v1
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 10

    .line 89
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 90
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 107
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 108
    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    if-ne v2, v7, :cond_0

    .line 109
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 110
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 111
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_1

    .line 97
    :pswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->parseHeader()V

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->skipToNextSync(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 113
    :cond_0
    :goto_1
    goto :goto_0

    .line 116
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 77
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 78
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 80
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    .line 121
    return-void
.end method

.method public final packetStarted(JZ)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 85
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 71
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 72
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 73
    return-void
.end method
