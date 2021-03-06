.class public final Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_1

    .line 52
    if-eqz p2, :cond_0

    .line 53
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 54
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 55
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 42
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;-><init>(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 43
    return-void
.end method

.method private deflate(Z)V
    .locals 7
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v0

    .line 84
    .local v0, "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writableSegment(I)Lccsancom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v1

    .line 90
    .local v1, "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iget v4, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v5, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    .line 91
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iget v4, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v5, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    .line 92
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    nop

    .line 94
    .local v2, "deflated":I
    if-lez v2, :cond_1

    .line 95
    iget v3, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    .line 96
    iget-wide v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 97
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->emitCompleteSegments()Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    goto :goto_2

    .line 98
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget v3, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    iget v4, v1, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    if-ne v3, v4, :cond_2

    .line 101
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pop()Lccsancom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v3

    iput-object v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 102
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/SegmentPool;->recycle(Lccsancom/mbridge/msdk/thrid/okio/Segment;)V

    .line 104
    :cond_2
    return-void

    .line 106
    .end local v1    # "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    .end local v2    # "deflated":I
    :cond_3
    :goto_2
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 132
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    goto :goto_1

    .line 133
    :catchall_1
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 138
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    goto :goto_2

    .line 139
    :catchall_2
    move-exception v1

    .line 140
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 142
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->closed:Z

    .line 144
    if-eqz v0, :cond_3

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 145
    :cond_3
    return-void
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflate(Z)V

    .line 117
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflate(Z)V

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V

    .line 112
    return-void
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-wide v0, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 59
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 61
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 62
    .local v0, "head":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v2, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 63
    .local v2, "toDeflate":I
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 66
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/thrid/okio/DeflaterSink;->deflate(Z)V

    .line 69
    iget-wide v3, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 70
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    .line 71
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    iget v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    if-ne v1, v3, :cond_0

    .line 72
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pop()Lccsancom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 73
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentPool;->recycle(Lccsancom/mbridge/msdk/thrid/okio/Segment;)V

    .line 76
    :cond_0
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 77
    .end local v0    # "head":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    .end local v2    # "toDeflate":I
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
