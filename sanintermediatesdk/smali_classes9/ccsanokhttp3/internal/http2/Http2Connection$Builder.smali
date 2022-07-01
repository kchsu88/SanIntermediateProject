.class public Lccsanokhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field connectionName:Ljava/lang/String;

.field listener:Lccsanokhttp3/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Lccsanokhttp3/internal/http2/PushObserver;

.field sink:Lccsanokio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lccsanokio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    sget-object v0, Lccsanokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lccsanokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->listener:Lccsanokhttp3/internal/http2/Http2Connection$Listener;

    .line 600
    sget-object v0, Lccsanokhttp3/internal/http2/PushObserver;->CANCEL:Lccsanokhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lccsanokhttp3/internal/http2/PushObserver;

    .line 609
    iput-boolean p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    .line 610
    return-void
.end method


# virtual methods
.method public build()Lccsanokhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 646
    new-instance v0, Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lccsanokhttp3/internal/http2/Http2Connection;-><init>(Lccsanokhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lccsanokhttp3/internal/http2/Http2Connection$Listener;)Lccsanokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "listener"    # Lccsanokhttp3/internal/http2/Http2Connection$Listener;

    .line 631
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->listener:Lccsanokhttp3/internal/http2/Http2Connection$Listener;

    .line 632
    return-object p0
.end method

.method public pingIntervalMillis(I)Lccsanokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pingIntervalMillis"    # I

    .line 641
    iput p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    .line 642
    return-object p0
.end method

.method public pushObserver(Lccsanokhttp3/internal/http2/PushObserver;)Lccsanokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lccsanokhttp3/internal/http2/PushObserver;

    .line 636
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lccsanokhttp3/internal/http2/PushObserver;

    .line 637
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lccsanokhttp3/internal/http2/Http2Connection$Builder;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 614
    .local v0, "remoteSocketAddress":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 615
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 617
    .local v1, "connectionName":Ljava/lang/String;
    nop

    .line 618
    invoke-static {p1}, Lccsanokio/Okio;->source(Ljava/net/Socket;)Lccsanokio/Source;

    move-result-object v2

    invoke-static {v2}, Lccsanokio/Okio;->buffer(Lccsanokio/Source;)Lccsanokio/BufferedSource;

    move-result-object v2

    invoke-static {p1}, Lccsanokio/Okio;->sink(Ljava/net/Socket;)Lccsanokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v3

    .line 617
    invoke-virtual {p0, p1, v1, v2, v3}, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lccsanokio/BufferedSource;Lccsanokio/BufferedSink;)Lccsanokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v2

    return-object v2
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lccsanokio/BufferedSource;Lccsanokio/BufferedSink;)Lccsanokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "connectionName"    # Ljava/lang/String;
    .param p3, "source"    # Lccsanokio/BufferedSource;
    .param p4, "sink"    # Lccsanokio/BufferedSink;

    .line 623
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 624
    iput-object p2, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    .line 625
    iput-object p3, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->source:Lccsanokio/BufferedSource;

    .line 626
    iput-object p4, p0, Lccsanokhttp3/internal/http2/Http2Connection$Builder;->sink:Lccsanokio/BufferedSink;

    .line 627
    return-object p0
.end method
