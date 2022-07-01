.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_ULAW:I = 0x8

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final parseHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 59
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 60
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 61
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    .line 62
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 63
    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    .line 64
    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v10, v3, v1

    .line 65
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "audio/mpeg"

    invoke-static/range {v4 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    .line 67
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 68
    iput-boolean v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 69
    goto :goto_4

    :cond_0
    const/4 v6, 0x7

    if-eq v3, v6, :cond_3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    const/16 v1, 0xa

    if-ne v3, v1, :cond_2

    :goto_0
    goto :goto_4

    .line 78
    :cond_2
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_3
    :goto_1
    if-ne v3, v6, :cond_4

    const-string v3, "audio/g711-alaw"

    move-object v7, v3

    goto :goto_2

    .line 71
    :cond_4
    const-string v3, "audio/g711-mlaw"

    move-object v7, v3

    .line 72
    :goto_2
    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v13, 0x2

    goto :goto_3

    :cond_5
    const/4 v13, 0x3

    .line 73
    :goto_3
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    .line 75
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 76
    iput-boolean v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_0

    .line 80
    :goto_4
    iput-boolean v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    .line 81
    goto :goto_5

    .line 83
    :cond_6
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 85
    :goto_5
    return v2
.end method

.method protected final parsePayload(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 91
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 92
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 93
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v5, p2

    invoke-interface/range {v4 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 94
    goto :goto_2

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 96
    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v4, :cond_1

    .line 98
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v4, v2, [B

    .line 99
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 100
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 102
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    iget-object v2, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 104
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 102
    const-string v6, "audio/mp4a-latm"

    invoke-static/range {v5 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    .line 105
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 106
    iput-boolean v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_0

    .line 107
    :cond_1
    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    .line 109
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 110
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v7, p2

    invoke-interface/range {v6 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 113
    :goto_2
    return-void
.end method

.method public final seek()V
    .locals 0

    .line 55
    return-void
.end method
