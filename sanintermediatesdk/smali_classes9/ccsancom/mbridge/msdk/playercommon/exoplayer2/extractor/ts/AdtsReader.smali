.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x2

.field private static final STATE_READING_ID3_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdtsReader"


# instance fields
.field private final adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

.field private bytesRead:I

.field private currentOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private formatId:Ljava/lang/String;

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private id3Output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 100
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 101
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 102
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    .line 103
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 171
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 173
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 174
    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findNextSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 229
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 230
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 232
    :goto_0
    if-ge v1, v2, :cond_3

    .line 233
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 234
    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    const/16 v6, 0x200

    if-ne v5, v6, :cond_1

    const/16 v7, 0xf0

    if-lt v1, v7, :cond_1

    if-eq v1, v4, :cond_1

    .line 235
    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    .line 236
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 237
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 238
    return-void

    .line 240
    :cond_1
    or-int/2addr v1, v5

    sparse-switch v1, :sswitch_data_0

    .line 255
    const/16 v1, 0x100

    if-eq v5, v1, :cond_2

    .line 258
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 259
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_3

    .line 251
    :sswitch_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 252
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 253
    return-void

    .line 248
    :sswitch_1
    const/16 v1, 0x400

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 249
    goto :goto_2

    .line 242
    :sswitch_2
    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 243
    goto :goto_2

    .line 245
    :sswitch_3
    const/16 v1, 0x300

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 263
    :cond_2
    :goto_2
    move v1, v3

    :goto_3
    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 265
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_3
        0x1ff -> :sswitch_2
        0x344 -> :sswitch_1
        0x433 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAdtsHeader()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 281
    move-object/from16 v6, p0

    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 283
    iget-boolean v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 284
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 285
    if-eq v0, v2, :cond_0

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x2

    .line 299
    :cond_0
    iget-object v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 300
    iget-object v5, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 301
    iget-object v5, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 303
    invoke-static {v0, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v0

    .line 305
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Lccsanandroid/util/Pair;

    move-result-object v4

    .line 308
    iget-object v7, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 309
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 310
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 308
    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    invoke-static/range {v7 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    .line 313
    const-wide/32 v4, 0x3d090000

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 314
    iget-object v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 315
    iput-boolean v3, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 316
    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 320
    :goto_0
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 321
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x5

    .line 322
    iget-boolean v1, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_2

    .line 323
    add-int/lit8 v0, v0, -0x2

    move v5, v0

    goto :goto_1

    .line 322
    :cond_2
    move v5, v0

    .line 326
    :goto_1
    iget-object v1, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v2, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;JII)V

    .line 327
    return-void
.end method

.method private parseId3Header()V
    .locals 9

    .line 271
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 272
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 273
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 274
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    .line 273
    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;JII)V

    .line 275
    return-void
.end method

.method private readSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 7

    .line 333
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 334
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 335
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 336
    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    if-ne p1, v4, :cond_0

    .line 337
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 338
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 339
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 341
    :cond_0
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 182
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 183
    const/16 v0, 0x100

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 184
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    .line 218
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 220
    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 192
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 194
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 195
    return-void
.end method

.method private setReadingSampleState(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;JII)V
    .locals 1

    .line 207
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 208
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 209
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 210
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 211
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 212
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 133
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 134
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 150
    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->readSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    goto :goto_2

    .line 144
    :pswitch_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    .line 145
    :goto_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_2

    .line 139
    :pswitch_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_2

    .line 136
    :pswitch_3
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->findNextSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 137
    nop

    .line 151
    :cond_1
    :goto_2
    goto :goto_0

    .line 154
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 3

    .line 113
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 114
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 115
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 116
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 118
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 119
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 124
    :goto_0
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    .line 159
    return-void
.end method

.method public final packetStarted(JZ)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 129
    return-void
.end method

.method public final seek()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 109
    return-void
.end method
