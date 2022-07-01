.class final Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;
.super Lccsancom/mbridge/msdk/thrid/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Buffer;I)V
    .locals 7
    .param p1, "buffer"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;-><init>([B)V

    .line 55
    iget-wide v1, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 60
    .local v1, "segmentCount":I
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .local v2, "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    :goto_0
    if-ge v0, p2, :cond_1

    .line 61
    iget v3, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v4, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    if-eq v3, v4, :cond_0

    .line 64
    iget v3, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v4, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 60
    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->next:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "s.limit == s.pos"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 69
    .end local v2    # "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    :cond_1
    new-array v2, v1, [[B

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    .line 70
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .restart local v2    # "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    :goto_1
    if-ge v0, p2, :cond_3

    .line 74
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    iget-object v4, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    aput-object v4, v3, v1

    .line 75
    iget v3, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v4, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 76
    if-le v0, p2, :cond_2

    .line 77
    move v0, p2

    .line 79
    :cond_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    aput v0, v3, v1

    .line 80
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v4, v4

    add-int/2addr v4, v1

    iget v5, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    aput v5, v3, v4

    .line 81
    const/4 v3, 0x1

    iput-boolean v3, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->shared:Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 73
    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Segment;->next:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_1

    .line 84
    .end local v2    # "s":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    :cond_3
    return-void
.end method

.method private segment(I)I
    .locals 4
    .param p1, "pos"    # I

    .line 153
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 154
    .local v0, "i":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    :goto_0
    return v1
.end method

.method private toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 2

    .line 254
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 293
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 262
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 263
    :cond_0
    instance-of v1, p1, Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 264
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 265
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->size()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->rangeEquals(ILccsancom/mbridge/msdk/thrid/okio/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 7
    .param p1, "pos"    # I

    .line 143
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 144
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segment(I)I

    move-result v0

    .line 145
    .local v0, "segment":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 146
    .local v1, "segmentOffset":I
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 147
    .local v2, "segmentPos":I
    aget-object v3, v3, v0

    sub-int v4, p1, v1

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    return v3
.end method

.method public hashCode()I
    .locals 12

    .line 269
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->hashCode:I

    .line 270
    .local v0, "result":I
    if-eqz v0, :cond_0

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x1

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    .local v3, "segmentCount":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 276
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    .line 277
    .local v4, "segment":[B
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int v6, v3, v2

    aget v6, v5, v6

    .line 278
    .local v6, "segmentPos":I
    aget v5, v5, v2

    .line 279
    .local v5, "nextSegmentOffset":I
    sub-int v7, v5, v1

    .line 280
    .local v7, "segmentSize":I
    move v8, v6

    .local v8, "i":I
    add-int v9, v6, v7

    .local v9, "limit":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 281
    mul-int/lit8 v10, v0, 0x1f

    aget-byte v11, v4, v8

    add-int v0, v10, v11

    .line 280
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 283
    .end local v8    # "i":I
    .end local v9    # "limit":I
    :cond_1
    move v1, v5

    .line 275
    .end local v4    # "segment":[B
    .end local v5    # "nextSegmentOffset":I
    .end local v6    # "segmentPos":I
    .end local v7    # "segmentSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "s":I
    .end local v3    # "segmentCount":I
    :cond_2
    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->hashCode:I

    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha1(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 123
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hmacSha1(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 127
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hmacSha256(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .line 245
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method internalArray()[B
    .locals 1

    .line 258
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .line 249
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public md5()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1

    .line 111
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->md5()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILccsancom/mbridge/msdk/thrid/okio/ByteString;II)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "other"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 208
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-lez p4, :cond_3

    .line 211
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 212
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 213
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 214
    .local v4, "stepSize":I
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v1

    aget v5, v5, v7

    .line 215
    .local v5, "segmentPos":I
    sub-int v7, p1, v2

    add-int/2addr v7, v5

    .line 216
    .local v7, "arrayOffset":I
    aget-object v6, v6, v1

    invoke-virtual {p2, p3, v6, v7, v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v6

    if-nez v6, :cond_2

    return v0

    .line 217
    :cond_2
    add-int/2addr p1, v4

    .line 218
    add-int/2addr p3, v4

    .line 219
    sub-int/2addr p4, v4

    .line 210
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v7    # "arrayOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "s":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_4
    :goto_2
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 225
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-lez p4, :cond_3

    .line 231
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 232
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 233
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 234
    .local v4, "stepSize":I
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v1

    aget v5, v5, v7

    .line 235
    .local v5, "segmentPos":I
    sub-int v7, p1, v2

    add-int/2addr v7, v5

    .line 236
    .local v7, "arrayOffset":I
    aget-object v6, v6, v1

    invoke-static {v6, v7, p2, p3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-nez v6, :cond_2

    return v0

    .line 237
    :cond_2
    add-int/2addr p1, v4

    .line 238
    add-int/2addr p3, v4

    .line 239
    sub-int/2addr p4, v4

    .line 230
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v7    # "arrayOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "s":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_4
    :goto_2
    return v0
.end method

.method public sha1()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1

    .line 115
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->sha1()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1

    .line 119
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->sha256()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 91
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .line 135
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->substring(I)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 139
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->substring(II)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1

    .line 103
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->toAsciiLowercase()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .locals 1

    .line 107
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->toAsciiUppercase()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 163
    .local v0, "result":[B
    const/4 v2, 0x0

    .line 164
    .local v2, "segmentOffset":I
    const/4 v3, 0x0

    .local v3, "s":I
    array-length v1, v1

    .local v1, "segmentCount":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 165
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int v5, v1, v3

    aget v5, v4, v5

    .line 166
    .local v5, "segmentPos":I
    aget v4, v4, v3

    .line 167
    .local v4, "nextSegmentOffset":I
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v3

    sub-int v7, v4, v2

    invoke-static {v6, v5, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    move v2, v4

    .line 164
    .end local v4    # "nextSegmentOffset":I
    .end local v5    # "segmentPos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "segmentCount":I
    .end local v3    # "s":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->toByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;)V
    .locals 12
    .param p1, "buffer"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 192
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v4, v3, v4

    .line 193
    .local v4, "segmentPos":I
    aget v3, v3, v1

    .line 194
    .local v3, "nextSegmentOffset":I
    new-instance v11, Lccsancom/mbridge/msdk/thrid/okio/Segment;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v5, v1

    add-int v5, v4, v3

    sub-int v8, v5, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v11

    move v7, v4

    invoke-direct/range {v5 .. v10}, Lccsancom/mbridge/msdk/thrid/okio/Segment;-><init>([BIIZZ)V

    .line 196
    .local v5, "segment":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    iget-object v6, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    if-nez v6, :cond_0

    .line 197
    iput-object v5, v5, Lccsancom/mbridge/msdk/thrid/okio/Segment;->prev:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    iput-object v5, v5, Lccsancom/mbridge/msdk/thrid/okio/Segment;->next:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    iput-object v5, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    goto :goto_1

    .line 199
    :cond_0
    iget-object v6, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    iget-object v6, v6, Lccsancom/mbridge/msdk/thrid/okio/Segment;->prev:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/thrid/okio/Segment;->push(Lccsancom/mbridge/msdk/thrid/okio/Segment;)Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 201
    :goto_1
    move v0, v3

    .line 191
    .end local v3    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    .end local v5    # "segment":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_1
    iget-wide v1, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 204
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_1

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 182
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v4, v3, v4

    .line 183
    .local v4, "segmentPos":I
    aget v3, v3, v1

    .line 184
    .local v3, "nextSegmentOffset":I
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v3, v0

    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    move v0, v3

    .line 181
    .end local v3    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_0
    return-void

    .line 179
    .end local v0    # "segmentOffset":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
