.class public final Lccsancom/mbridge/msdk/thrid/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;

.field private section:I

.field private final source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V
    .locals 3
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Source;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    .line 58
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 63
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 64
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;

    invoke-direct {v2, v1, v0}, Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;-><init>(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->inflaterSource:Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    if-ne p3, p2, :cond_0

    .line 208
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 205
    const-string v2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeHeader()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    move-object/from16 v6, p0

    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->require(J)V

    .line 115
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v7

    .line 116
    .local v7, "flags":B
    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 117
    .local v10, "fhcrc":Z
    if-eqz v10, :cond_1

    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V

    .line 119
    :cond_1
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readShort()S

    move-result v11

    .line 120
    .local v11, "id1id2":S
    const/16 v0, 0x1f8b

    const-string v1, "ID1ID2"

    invoke-direct {v6, v1, v0, v11}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 121
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->skip(J)V

    .line 127
    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_4

    .line 128
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->require(J)V

    .line 129
    if-eqz v10, :cond_2

    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V

    .line 130
    :cond_2
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readShortLe()S

    move-result v12

    .line 131
    .local v12, "xlen":I
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->require(J)V

    .line 132
    if-eqz v10, :cond_3

    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V

    .line 133
    :cond_3
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->skip(J)V

    .line 140
    .end local v12    # "xlen":I
    :cond_4
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x1

    if-ne v0, v8, :cond_7

    .line 141
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0, v9}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->indexOf(B)J

    move-result-wide v16

    .line 142
    .local v16, "index":J
    cmp-long v0, v16, v12

    if-eqz v0, :cond_6

    .line 143
    if-eqz v10, :cond_5

    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v16, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V

    .line 144
    :cond_5
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    add-long v1, v16, v14

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->skip(J)V

    goto :goto_1

    .line 142
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 151
    .end local v16    # "index":J
    :cond_7
    :goto_1
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    .line 152
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0, v9}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    .line 153
    .local v8, "index":J
    cmp-long v0, v8, v12

    if-eqz v0, :cond_9

    .line 154
    if-eqz v10, :cond_8

    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v8, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V

    .line 155
    :cond_8
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    add-long/2addr v14, v8

    invoke-interface {v0, v14, v15}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 153
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 162
    .end local v8    # "index":J
    :cond_a
    :goto_2
    if-eqz v10, :cond_b

    .line 163
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readShortLe()S

    move-result v0

    iget-object v1, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 164
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 166
    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-direct {p0, v1, v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-direct {p0, v1, v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 175
    return-void
.end method

.method private updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V
    .locals 5
    .param p1, "buffer"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 188
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 189
    .local v0, "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    :goto_0
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v2, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    .line 190
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v2, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 189
    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->next:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_0

    .line 194
    :cond_0
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_1

    .line 195
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    long-to-int v2, v1

    .line 196
    .local v2, "pos":I
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 197
    .local v1, "toUpdate":I
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 198
    int-to-long v3, v1

    sub-long/2addr p4, v3

    .line 199
    const-wide/16 p2, 0x0

    .line 194
    .end local v1    # "toUpdate":I
    .end local v2    # "pos":I
    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->next:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_1

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->inflaterSource:Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;->close()V

    .line 183
    return-void
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 14
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    move-object v6, p0

    move-object v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_6

    .line 69
    cmp-long v2, v8, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 72
    :cond_0
    iget v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->consumeHeader()V

    .line 74
    iput v1, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    .line 78
    :cond_1
    iget v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_3

    .line 79
    iget-wide v10, v7, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 80
    .local v10, "offset":J
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->inflaterSource:Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;

    invoke-virtual {v0, p1, v8, v9}, Lccsancom/mbridge/msdk/thrid/okio/InflaterSource;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v12

    .line 81
    .local v12, "result":J
    cmp-long v0, v12, v2

    if-eqz v0, :cond_2

    .line 82
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->updateCrc(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)V

    .line 83
    return-wide v12

    .line 85
    :cond_2
    iput v4, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    .line 91
    .end local v10    # "offset":J
    .end local v12    # "result":J
    :cond_3
    iget v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    if-ne v0, v4, :cond_5

    .line 92
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->consumeTrailer()V

    .line 93
    const/4 v0, 0x3

    iput v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->section:I

    .line 99
    iget-object v0, v6, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 100
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    :goto_0
    return-wide v2

    .line 68
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 178
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
