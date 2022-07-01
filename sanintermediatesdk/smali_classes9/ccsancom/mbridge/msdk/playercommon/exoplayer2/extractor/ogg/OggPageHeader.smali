.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final EMPTY_PAGE_HEADER_SIZE:I = 0x1b

.field public static final MAX_PAGE_PAYLOAD:I = 0xfe01

.field public static final MAX_PAGE_SIZE:I = 0xff1b

.field public static final MAX_SEGMENT_COUNT:I = 0xff

.field private static final TYPE_OGGS:I


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "OggS"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->TYPE_OGGS:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    .line 54
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final populate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 85
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 86
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 87
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x1b

    invoke-interface {p1, v0, v3, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 95
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->TYPE_OGGS:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 96
    if-eqz p2, :cond_3

    .line 97
    return v3

    .line 99
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    .line 104
    if-eqz v0, :cond_6

    .line 105
    if-eqz p2, :cond_5

    .line 106
    return v3

    .line 108
    :cond_5
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_6
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    .line 113
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 114
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 115
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 116
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 117
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 118
    add-int/2addr p2, v1

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 121
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 122
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-interface {p1, p2, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 123
    nop

    :goto_2
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v3, p1, :cond_7

    .line 124
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    aput p2, p1, v3

    .line 125
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    aget p2, p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 128
    :cond_7
    return v2

    .line 89
    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 90
    return v3

    .line 92
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final reset()V
    .locals 3

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    .line 61
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 63
    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 64
    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 65
    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 66
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 67
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 68
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    .line 69
    return-void
.end method
