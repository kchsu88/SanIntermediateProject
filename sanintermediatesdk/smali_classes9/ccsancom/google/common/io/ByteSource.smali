.class public abstract Lccsancom/google/common/io/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;,
        Lccsancom/google/common/io/ByteSource$EmptyByteSource;,
        Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;,
        Lccsancom/google/common/io/ByteSource$SlicedByteSource;,
        Lccsancom/google/common/io/ByteSource$AsCharSource;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lccsancom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/io/ByteSource;",
            ">;)",
            "Lccsancom/google/common/io/ByteSource;"
        }
    .end annotation

    .line 377
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/io/ByteSource;>;"
    new-instance v0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;

    invoke-direct {v0, p0}, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lccsancom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lccsancom/google/common/io/ByteSource;",
            ">;)",
            "Lccsancom/google/common/io/ByteSource;"
        }
    .end annotation

    .line 399
    .local p0, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lccsancom/google/common/io/ByteSource;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lccsancom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lccsancom/google/common/io/ByteSource;)Lccsancom/google/common/io/ByteSource;
    .locals 1
    .param p0, "sources"    # [Lccsancom/google/common/io/ByteSource;

    .line 415
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lccsancom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method private countBySkipping(Ljava/io/InputStream;)J
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    const-wide/16 v0, 0x0

    .line 225
    .local v0, "count":J
    :goto_0
    const-wide/32 v2, 0x7fffffff

    invoke-static {p1, v2, v3}, Lccsancom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "skipped":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 226
    add-long/2addr v0, v4

    goto :goto_0

    .line 228
    :cond_0
    return-wide v0
.end method

.method public static empty()Lccsancom/google/common/io/ByteSource;
    .locals 1

    .line 434
    sget-object v0, Lccsancom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lccsancom/google/common/io/ByteSource$EmptyByteSource;

    return-object v0
.end method

.method public static wrap([B)Lccsancom/google/common/io/ByteSource;
    .locals 1
    .param p0, "b"    # [B

    .line 425
    new-instance v0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;

    invoke-direct {v0, p0}, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lccsancom/google/common/io/CharSource;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 79
    new-instance v0, Lccsancom/google/common/io/ByteSource$AsCharSource;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/io/ByteSource$AsCharSource;-><init>(Lccsancom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public contentEquals(Lccsancom/google/common/io/ByteSource;)Z
    .locals 9
    .param p1, "other"    # Lccsancom/google/common/io/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lccsancom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 343
    .local v0, "buf1":[B
    invoke-static {}, Lccsancom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v1

    .line 345
    .local v1, "buf2":[B
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v2

    .line 347
    .local v2, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 348
    .local v3, "in1":Ljava/io/InputStream;
    invoke-virtual {p1}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 350
    .local v4, "in2":Ljava/io/InputStream;
    :goto_0
    array-length v5, v0

    const/4 v6, 0x0

    invoke-static {v3, v0, v6, v5}, Lccsancom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 351
    .local v5, "read1":I
    array-length v7, v1

    invoke-static {v4, v1, v6, v7}, Lccsancom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 352
    .local v7, "read2":I
    if-ne v5, v7, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    array-length v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v6, :cond_1

    .line 355
    const/4 v6, 0x1

    .line 361
    invoke-virtual {v2}, Lccsancom/google/common/io/Closer;->close()V

    .line 355
    return v6

    .line 357
    .end local v5    # "read1":I
    .end local v7    # "read2":I
    :cond_1
    goto :goto_0

    .line 353
    .restart local v5    # "read1":I
    .restart local v7    # "read2":I
    :cond_2
    :goto_1
    nop

    .line 361
    invoke-virtual {v2}, Lccsancom/google/common/io/Closer;->close()V

    .line 353
    return v6

    .line 358
    .end local v3    # "in1":Ljava/io/InputStream;
    .end local v4    # "in2":Ljava/io/InputStream;
    .end local v5    # "read1":I
    .end local v7    # "read2":I
    :catchall_0
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2, v3}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "buf1":[B
    .end local v1    # "buf2":[B
    .end local v2    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "other":Lccsancom/google/common/io/ByteSource;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "buf1":[B
    .restart local v1    # "buf2":[B
    .restart local v2    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "other":Lccsancom/google/common/io/ByteSource;
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Lccsancom/google/common/io/Closer;->close()V

    .line 362
    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method public copyTo(Lccsancom/google/common/io/ByteSink;)J
    .locals 5
    .param p1, "sink"    # Lccsancom/google/common/io/ByteSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 267
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 268
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lccsancom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;

    .line 269
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static {v1, v2}, Lccsancom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 269
    return-wide v3

    .line 270
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "sink":Lccsancom/google/common/io/ByteSink;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "sink":Lccsancom/google/common/io/ByteSink;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 274
    throw v1
.end method

.method public copyTo(Ljava/io/OutputStream;)J
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 245
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 246
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, p1}, Lccsancom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 246
    return-wide v2

    .line 247
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "output":Ljava/io/OutputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 251
    throw v1
.end method

.method public hash(Lccsancom/google/common/hash/HashFunction;)Lccsancom/google/common/hash/HashCode;
    .locals 2
    .param p1, "hashFunction"    # Lccsancom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-interface {p1}, Lccsancom/google/common/hash/HashFunction;->newHasher()Lccsancom/google/common/hash/Hasher;

    move-result-object v0

    .line 329
    .local v0, "hasher":Lccsancom/google/common/hash/Hasher;
    invoke-static {v0}, Lccsancom/google/common/hash/Funnels;->asOutputStream(Lccsancom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 330
    invoke-interface {v0}, Lccsancom/google/common/hash/Hasher;->hash()Lccsancom/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->sizeIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v0

    .line 139
    .local v0, "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 142
    :cond_1
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v1

    .line 144
    .local v1, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 145
    .local v4, "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 149
    :goto_1
    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 145
    return v2

    .line 146
    .end local v4    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v1    # "closer":Lccsancom/google/common/io/Closer;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v1    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 150
    throw v2
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v1
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read(Lccsancom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    .local p1, "processor":Lccsancom/google/common/io/ByteProcessor;, "Lccsancom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 313
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 314
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, p1}, Lccsancom/google/common/io/ByteStreams;->readBytes(Ljava/io/InputStream;Lccsancom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 314
    return-object v2

    .line 315
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "processor":Lccsancom/google/common/io/ByteProcessor;, "Lccsancom/google/common/io/ByteProcessor<TT;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "processor":Lccsancom/google/common/io/ByteProcessor;, "Lccsancom/google/common/io/ByteProcessor<TT;>;"
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 319
    throw v1
.end method

.method public read()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 285
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 286
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->sizeIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v2

    .line 287
    .local v2, "size":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    invoke-virtual {v2}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lccsancom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;J)[B

    move-result-object v3

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {v1}, Lccsancom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :goto_0
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 287
    return-object v3

    .line 290
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "size":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 293
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 294
    throw v1
.end method

.method public size()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->sizeIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v0

    .line 193
    .local v0, "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 197
    :cond_0
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v1

    .line 199
    .local v1, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 200
    .local v2, "in":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lccsancom/google/common/io/ByteSource;->countBySkipping(Ljava/io/InputStream;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 200
    return-wide v3

    .line 204
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 205
    throw v2

    .line 201
    :catch_0
    move-exception v2

    .line 204
    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 205
    nop

    .line 207
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v1

    .line 209
    :try_start_1
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 210
    .restart local v2    # "in":Ljava/io/InputStream;
    invoke-static {v2}, Lccsancom/google/common/io/ByteStreams;->exhaust(Ljava/io/InputStream;)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 210
    return-wide v3

    .line 211
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v1    # "closer":Lccsancom/google/common/io/Closer;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 214
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v1    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_2
    move-exception v2

    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 215
    throw v2
.end method

.method public sizeIfKnown()Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public slice(JJ)Lccsancom/google/common/io/ByteSource;
    .locals 7
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 121
    new-instance v6, Lccsancom/google/common/io/ByteSource$SlicedByteSource;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/google/common/io/ByteSource$SlicedByteSource;-><init>(Lccsancom/google/common/io/ByteSource;JJ)V

    return-object v6
.end method
