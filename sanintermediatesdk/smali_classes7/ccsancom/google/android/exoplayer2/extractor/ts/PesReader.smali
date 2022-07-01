.class public final Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 2
    .param p1, "reader"    # Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 63
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 65
    return-void
.end method

.method private continueRead(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 175
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    .local v0, "bytesToRead":I
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 177
    return v1

    .line 178
    :cond_0
    if-nez p2, :cond_1

    .line 179
    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 183
    :goto_0
    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 184
    if-ne v2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 8

    .line 190
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 191
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 192
    .local v0, "startCodePrefix":I
    const-string v2, "PesReader"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v3, :cond_0

    .line 193
    const/16 v3, 0x29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 195
    return v1

    .line 198
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 199
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 200
    .local v1, "packetLength":I
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 201
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 202
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 203
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 204
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 207
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 208
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v5}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 210
    if-nez v1, :cond_1

    .line 211
    iput v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    .line 213
    :cond_1
    add-int/lit8 v6, v1, 0x6

    add-int/lit8 v6, v6, -0x9

    sub-int/2addr v6, v5

    iput v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 218
    if-gez v6, :cond_2

    .line 219
    const/16 v5, 0x2f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Found negative packet payload size: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 223
    :cond_2
    :goto_0
    return v3
.end method

.method private parseHeaderExtension()V
    .locals 10
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "timestampAdjuster"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 229
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 230
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 232
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 233
    .local v3, "pts":J
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 234
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 235
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 236
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 237
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 238
    iget-boolean v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 239
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 240
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 241
    .local v0, "dts":J
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 242
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 243
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 244
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 245
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 251
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 252
    iput-boolean v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 254
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 256
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 160
    iput p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 162
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 91
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    const-string v3, "PesReader"

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104
    :pswitch_0
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_0

    .line 105
    const/16 v4, 0x3b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected start indicator: expected "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 109
    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v3, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_0

    .line 95
    :pswitch_2
    nop

    .line 113
    :goto_0
    invoke-direct {p0, v2}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 116
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_6

    .line 117
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 138
    :pswitch_3
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 139
    .local v0, "readLength":I
    iget v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v4, v1, :cond_2

    goto :goto_2

    :cond_2
    sub-int v3, v0, v4

    .line 140
    .local v3, "padding":I
    :goto_2
    if-lez v3, :cond_3

    .line 141
    sub-int/2addr v0, v3

    .line 142
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 144
    :cond_3
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v4, p1}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 145
    iget v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v4, v1, :cond_1

    .line 146
    sub-int/2addr v4, v0

    iput v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 147
    if-nez v4, :cond_1

    .line 148
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v4}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 149
    invoke-direct {p0, v2}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 127
    .end local v0    # "readLength":I
    .end local v3    # "padding":I
    :pswitch_4
    const/16 v0, 0xa

    iget v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    .restart local v0    # "readLength":I
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v4, v4, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v0}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iget v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 130
    invoke-direct {p0, p1, v4, v5}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 132
    iget-boolean v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v4, :cond_4

    const/4 v3, 0x4

    :cond_4
    or-int/2addr p2, v3

    .line 133
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v3, v4, v5, p2}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 134
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 122
    .end local v0    # "readLength":I
    :pswitch_5
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v4, 0x9

    invoke-direct {p0, p1, v0, v4}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    :cond_5
    invoke-direct {p0, v3}, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    .line 119
    :pswitch_6
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 120
    goto/16 :goto_1

    .line 157
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public init(Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 72
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 73
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p2, p3}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 74
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 81
    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 82
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 83
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    .line 84
    return-void
.end method
