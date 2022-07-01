.class public final Lccsanokio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lccsanokio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lccsanokio/DeflaterSink;

.field private final sink:Lccsanokio/BufferedSink;


# direct methods
.method public constructor <init>(Lccsanokio/Sink;)V
    .locals 3
    .param p1, "sink"    # Lccsanokio/Sink;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lccsanokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lccsanokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 59
    invoke-static {p1}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lccsanokio/GzipSink;->sink:Lccsanokio/BufferedSink;

    .line 60
    new-instance v2, Lccsanokio/DeflaterSink;

    invoke-direct {v2, v1, v0}, Lccsanokio/DeflaterSink;-><init>(Lccsanokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v2, p0, Lccsanokio/GzipSink;->deflaterSink:Lccsanokio/DeflaterSink;

    .line 62
    invoke-direct {p0}, Lccsanokio/GzipSink;->writeHeader()V

    .line 63
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCrc(Lccsanokio/Buffer;J)V
    .locals 5
    .param p1, "buffer"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J

    .line 139
    iget-object v0, p1, Lccsanokio/Buffer;->head:Lccsanokio/Segment;

    .local v0, "head":Lccsanokio/Segment;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 140
    iget v1, v0, Lccsanokio/Segment;->limit:I

    iget v2, v0, Lccsanokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 141
    .local v2, "segmentLength":I
    iget-object v1, p0, Lccsanokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lccsanokio/Segment;->data:[B

    iget v4, v0, Lccsanokio/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 142
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 139
    .end local v2    # "segmentLength":I
    iget-object v0, v0, Lccsanokio/Segment;->next:Lccsanokio/Segment;

    goto :goto_0

    .line 144
    .end local v0    # "head":Lccsanokio/Segment;
    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lccsanokio/GzipSink;->sink:Lccsanokio/BufferedSink;

    iget-object v1, p0, Lccsanokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lccsanokio/BufferedSink;->writeIntLe(I)Lccsanokio/BufferedSink;

    .line 134
    iget-object v0, p0, Lccsanokio/GzipSink;->sink:Lccsanokio/BufferedSink;

    iget-object v1, p0, Lccsanokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lccsanokio/BufferedSink;->writeIntLe(I)Lccsanokio/BufferedSink;

    .line 135
    return-void
.end method

.method private writeHeader()V
    .locals 2

    .line 123
    iget-object v0, p0, Lccsanokio/GzipSink;->sink:Lccsanokio/BufferedSink;

    invoke-interface {v0}, Lccsanokio/BufferedSink;->buffer()Lccsanokio/Buffer;

    move-result-object v0

    .line 124
    .local v0, "buffer":Lccsanokio/Buffer;
    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->writeShort(I)Lccsanokio/Buffer;

    .line 125
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->writeByte(I)Lccsanokio/Buffer;

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->writeByte(I)Lccsanokio/Buffer;

    .line 127
    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->writeInt(I)Lccsanokio/Buffer;

    .line 128
    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->writeByte(I)Lccsanokio/Buffer;

    .line 129
    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->writeByte(I)Lccsanokio/Buffer;

    .line 130
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lccsanokio/GzipSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 91
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v1, p0, Lccsanokio/GzipSink;->deflaterSink:Lccsanokio/DeflaterSink;

    invoke-virtual {v1}, Lccsanokio/DeflaterSink;->finishDeflate()V

    .line 92
    invoke-direct {p0}, Lccsanokio/GzipSink;->writeFooter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 98
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lccsanokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 104
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lccsanokio/GzipSink;->sink:Lccsanokio/BufferedSink;

    invoke-interface {v1}, Lccsanokio/BufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 107
    goto :goto_2

    .line 105
    :catchall_2
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanokio/GzipSink;->closed:Z

    .line 110
    if-eqz v0, :cond_3

    invoke-static {v0}, Lccsanokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 111
    :cond_3
    return-void
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .locals 1

    .line 118
    iget-object v0, p0, Lccsanokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lccsanokio/GzipSink;->deflaterSink:Lccsanokio/DeflaterSink;

    invoke-virtual {v0}, Lccsanokio/DeflaterSink;->flush()V

    .line 75
    return-void
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 78
    iget-object v0, p0, Lccsanokio/GzipSink;->sink:Lccsanokio/BufferedSink;

    invoke-interface {v0}, Lccsanokio/BufferedSink;->timeout()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 3
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 67
    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsanokio/GzipSink;->updateCrc(Lccsanokio/Buffer;J)V

    .line 70
    iget-object v0, p0, Lccsanokio/GzipSink;->deflaterSink:Lccsanokio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lccsanokio/DeflaterSink;->write(Lccsanokio/Buffer;J)V

    .line 71
    return-void

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
