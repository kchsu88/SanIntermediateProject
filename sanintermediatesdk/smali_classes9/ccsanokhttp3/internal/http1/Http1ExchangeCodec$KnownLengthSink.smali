.class final Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lccsanokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KnownLengthSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

.field private final timeout:Lccsanokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lccsanokio/ForwardingTimeout;

    invoke-static {p1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lccsanokio/BufferedSink;->timeout()Lccsanokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsanokio/ForwardingTimeout;-><init>(Lccsanokio/Timeout;)V

    iput-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->timeout:Lccsanokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;Lccsanokhttp3/internal/http1/Http1ExchangeCodec$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanokhttp3/internal/http1/Http1ExchangeCodec;
    .param p2, "x1"    # Lccsanokhttp3/internal/http1/Http1ExchangeCodec$1;

    .line 313
    invoke-direct {p0, p1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;-><init>(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    .line 335
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v1, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->timeout:Lccsanokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$300(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;Lccsanokio/ForwardingTimeout;)V

    .line 336
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$402(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;I)I

    .line 337
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lccsanokio/BufferedSink;->flush()V

    .line 330
    return-void
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 318
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->timeout:Lccsanokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Lccsanokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lccsanokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 324
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsanokio/BufferedSink;->write(Lccsanokio/Buffer;J)V

    .line 325
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
