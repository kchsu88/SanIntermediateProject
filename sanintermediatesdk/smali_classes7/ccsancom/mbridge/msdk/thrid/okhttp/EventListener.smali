.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->NONE:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
    .locals 1
    .param p0, "listener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    .line 57
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$2;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 270
    return-void
.end method

.method public callFailed(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 278
    return-void
.end method

.method public callStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 73
    return-void
.end method

.method public connectEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    return-void
.end method

.method public connectFailed(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "ioe"    # Ljava/io/IOException;

    .line 151
    return-void
.end method

.method public connectStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .line 105
    return-void
.end method

.method public connectionAcquired(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Connection;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/Connection;

    .line 160
    return-void
.end method

.method public connectionReleased(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Connection;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/Connection;

    .line 171
    return-void
.end method

.method public dnsEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public dnsStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "domainName"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public requestBodyEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;J)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "byteCount"    # J

    .line 215
    return-void
.end method

.method public requestBodyStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 207
    return-void
.end method

.method public requestHeadersEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 194
    return-void
.end method

.method public requestHeadersStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 183
    return-void
.end method

.method public responseBodyEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;J)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "byteCount"    # J

    .line 261
    return-void
.end method

.method public responseBodyStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 250
    return-void
.end method

.method public responseHeadersEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 238
    return-void
.end method

.method public responseHeadersStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 227
    return-void
.end method

.method public secureConnectEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "handshake"    # Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    return-void
.end method

.method public secureConnectStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V
    .locals 0
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 120
    return-void
.end method
