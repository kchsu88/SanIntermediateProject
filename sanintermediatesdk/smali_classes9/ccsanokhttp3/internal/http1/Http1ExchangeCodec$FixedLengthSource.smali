.class Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;
.super Lccsanokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "Http1ExchangeCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;J)V
    .locals 2
    .param p2, "length"    # J

    .line 415
    iput-object p1, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;Lccsanokhttp3/internal/http1/Http1ExchangeCodec$1;)V

    .line 416
    iput-wide p2, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    .line 417
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 418
    invoke-virtual {p0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    .line 420
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-wide v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lccsanokhttp3/internal/Util;->discard(Lccsanokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$600(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 447
    invoke-virtual {p0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    .line 450
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->closed:Z

    .line 451
    return-void
.end method

.method public read(Lccsanokio/Buffer;J)J
    .locals 7
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    .line 424
    iget-boolean v2, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->closed:Z

    if-nez v2, :cond_3

    .line 425
    iget-wide v2, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    return-wide v4

    .line 427
    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->read(Lccsanokio/Buffer;J)J

    move-result-wide v2

    .line 428
    .local v2, "read":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 435
    iget-wide v4, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    .line 436
    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    .line 437
    invoke-virtual {p0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    .line 439
    :cond_1
    return-wide v2

    .line 429
    :cond_2
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$600(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 430
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "e":Ljava/net/ProtocolException;
    invoke-virtual {p0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    .line 432
    throw v0

    .line 424
    .end local v0    # "e":Ljava/net/ProtocolException;
    .end local v2    # "read":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_4
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
