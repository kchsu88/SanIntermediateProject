.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private currentSegmentIndex:I

.field private final packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

.field private populated:Z

.field private segmentCount:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    .line 31
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private calculatePacketSize(I)I
    .locals 4

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    .line 144
    nop

    .line 145
    :goto_0
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    .line 147
    add-int/2addr v0, v1

    .line 148
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 150
    goto :goto_1

    .line 152
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public final getPageHeader()Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;
    .locals 1

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    return-object v0
.end method

.method public final getPayload()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;
    .locals 1

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    return-object v0
.end method

.method public final populate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 63
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-eqz v2, :cond_1

    .line 64
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    .line 65
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 68
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-nez v2, :cond_9

    .line 69
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v2, :cond_4

    .line 71
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v2, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    return v0

    .line 74
    :cond_2
    nop

    .line 75
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 76
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_3

    .line 79
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 80
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v0

    goto :goto_2

    .line 82
    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-interface {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 83
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 86
    :cond_4
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    .line 87
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v4

    .line 88
    if-lez v2, :cond_7

    .line 89
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    .line 90
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 92
    :cond_5
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {p1, v4, v5, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 93
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 94
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    .line 97
    :cond_7
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    goto :goto_4

    .line 98
    :cond_8
    nop

    :goto_4
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 99
    goto/16 :goto_1

    .line 100
    :cond_9
    return v1
.end method

.method public final reset()V
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 43
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    .line 46
    return-void
.end method

.method public final trimPayload()V
    .locals 4

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 133
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    .line 132
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 134
    return-void
.end method
