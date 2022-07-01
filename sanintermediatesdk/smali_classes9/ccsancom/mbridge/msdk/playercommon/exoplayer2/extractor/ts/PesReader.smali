.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;


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

.field private final pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 59
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 60
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->state:I

    .line 61
    return-void
.end method

.method private continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3

    .line 162
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 164
    return v1

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 170
    :goto_0
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 171
    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 6

    .line 177
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 178
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 179
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start code prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PesReader"

    invoke-static {v3, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 182
    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 187
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 188
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 189
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 190
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 191
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 194
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 195
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 197
    if-nez v0, :cond_1

    .line 198
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    .line 200
    :cond_1
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 203
    :goto_0
    return v3
.end method

.method private parseHeaderExtension()V
    .locals 10

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 208
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 209
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 211
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 212
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 213
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 214
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 215
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 216
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 217
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 219
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 220
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 221
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 222
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 223
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 224
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 230
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 231
    iput-boolean v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 233
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 235
    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 0

    .line 148
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->state:I

    .line 149
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 150
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 84
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->state:I

    const-string v2, "PesReader"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq p2, v1, :cond_0

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start indicator: expected "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " more bytes"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    .line 90
    :pswitch_1
    const-string p2, "Unexpected start indicator reading extended header"

    invoke-static {v2, p2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_0

    .line 88
    :pswitch_2
    nop

    .line 104
    :goto_0
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 107
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lez p2, :cond_6

    .line 108
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->state:I

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_3

    .line 128
    :pswitch_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    .line 129
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    sub-int v2, p2, v3

    .line 130
    :goto_2
    if-lez v2, :cond_3

    .line 131
    sub-int/2addr p2, v2

    .line 132
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 134
    :cond_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 135
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v2, v1, :cond_5

    .line 136
    sub-int/2addr v2, p2

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 137
    if-nez v2, :cond_5

    .line 138
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 139
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_3

    .line 118
    :pswitch_4
    const/16 p2, 0xa

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 120
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v2, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 121
    invoke-direct {p0, p1, p2, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 122
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 123
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->timeUs:J

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    invoke-interface {p2, v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    .line 124
    const/4 p2, 0x3

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_3

    .line 113
    :pswitch_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->pesScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v3, 0x9

    invoke-direct {p0, p1, p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->continueRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 114
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->parseHeader()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x2

    :cond_4
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_3

    .line 110
    :pswitch_6
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    nop

    .line 142
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 145
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

.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 67
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 68
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->state:I

    .line 75
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 76
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/PesReader;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    .line 78
    return-void
.end method
