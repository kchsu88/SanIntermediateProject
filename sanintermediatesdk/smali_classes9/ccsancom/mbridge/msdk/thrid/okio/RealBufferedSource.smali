.class final Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# instance fields
.field public final buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

.field closed:Z

.field public final source:Lccsancom/mbridge/msdk/thrid/okio/Source;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V
    .locals 2
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Source;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .locals 1

    .line 36
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 465
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    .line 466
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/Source;->close()V

    .line 467
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->clear()V

    .line 468
    return-void
.end method

.method public exhausted()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 13
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    move-object v0, p0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_5

    .line 340
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_4

    cmp-long v1, p4, p2

    if-ltz v1, :cond_4

    move-wide v7, p2

    .line 345
    .end local p2    # "fromIndex":J
    .local v7, "fromIndex":J
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v1, v7, p4

    if-gez v1, :cond_3

    .line 346
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move v2, p1

    move-wide v3, v7

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v1

    .line 347
    .local v1, "result":J
    cmp-long v3, v1, v9

    if-eqz v3, :cond_0

    return-wide v1

    .line 351
    :cond_0
    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v3, v3, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 352
    .local v3, "lastBufferSize":J
    cmp-long v5, v3, p4

    if-gez v5, :cond_2

    iget-object v5, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v6, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v11, 0x2000

    invoke-interface {v5, v6, v11, v12}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v11, v5, v9

    if-nez v11, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 356
    .end local v1    # "result":J
    .end local v3    # "lastBufferSize":J
    goto :goto_0

    .line 352
    .restart local v1    # "result":J
    .restart local v3    # "lastBufferSize":J
    :cond_2
    :goto_1
    return-wide v9

    .line 357
    .end local v1    # "result":J
    .end local v3    # "lastBufferSize":J
    :cond_3
    return-wide v9

    .line 341
    .end local v7    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 342
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public indexOf(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->indexOf(Lccsancom/mbridge/msdk/thrid/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lccsancom/mbridge/msdk/thrid/okio/ByteString;J)J
    .locals 10
    .param p1, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 368
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->indexOf(Lccsancom/mbridge/msdk/thrid/okio/ByteString;J)J

    move-result-wide v0

    .line 369
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 371
    :cond_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v4, v4, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 372
    .local v4, "lastBufferSize":J
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    return-wide v2

    .line 375
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 376
    .end local v0    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_0

    .line 365
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public indexOfElement(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->indexOfElement(Lccsancom/mbridge/msdk/thrid/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lccsancom/mbridge/msdk/thrid/okio/ByteString;J)J
    .locals 10
    .param p1, "targetBytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 387
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->indexOfElement(Lccsancom/mbridge/msdk/thrid/okio/ByteString;J)J

    move-result-wide v0

    .line 388
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 390
    :cond_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v4, v4, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 391
    .local v4, "lastBufferSize":J
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    return-wide v2

    .line 394
    :cond_1
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 395
    .end local v0    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_0

    .line 384
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 422
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;-><init>(Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public rangeEquals(JLccsancom/mbridge/msdk/thrid/okio/ByteString;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->rangeEquals(JLccsancom/mbridge/msdk/thrid/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLccsancom/mbridge/msdk/thrid/okio/ByteString;II)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_5

    .line 407
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 410
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_3

    .line 414
    int-to-long v3, v0

    add-long/2addr v3, p1

    .line 415
    .local v3, "bufferOffset":J
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 416
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v1

    add-int v5, p4, v0

    invoke-virtual {p3, v5}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->getByte(I)B

    move-result v5

    if-eq v1, v5, :cond_2

    return v2

    .line 413
    .end local v3    # "bufferOffset":J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_4
    :goto_1
    return v2

    .line 405
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    .line 149
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, -0x1

    return v2

    .line 152
    .end local v0    # "read":J
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 138
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    .line 139
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, -0x1

    return v2

    .line 142
    .end local v0    # "read":J
    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 143
    .local v1, "toRead":I
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 5
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    if-eqz p1, :cond_3

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 42
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    .line 46
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 49
    .end local v0    # "read":J
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 50
    .local v0, "toRead":J
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v2

    return-wide v2

    .line 42
    .end local v0    # "toRead":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
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

    .line 40
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(Lccsancom/mbridge/msdk/thrid/okio/Sink;)J
    .locals 9
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    if-eqz p1, :cond_3

    .line 169
    const-wide/16 v0, 0x0

    .line 170
    .local v0, "totalBytesWritten":J
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    .line 171
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    .line 172
    .local v2, "emitByteCount":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 173
    add-long/2addr v0, v2

    .line 174
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-interface {p1, v4, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 176
    .end local v2    # "emitByteCount":J
    :cond_0
    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 178
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 179
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 181
    :cond_2
    return-wide v0

    .line 167
    .end local v0    # "totalBytesWritten":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeAll(Lccsancom/mbridge/msdk/thrid/okio/Source;)J

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeAll(Lccsancom/mbridge/msdk/thrid/okio/Source;)J

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByteString(J)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 285
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v1

    .line 287
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 285
    .end local v1    # "b":B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .restart local v1    # "b":B
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 290
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 291
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 290
    const-string v4, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_4
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 2
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .line 163
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readFully(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 164
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeAll(Lccsancom/mbridge/msdk/thrid/okio/Source;)J

    .line 161
    throw v0
.end method

.method public readFully([B)V
    .locals 7
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readFully([B)V

    .line 132
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 124
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 125
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v3, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    long-to-int v4, v3

    invoke-virtual {v2, p1, v1, v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->read([BII)I

    move-result v2

    .line 126
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 127
    add-int/2addr v1, v2

    .line 128
    .end local v2    # "read":I
    goto :goto_0

    .line 126
    .restart local v2    # "read":I
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 129
    .end local v2    # "read":I
    :cond_1
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 303
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 304
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v1

    .line 305
    .local v1, "b":B
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x66

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x46

    if-le v1, v2, :cond_2

    goto :goto_1

    .line 303
    .end local v1    # "b":B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .restart local v1    # "b":B
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 308
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 309
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 308
    const-string v4, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    .end local v0    # "pos":I
    .end local v1    # "b":B
    :cond_5
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 264
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 269
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 274
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 279
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 254
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 259
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 203
    if-eqz p3, :cond_0

    .line 204
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeAll(Lccsancom/mbridge/msdk/thrid/okio/Source;)J

    .line 198
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeAll(Lccsancom/mbridge/msdk/thrid/okio/Source;)J

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v0

    .line 241
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 242
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 243
    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 244
    const-wide/16 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 245
    :cond_1
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    .line 246
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->require(J)V

    .line 249
    :cond_2
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readUtf8CodePoint()I

    move-result v1

    return v1
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 210
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 211
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 214
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 21
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-ltz v2, :cond_3

    .line 223
    const-wide/16 v9, 0x1

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v0, v7, v11

    if-nez v0, :cond_0

    move-wide v0, v11

    goto :goto_0

    :cond_0
    add-long v0, v7, v9

    :goto_0
    move-wide v13, v0

    .line 224
    .local v13, "scanLength":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    .line 225
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, v6, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 226
    :cond_1
    cmp-long v2, v13, v11

    if-gez v2, :cond_2

    .line 227
    invoke-virtual {v6, v13, v14}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    sub-long v3, v13, v9

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-long/2addr v9, v13

    .line 228
    invoke-virtual {v6, v9, v10}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v13, v14}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 229
    iget-object v2, v6, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v13, v14}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 231
    :cond_2
    new-instance v16, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct/range {v16 .. v16}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    .line 232
    .local v16, "data":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    iget-object v15, v6, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v17, 0x0

    const-wide/16 v2, 0x20

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    invoke-virtual/range {v15 .. v20}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->copyTo(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 233
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2026

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "newline":J
    .end local v13    # "scanLength":J
    .end local v16    # "data":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 64
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 65
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public require(J)V
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public select(Lccsancom/mbridge/msdk/thrid/okio/Options;)I
    .locals 7
    .param p1, "options"    # Lccsancom/mbridge/msdk/thrid/okio/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    .line 90
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->selectPrefix(Lccsancom/mbridge/msdk/thrid/okio/Options;Z)I

    move-result v0

    .line 91
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 92
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 94
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v1

    .line 101
    .end local v0    # "index":I
    :cond_1
    goto :goto_0

    .line 97
    .restart local v0    # "index":I
    :cond_2
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okio/Options;->byteStrings:[Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v1

    .line 98
    .local v1, "selectedSize":I
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->skip(J)V

    .line 99
    return v0

    .line 87
    .end local v0    # "index":I
    .end local v1    # "selectedSize":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public skip(J)V
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    .line 320
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 321
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 324
    :cond_1
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 325
    .local v0, "toSkip":J
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->skip(J)V

    .line 326
    sub-long/2addr p1, v0

    .line 327
    .end local v0    # "toSkip":J
    goto :goto_0

    .line 328
    :cond_2
    return-void

    .line 319
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 471
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/Source;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
