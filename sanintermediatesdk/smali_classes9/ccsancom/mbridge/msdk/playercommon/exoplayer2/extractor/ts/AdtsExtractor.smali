.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private static final ID3_TAG:I

.field private static final MAX_PACKET_SIZE:I = 0xc8

.field private static final MAX_SNIFF_BYTES:I = 0x2000


# instance fields
.field private final firstSampleTimestampUs:J

.field private final packetBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 49
    const-string v0, "ID3"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 64
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 68
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    .line 69
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 70
    return-void
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 132
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 133
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 134
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 150
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-interface {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    .line 151
    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 152
    return p2

    .line 156
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 157
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 159
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez p1, :cond_1

    .line 161
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->packetStarted(JZ)V

    .line 162
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 166
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 167
    return v0
.end method

.method public final release()V
    .locals 0

    .line 145
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 138
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 139
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsReader;->seek()V

    .line 140
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 77
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 78
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 79
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    :goto_0
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 83
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/AdtsExtractor;->ID3_TAG:I

    if-eq v5, v6, :cond_4

    .line 84
    nop

    .line 91
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 92
    invoke-interface {p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 95
    nop

    .line 96
    nop

    .line 97
    move v5, v4

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 99
    :goto_1
    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v8, 0x2

    invoke-interface {p1, v7, v3, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 100
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 101
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 102
    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_1

    .line 103
    nop

    .line 104
    nop

    .line 105
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 106
    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v4

    const/16 v6, 0x2000

    if-lt v1, v6, :cond_0

    .line 107
    return v3

    .line 109
    :cond_0
    invoke-interface {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_2

    .line 111
    :cond_1
    const/4 v7, 0x1

    add-int/2addr v1, v7

    const/4 v8, 0x4

    if-lt v1, v8, :cond_2

    const/16 v9, 0xbc

    if-le v6, v9, :cond_2

    .line 112
    return v7

    .line 116
    :cond_2
    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v7, v3, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 118
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 120
    const/4 v8, 0x6

    if-gt v7, v8, :cond_3

    .line 121
    return v3

    .line 123
    :cond_3
    add-int/lit8 v8, v7, -0x6

    invoke-interface {p1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 124
    add-int/2addr v6, v7

    .line 126
    :goto_2
    goto :goto_1

    .line 86
    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 88
    add-int/lit8 v6, v5, 0xa

    add-int/2addr v4, v6

    .line 89
    invoke-interface {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 90
    goto :goto_0
.end method
