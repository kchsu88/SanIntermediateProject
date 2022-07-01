.class abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected bytesRead:J

.field protected closed:Z

.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

.field protected final timeout:Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;)V
    .locals 2

    .line 352
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;

    iget-object p1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Timeout;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->timeout:Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;
    .param p2, "x1"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$1;

    .line 352
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(ZLjava/io/IOException;)V
    .locals 7
    .param p1, "reuseConnection"    # Z
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 382
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->timeout:Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->detachTimeout(Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;)V

    .line 384
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iput v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 385
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFinished(ZLccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;JLjava/io/IOException;)V

    .line 388
    :cond_1
    return-void

    .line 380
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 363
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    .line 364
    .local v0, "read":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 365
    iget-wide v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    return-wide v0

    .line 368
    .end local v0    # "read":J
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    .line 370
    throw v0
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 358
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;->timeout:Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;

    return-object v0
.end method
