.class public abstract Lccsanokhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lccsanokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lccsanokhttp3/EventListener$1;

    invoke-direct {v0}, Lccsanokhttp3/EventListener$1;-><init>()V

    sput-object v0, Lccsanokhttp3/EventListener;->NONE:Lccsanokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lccsanokhttp3/EventListener;)Lccsanokhttp3/EventListener$Factory;
    .locals 1
    .param p0, "listener"    # Lccsanokhttp3/EventListener;

    .line 57
    new-instance v0, Lccsanokhttp3/EventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lccsanokhttp3/EventListener$$ExternalSyntheticLambda0;-><init>(Lccsanokhttp3/EventListener;)V

    return-object v0
.end method

.method static synthetic lambda$factory$0(Lccsanokhttp3/EventListener;Lccsanokhttp3/Call;)Lccsanokhttp3/EventListener;
    .locals 0
    .param p0, "listener"    # Lccsanokhttp3/EventListener;
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 57
    return-object p0
.end method


# virtual methods
.method public callEnd(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 284
    return-void
.end method

.method public callFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 292
    return-void
.end method

.method public callStart(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 69
    return-void
.end method

.method public connectEnd(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsanokhttp3/Protocol;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lccsanokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    return-void
.end method

.method public connectFailed(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsanokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lccsanokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "ioe"    # Ljava/io/IOException;

    .line 147
    return-void
.end method

.method public connectStart(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .line 101
    return-void
.end method

.method public connectionAcquired(Lccsanokhttp3/Call;Lccsanokhttp3/Connection;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "connection"    # Lccsanokhttp3/Connection;

    .line 156
    return-void
.end method

.method public connectionReleased(Lccsanokhttp3/Call;Lccsanokhttp3/Connection;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "connection"    # Lccsanokhttp3/Connection;

    .line 167
    return-void
.end method

.method public dnsEnd(Lccsanokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public dnsStart(Lccsanokhttp3/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;

    .line 81
    return-void
.end method

.method public requestBodyEnd(Lccsanokhttp3/Call;J)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "byteCount"    # J

    .line 211
    return-void
.end method

.method public requestBodyStart(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 203
    return-void
.end method

.method public requestFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 220
    return-void
.end method

.method public requestHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Request;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "request"    # Lccsanokhttp3/Request;

    .line 190
    return-void
.end method

.method public requestHeadersStart(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 179
    return-void
.end method

.method public responseBodyEnd(Lccsanokhttp3/Call;J)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "byteCount"    # J

    .line 266
    return-void
.end method

.method public responseBodyStart(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 255
    return-void
.end method

.method public responseFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 275
    return-void
.end method

.method public responseHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "response"    # Lccsanokhttp3/Response;

    .line 243
    return-void
.end method

.method public responseHeadersStart(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 232
    return-void
.end method

.method public secureConnectEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Handshake;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "handshake"    # Lccsanokhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    return-void
.end method

.method public secureConnectStart(Lccsanokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;

    .line 116
    return-void
.end method
