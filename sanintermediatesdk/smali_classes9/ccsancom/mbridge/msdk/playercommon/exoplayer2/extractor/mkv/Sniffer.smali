.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 40
    return-void
.end method

.method private readUint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 95
    if-nez v0, :cond_0

    .line 96
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 98
    :cond_0
    const/16 v3, 0x80

    .line 99
    const/4 v4, 0x0

    .line 100
    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    .line 101
    shr-int/lit8 v3, v3, 0x1

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_1
    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 105
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v2, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    :goto_1
    if-ge v1, v4, :cond_2

    .line 107
    shl-int/lit8 p1, v0, 0x8

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    .line 110
    :cond_2
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 111
    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 47
    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    move-wide v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    long-to-int v5, v4

    .line 50
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v1, v4, v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 51
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 52
    iput v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 53
    :goto_2
    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_3

    .line 54
    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v9, v4

    iput v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    if-ne v9, v5, :cond_2

    .line 55
    return v8

    .line 57
    :cond_2
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v8, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 58
    const/16 v4, 0x8

    shl-long v9, v10, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 59
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    move-wide v10, v9

    goto :goto_2

    .line 63
    :cond_3
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->readUint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v9

    .line 64
    iget v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v11, v5

    .line 65
    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_b

    cmp-long v5, v2, v6

    if-eqz v5, :cond_4

    add-long v5, v11, v9

    cmp-long v7, v5, v2

    if-ltz v7, :cond_4

    goto :goto_5

    .line 71
    :cond_4
    :goto_3
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v5, v2

    add-long v15, v11, v9

    cmp-long v3, v5, v15

    if-gez v3, :cond_9

    .line 72
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->readUint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 73
    cmp-long v5, v2, v13

    if-nez v5, :cond_5

    .line 74
    return v8

    .line 76
    :cond_5
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->readUint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 77
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_8

    const-wide/32 v15, 0x7fffffff

    cmp-long v7, v2, v15

    if-lez v7, :cond_6

    goto :goto_4

    .line 80
    :cond_6
    cmp-long v7, v2, v5

    if-eqz v7, :cond_7

    .line 81
    long-to-int v3, v2

    .line 82
    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 83
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v2, v3

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 85
    :cond_7
    goto :goto_3

    .line 78
    :cond_8
    :goto_4
    return v8

    .line 86
    :cond_9
    int-to-long v1, v2

    cmp-long v3, v1, v15

    if-nez v3, :cond_a

    const/4 v8, 0x1

    :cond_a
    return v8

    .line 67
    :cond_b
    :goto_5
    return v8
.end method
