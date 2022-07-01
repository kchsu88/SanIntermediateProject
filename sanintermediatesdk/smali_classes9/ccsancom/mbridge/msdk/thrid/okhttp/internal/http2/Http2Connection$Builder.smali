.class public Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;

.field sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

    .line 615
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;->CANCEL:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->pushObserver:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;

    .line 624
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->client:Z

    .line 625
    return-void
.end method


# virtual methods
.method public build()Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;
    .locals 1

    .line 657
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "listener"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

    .line 642
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

    .line 643
    return-object p0
.end method

.method public pingIntervalMillis(I)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pingIntervalMillis"    # I

    .line 652
    iput p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    .line 653
    return-object p0
.end method

.method public pushObserver(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;

    .line 647
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->pushObserver:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;

    .line 648
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v2

    .line 628
    invoke-virtual {p0, p1, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .param p4, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 634
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 635
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 636
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 637
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 638
    return-object p0
.end method
