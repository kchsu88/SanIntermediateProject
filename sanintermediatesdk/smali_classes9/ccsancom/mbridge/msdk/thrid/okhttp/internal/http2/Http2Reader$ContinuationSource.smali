.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

.field streamId:I


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 361
    return-void
.end method

.method private readContinuationHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 388
    .local v0, "previousStreamId":I
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader;->readMedium(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 389
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 390
    .local v1, "type":B
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 391
    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    iget v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->length:I

    iget-byte v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->flags:B

    invoke-static {v3, v4, v5, v1, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 393
    const/16 v4, 0x9

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 394
    if-ne v2, v0, :cond_1

    .line 395
    return-void

    .line 394
    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "TYPE_CONTINUATION streamId changed"

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 393
    :cond_2
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%s != TYPE_CONTINUATION"

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    return-void
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    :goto_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-short v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->skip(J)V

    .line 366
    const/4 v0, 0x0

    iput-short v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 367
    iget-byte v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 368
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v3

    .line 373
    .local v3, "read":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 374
    :cond_2
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, v3

    long-to-int v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->left:I

    .line 375
    return-wide v3
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 379
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$ContinuationSource;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
