.class final Lccsancom/google/common/io/ByteSource$SlicedByteSource;
.super Lccsancom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlicedByteSource"
.end annotation


# instance fields
.field final length:J

.field final offset:J

.field final synthetic this$0:Lccsancom/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lccsancom/google/common/io/ByteSource;JJ)V
    .locals 5
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .line 485
    iput-object p1, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-direct {p0}, Lccsancom/google/common/io/ByteSource;-><init>()V

    .line 486
    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "offset (%s) may not be negative"

    invoke-static {v3, v4, p2, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 487
    cmp-long v3, p4, v1

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v0, "length (%s) may not be negative"

    invoke-static {p1, v0, p4, p5}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 488
    iput-wide p2, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    .line 489
    iput-wide p4, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->length:J

    .line 490
    return-void
.end method

.method private sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    iget-wide v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 506
    :try_start_0
    invoke-static {p1, v0, v1}, Lccsancom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .local v0, "skipped":J
    nop

    .line 517
    iget-wide v2, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 519
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 520
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 507
    .end local v0    # "skipped":J
    :catchall_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lccsancom/google/common/io/Closer;->create()Lccsancom/google/common/io/Closer;

    move-result-object v1

    .line 509
    .local v1, "closer":Lccsancom/google/common/io/Closer;
    invoke-virtual {v1, p1}, Lccsancom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 511
    :try_start_1
    invoke-virtual {v1, v0}, Lccsancom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "closer":Lccsancom/google/common/io/Closer;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "closer":Lccsancom/google/common/io/Closer;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lccsancom/google/common/io/Closer;->close()V

    .line 514
    throw v2

    .line 523
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "closer":Lccsancom/google/common/io/Closer;
    :cond_0
    iget-wide v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-static {p1, v0, v1}, Lccsancom/google/common/io/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    iget-wide v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->length:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-super {p0}, Lccsancom/google/common/io/ByteSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lccsancom/google/common/io/ByteSource;->openBufferedStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sizeIfKnown()Lccsancom/google/common/base/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lccsancom/google/common/io/ByteSource;->sizeIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v0

    .line 542
    .local v0, "optionalUnslicedSize":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 544
    .local v1, "unslicedSize":J
    iget-wide v3, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 545
    .local v3, "off":J
    iget-wide v5, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long v7, v1, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v5

    return-object v5

    .line 547
    .end local v1    # "unslicedSize":J
    .end local v3    # "off":J
    :cond_0
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method public slice(JJ)Lccsancom/google/common/io/ByteSource;
    .locals 7
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 528
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    invoke-static {v4, v5, p1, p2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 529
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "length (%s) may not be negative"

    invoke-static {v0, v1, p3, p4}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 530
    iget-wide v0, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long/2addr v0, p1

    .line 531
    .local v0, "maxLength":J
    iget-object v2, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lccsancom/google/common/io/ByteSource;

    iget-wide v3, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    add-long/2addr v3, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lccsancom/google/common/io/ByteSource;->slice(JJ)Lccsancom/google/common/io/ByteSource;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".slice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
