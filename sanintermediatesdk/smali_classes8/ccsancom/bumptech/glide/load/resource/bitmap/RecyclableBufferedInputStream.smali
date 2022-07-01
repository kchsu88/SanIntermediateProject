.class public Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferedIs"


# instance fields
.field private volatile buf:[B

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 71
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 74
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 5
    .param p1, "localIn"    # Ljava/io/InputStream;
    .param p2, "localBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v3, v4, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    if-nez v0, :cond_4

    array-length v1, p2

    if-le v4, v1, :cond_4

    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v3, p2

    if-ne v1, v3, :cond_4

    .line 147
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    .line 148
    .local v0, "newLength":I
    if-le v0, v4, :cond_1

    .line 149
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 151
    :cond_1
    const/4 v1, 0x3

    const-string v3, "BufferedIs"

    invoke-static {v3, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocate buffer of length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    new-array v1, v0, [B

    .line 155
    .local v1, "newbuf":[B
    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object p2, v1

    .line 159
    .end local v0    # "newLength":I
    .end local v1    # "newbuf":[B
    :cond_3
    goto :goto_0

    :cond_4
    if-lez v0, :cond_3

    .line 160
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :goto_0
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 165
    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 166
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 167
    .local v0, "bytesread":I
    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-gtz v0, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v1, v0

    :goto_1
    iput v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 168
    return v0

    .line 132
    .end local v0    # "bytesread":I
    :cond_6
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 133
    .local v0, "result":I
    if-lez v0, :cond_7

    .line 134
    iput v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 135
    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 136
    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 138
    :cond_7
    return v0
.end method

.method private static streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 90
    .local v0, "localIn":Ljava/io/InputStream;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 93
    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    monitor-exit p0

    return v1

    .line 91
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_0
    :try_start_1
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v0    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 121
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 122
    .local v1, "localIn":Ljava/io/InputStream;
    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 123
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 126
    :cond_0
    return-void
.end method

.method public declared-synchronized fixMarkLimit()V
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 190
    :try_start_0
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 191
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 189
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 223
    .local v0, "localBuf":[B
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 224
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 229
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v4, :cond_0

    .line 231
    monitor-exit p0

    return v4

    .line 234
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v2, :cond_2

    .line 235
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v0, v2

    .line 236
    if-eqz v0, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 242
    :cond_2
    :goto_0
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    .line 243
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v2, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v2, v2, 0xff

    monitor-exit p0

    return v2

    .line 245
    :cond_3
    monitor-exit p0

    return v4

    .line 225
    :cond_4
    :try_start_2
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .local v0, "localBuf":[B
    if-eqz v0, :cond_10

    .line 276
    if-nez p3, :cond_0

    .line 277
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 279
    :cond_0
    :try_start_1
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 280
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v1, :cond_f

    .line 285
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v2, v3, :cond_4

    .line 287
    sub-int v4, v3, v2

    if-lt v4, p3, :cond_1

    move v3, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    .line 288
    .local v3, "copylength":I
    :goto_0
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 290
    if-eq v3, p3, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    add-int/2addr p2, v3

    .line 294
    sub-int v2, p3, v3

    .line 295
    .end local v3    # "copylength":I
    .local v2, "required":I
    goto :goto_2

    .line 291
    .end local v2    # "required":I
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v3    # "copylength":I
    :cond_3
    :goto_1
    monitor-exit p0

    return v3

    .line 296
    .end local v3    # "copylength":I
    :cond_4
    move v2, p3

    .line 303
    .restart local v2    # "required":I
    :goto_2
    :try_start_2
    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    array-length v3, v0

    if-lt v2, v3, :cond_6

    .line 304
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    .local v3, "read":I
    if-ne v3, v4, :cond_c

    .line 306
    if-ne v2, p3, :cond_5

    goto :goto_3

    :cond_5
    sub-int v4, p3, v2

    :goto_3
    monitor-exit p0

    return v4

    .line 309
    .end local v3    # "read":I
    :cond_6
    :try_start_3
    invoke-direct {p0, v1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v4, :cond_8

    .line 310
    if-ne v2, p3, :cond_7

    goto :goto_4

    :cond_7
    sub-int v4, p3, v2

    :goto_4
    monitor-exit p0

    return v4

    .line 313
    :cond_8
    :try_start_4
    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_a

    .line 314
    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object v0, v3

    .line 315
    if-eqz v0, :cond_9

    goto :goto_5

    .line 316
    :cond_9
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 320
    :cond_a
    :goto_5
    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v5, v3, v4

    if-lt v5, v2, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    sub-int/2addr v3, v4

    .line 321
    .restart local v3    # "read":I
    :goto_6
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    :cond_c
    sub-int/2addr v2, v3

    .line 325
    if-nez v2, :cond_d

    .line 326
    monitor-exit p0

    return p3

    .line 328
    :cond_d
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_e

    .line 329
    sub-int v4, p3, v2

    monitor-exit p0

    return v4

    .line 331
    :cond_e
    add-int/2addr p2, v3

    .line 332
    .end local v3    # "read":I
    goto :goto_2

    .line 281
    .end local v2    # "required":I
    :cond_f
    :try_start_6
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 273
    .end local v1    # "localIn":Ljava/io/InputStream;
    :cond_10
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 270
    .end local v0    # "localBuf":[B
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_1

    .line 349
    const/4 v0, -0x1

    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v0, v1, :cond_0

    .line 352
    iput v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 350
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    const-string v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 11
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 371
    .local v0, "localBuf":[B
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_6

    .line 375
    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 376
    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    .line 378
    :cond_0
    if-eqz v1, :cond_5

    .line 382
    :try_start_1
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v4, v2, v3

    int-to-long v4, v4

    cmp-long v6, v4, p1

    if-ltz v6, :cond_1

    .line 383
    int-to-long v2, v3

    add-long/2addr v2, p1

    long-to-int v3, v2

    iput v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    monitor-exit p0

    return-wide p1

    .line 386
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :cond_1
    sub-int v3, v2, v3

    int-to-long v3, v3

    .line 387
    .local v3, "read":J
    :try_start_2
    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 389
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v6, v2

    cmp-long v2, p1, v6

    if-gtz v2, :cond_4

    .line 390
    invoke-direct {p0, v1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v5, :cond_2

    .line 391
    monitor-exit p0

    return-wide v3

    .line 393
    :cond_2
    :try_start_3
    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int v6, v2, v5

    int-to-long v6, v6

    sub-long v8, p1, v3

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    .line 394
    int-to-long v5, v5

    sub-long v7, p1, v3

    add-long/2addr v5, v7

    long-to-int v2, v5

    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    monitor-exit p0

    return-wide p1

    .line 398
    :cond_3
    int-to-long v6, v2

    add-long/2addr v6, v3

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 399
    .end local v3    # "read":J
    .local v6, "read":J
    :try_start_4
    iput v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 400
    monitor-exit p0

    return-wide v6

    .line 402
    .end local v6    # "read":J
    .restart local v3    # "read":J
    :cond_4
    sub-long v5, p1, v3

    :try_start_5
    invoke-virtual {v1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-long/2addr v5, v3

    monitor-exit p0

    return-wide v5

    .line 379
    .end local v3    # "read":J
    :cond_5
    :try_start_6
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 373
    :cond_6
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 369
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    .end local p1    # "byteCount":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
