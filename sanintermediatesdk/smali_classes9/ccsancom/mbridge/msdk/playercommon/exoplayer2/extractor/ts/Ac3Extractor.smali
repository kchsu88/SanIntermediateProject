.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# static fields
.field private static final AC3_SYNC_WORD:I = 0xb77

.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private static final ID3_TAG:I

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final MAX_SYNC_FRAME_SIZE:I = 0xae2


# instance fields
.field private final firstSampleTimestampUs:J

.field private final reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

.field private final sampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 55
    const-string v0, "ID3"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    .line 69
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    .line 70
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0xae2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 71
    return-void
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;->createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 123
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 124
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 125
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

    .line 141
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    .line 142
    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 143
    return p2

    .line 147
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 148
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 150
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez p1, :cond_1

    .line 152
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;->packetStarted(JZ)V

    .line 153
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 157
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 158
    return v0
.end method

.method public final release()V
    .locals 0

    .line 136
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 129
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 130
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Reader;->seek()V

    .line 131
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 81
    :goto_0
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 83
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    sget v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Ac3Extractor;->ID3_TAG:I

    if-eq v4, v5, :cond_4

    .line 84
    nop

    .line 91
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 92
    invoke-interface {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 94
    nop

    .line 95
    move v4, v3

    const/4 v1, 0x0

    .line 97
    :goto_1
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x5

    invoke-interface {p1, v5, v2, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 98
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 99
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 100
    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    .line 101
    nop

    .line 102
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 103
    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    .line 104
    return v2

    .line 106
    :cond_0
    invoke-interface {p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    const/4 v1, 0x0

    goto :goto_2

    .line 108
    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    .line 109
    return v5

    .line 111
    :cond_2
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v5

    .line 112
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 113
    return v2

    .line 115
    :cond_3
    add-int/lit8 v5, v5, -0x5

    invoke-interface {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 117
    :goto_2
    goto :goto_1

    .line 86
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    .line 88
    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 89
    invoke-interface {p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 90
    goto :goto_0
.end method
