.class Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;
.super Lccsancom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayByteSource"
.end annotation


# instance fields
.field final bytes:[B

.field final length:I

.field final offset:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 563
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([BII)V

    .line 564
    return-void
.end method

.method constructor <init>([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 567
    invoke-direct {p0}, Lccsancom/google/common/io/ByteSource;-><init>()V

    .line 568
    iput-object p1, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 569
    iput p2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 570
    iput p3, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 571
    return-void
.end method


# virtual methods
.method public copyTo(Ljava/io/OutputStream;)J
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v1, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 613
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hash(Lccsancom/google/common/hash/HashFunction;)Lccsancom/google/common/hash/HashCode;
    .locals 3
    .param p1, "hashFunction"    # Lccsancom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v1, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    invoke-interface {p1, v0, v1, v2}, Lccsancom/google/common/hash/HashFunction;->hashBytes([BII)Lccsancom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 585
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 4

    .line 575
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v3, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
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

    .line 606
    .local p1, "processor":Lccsancom/google/common/io/ByteProcessor;, "Lccsancom/google/common/io/ByteProcessor<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v1, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    invoke-interface {p1, v0, v1, v2}, Lccsancom/google/common/io/ByteProcessor;->processBytes([BII)Z

    .line 607
    invoke-interface {p1}, Lccsancom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read()[B
    .locals 3

    .line 600
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v1, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 590
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public sizeIfKnown()Lccsancom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 595
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public slice(JJ)Lccsancom/google/common/io/ByteSource;
    .locals 6
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 623
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

    .line 624
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "length (%s) may not be negative"

    invoke-static {v0, v1, p3, p4}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 626
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 627
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 628
    iget v0, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    .line 629
    .local v0, "newOffset":I
    new-instance v1, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;

    iget-object v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    long-to-int v3, p3

    invoke-direct {v1, v2, v0, v3}, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([BII)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteSource.wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-static {}, Lccsancom/google/common/io/BaseEncoding;->base16()Lccsancom/google/common/io/BaseEncoding;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v3, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v4, p0, Lccsancom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const-string v3, "..."

    invoke-static {v1, v2, v3}, Lccsancom/google/common/base/Ascii;->truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    return-object v0
.end method
