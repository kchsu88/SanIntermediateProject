.class final Lccsanokio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lccsanokio/BufferedSink;


# instance fields
.field public final buffer:Lccsanokio/Buffer;

.field closed:Z

.field public final sink:Lccsanokio/Sink;


# direct methods
.method constructor <init>(Lccsanokio/Sink;)V
    .locals 2
    .param p1, "sink"    # Lccsanokio/Sink;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    iput-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lccsanokio/Buffer;
    .locals 1

    .line 35
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v1, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    iget-wide v1, v1, Lccsanokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 241
    iget-object v1, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    iget-object v2, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    iget-wide v3, v2, Lccsanokio/Buffer;->size:J

    invoke-interface {v1, v2, v3, v4}, Lccsanokio/Sink;->write(Lccsanokio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_1
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 248
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    invoke-interface {v1}, Lccsanokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    goto :goto_1

    .line 249
    :catchall_1
    move-exception v1

    .line 250
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 252
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanokio/RealBufferedSink;->closed:Z

    .line 254
    if-eqz v0, :cond_3

    invoke-static {v0}, Lccsanokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 255
    :cond_3
    return-void
.end method

.method public emit()Lccsanokio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->size()J

    move-result-wide v0

    .line 186
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    iget-object v3, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lccsanokio/Sink;->write(Lccsanokio/Buffer;J)V

    .line 187
    :cond_0
    return-object p0

    .line 184
    .end local v0    # "byteCount":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCompleteSegments()Lccsanokio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    .line 179
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    iget-object v3, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lccsanokio/Sink;->write(Lccsanokio/Buffer;J)V

    .line 180
    :cond_0
    return-object p0

    .line 177
    .end local v0    # "byteCount":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    iget-wide v0, v0, Lccsanokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 224
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    iget-object v1, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    iget-wide v2, v1, Lccsanokio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lccsanokio/Sink;->write(Lccsanokio/Buffer;J)V

    .line 226
    :cond_0
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    invoke-interface {v0}, Lccsanokio/Sink;->flush()V

    .line 227
    return-void

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 191
    new-instance v0, Lccsanokio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lccsanokio/RealBufferedSink$1;-><init>(Lccsanokio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 258
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    invoke-interface {v0}, Lccsanokio/Sink;->timeout()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokio/RealBufferedSink;->sink:Lccsanokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    .local v0, "result":I
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    .line 99
    return v0

    .line 96
    .end local v0    # "result":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lccsanokio/ByteString;)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "byteString"    # Lccsanokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->write(Lccsanokio/ByteString;)Lccsanokio/Buffer;

    .line 48
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lccsanokio/Source;J)Lccsanokio/BufferedSink;
    .locals 5
    .param p1, "source"    # Lccsanokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 114
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lccsanokio/Source;->read(Lccsanokio/Buffer;J)J

    move-result-wide v0

    .line 115
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 116
    sub-long/2addr p2, v0

    .line 117
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    .line 118
    .end local v0    # "read":J
    goto :goto_0

    .line 115
    .restart local v0    # "read":J
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 119
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public write([B)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->write([B)Lccsanokio/Buffer;

    .line 86
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsanokio/Buffer;->write([BII)Lccsanokio/Buffer;

    .line 92
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsanokio/Buffer;->write(Lccsanokio/Buffer;J)V

    .line 42
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeAll(Lccsanokio/Source;)J
    .locals 9
    .param p1, "source"    # Lccsanokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_1

    .line 104
    const-wide/16 v0, 0x0

    .line 105
    .local v0, "totalBytesRead":J
    :goto_0
    iget-object v2, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lccsanokio/Source;->read(Lccsanokio/Buffer;J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "readCount":J
    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 106
    add-long/2addr v0, v4

    .line 107
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    goto :goto_0

    .line 109
    .end local v4    # "readCount":J
    :cond_0
    return-wide v0

    .line 103
    .end local v0    # "totalBytesRead":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public writeByte(I)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeByte(I)Lccsanokio/Buffer;

    .line 125
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeDecimalLong(J)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsanokio/Buffer;->writeDecimalLong(J)Lccsanokio/Buffer;

    .line 167
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsanokio/Buffer;->writeHexadecimalUnsignedLong(J)Lccsanokio/Buffer;

    .line 173
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeInt(I)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeInt(I)Lccsanokio/Buffer;

    .line 143
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeIntLe(I)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeIntLe(I)Lccsanokio/Buffer;

    .line 149
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLong(J)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsanokio/Buffer;->writeLong(J)Lccsanokio/Buffer;

    .line 155
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLongLe(J)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsanokio/Buffer;->writeLongLe(J)Lccsanokio/Buffer;

    .line 161
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeShort(I)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeShort(I)Lccsanokio/Buffer;

    .line 131
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeShortLe(I)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeShortLe(I)Lccsanokio/Buffer;

    .line 137
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lccsanokio/Buffer;

    .line 80
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsanokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lccsanokio/Buffer;

    .line 73
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeUtf8(Ljava/lang/String;)Lccsanokio/Buffer;

    .line 54
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsanokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lccsanokio/Buffer;

    .line 61
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeUtf8CodePoint(I)Lccsanokio/BufferedSink;
    .locals 2
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lccsanokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lccsanokio/RealBufferedSink;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->writeUtf8CodePoint(I)Lccsanokio/Buffer;

    .line 67
    invoke-virtual {p0}, Lccsanokio/RealBufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method