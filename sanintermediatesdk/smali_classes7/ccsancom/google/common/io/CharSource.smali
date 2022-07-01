.class public abstract Lccsancom/google/common/io/CharSource;
.super Ljava/lang/Object;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/io/CharSource$ConcatenatedCharSource;,
        Lccsancom/google/common/io/CharSource$EmptyCharSource;,
        Lccsancom/google/common/io/CharSource$StringCharSource;,
        Lccsancom/google/common/io/CharSource$CharSequenceCharSource;,
        Lccsancom/google/common/io/CharSource$AsByteSource;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lccsancom/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/io/CharSource;",
            ">;)",
            "Lccsancom/google/common/io/CharSource;"
        }
    .end annotation

    .line 362
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/io/CharSource;>;"
    new-instance v0, Lccsancom/google/common/io/CharSource$ConcatenatedCharSource;

    invoke-direct {v0, p0}, Lccsancom/google/common/io/CharSource$ConcatenatedCharSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lccsancom/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lccsancom/google/common/io/CharSource;",
            ">;)",
            "Lccsancom/google/common/io/CharSource;"
        }
    .end annotation

    .line 384
    .local p0, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lccsancom/google/common/io/CharSource;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lccsancom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lccsancom/google/common/io/CharSource;)Lccsancom/google/common/io/CharSource;
    .locals 1
    .param p0, "sources"    # [Lccsancom/google/common/io/CharSource;

    .line 400
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lccsancom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method private countBySkipping(Ljava/io/Reader;)J
    .locals 9
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "count":J
    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p1, v2, v3}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "read":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 173
    add-long/2addr v0, v4

    goto :goto_0

    .line 175
    :cond_0
    return-wide v0
.end method

.method public static empty()Lccsancom/google/common/io/CharSource;
    .locals 1

    .line 422
    invoke-static {}, Lccsancom/google/common/io/CharSource$EmptyCharSource;->access$000()Lccsancom/google/common/io/CharSource$EmptyCharSource;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Lccsancom/google/common/io/CharSource;
    .locals 2
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 411
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/google/common/io/CharSource$StringCharSource;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsancom/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {v0, p0}, Lccsancom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lccsancom/google/common/io/ByteSource;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Lccsancom/google/common/io/CharSource$AsByteSource;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/io/CharSource$AsByteSource;-><init>(Lccsancom/google/common/io/CharSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public copyTo(Lccsancom/google/common/io/CharSink;)J
    .locals 5
    .param p1, "sink"    # Lccsancom/google/common/io/CharSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 214
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 215
    .local v1, "reader":Ljava/io/Reader;
    invoke-virtual {p1}, Lccsancom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Writer;

    .line 216
    .local v2, "writer":Ljava/io/Writer;
    invoke-static {v1, v2}, Lccsancom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 216
    return-wide v3

    .line 217
    .end local v1    # "reader":Ljava/io/Reader;
    .end local v2    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "sink":Lccsancom/google/common/io/CharSink;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "sink":Lccsancom/google/common/io/CharSink;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 221
    throw v1
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 192
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 193
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1, p1}, Lccsancom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 193
    return-wide v2

    .line 194
    .end local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "appendable":Ljava/lang/Appendable;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "appendable":Ljava/lang/Appendable;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 198
    throw v1
.end method

.method public isEmpty()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->lengthIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v0

    .line 336
    .local v0, "lengthIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 337
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

    .line 339
    :cond_1
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v1

    .line 341
    .local v1, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v1, v4}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/Reader;

    .line 342
    .local v4, "reader":Ljava/io/Reader;
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 346
    :goto_1
    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 342
    return v2

    .line 343
    .end local v4    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "lengthIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v1    # "closer":Lccsancom/google/common/io/Closer;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "lengthIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v1    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 347
    throw v2
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->lengthIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v0

    .line 154
    .local v0, "lengthIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 158
    :cond_0
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v1

    .line 160
    .local v1, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    .line 161
    .local v2, "reader":Ljava/io/Reader;
    invoke-direct {p0, v2}, Lccsancom/google/common/io/CharSource;->countBySkipping(Ljava/io/Reader;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 161
    return-wide v3

    .line 162
    .end local v2    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1, v2}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "lengthIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v1    # "closer":Lccsancom/google/common/io/Closer;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "lengthIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v1    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 166
    throw v2
.end method

.method public lengthIfKnown()Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public openBufferedStream()Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    .line 108
    .local v0, "reader":Ljava/io/Reader;
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    return-object v1
.end method

.method public abstract openStream()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 232
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 233
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1}, Lccsancom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 233
    return-object v2

    .line 234
    .end local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 238
    throw v1
.end method

.method public readFirstLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 253
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 255
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 256
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 256
    return-object v2

    .line 257
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 261
    throw v1
.end method

.method public readLines()Lccsancom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 278
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 279
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lccsancom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 281
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 282
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {v2}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 284
    return-object v3

    .line 285
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 289
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public readLines(Lccsancom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    .local p1, "processor":Lccsancom/google/common/io/LineProcessor;, "Lccsancom/google/common/io/LineProcessor<TT;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v0

    .line 313
    .local v0, "closer":Lccsancom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 314
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1, p1}, Lccsancom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;Lccsancom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 314
    return-object v2

    .line 315
    .end local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "processor":Lccsancom/google/common/io/LineProcessor;, "Lccsancom/google/common/io/LineProcessor<TT;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "processor":Lccsancom/google/common/io/LineProcessor;, "Lccsancom/google/common/io/LineProcessor<TT;>;"
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/io/Closer;->close()V

    .line 319
    throw v1
.end method