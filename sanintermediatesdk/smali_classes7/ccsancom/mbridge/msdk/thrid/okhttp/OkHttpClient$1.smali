.class final Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$1;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 136
    return-void
.end method

.method public addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 140
    return-void
.end method

.method public apply(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .line 179
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 180
    return-void
.end method

.method public code(Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;)I
    .locals 1
    .param p1, "responseBuilder"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    .line 174
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    return v0
.end method

.method public connectionBecameIdle(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Z
    .locals 1
    .param p1, "pool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .param p2, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    .line 148
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->connectionBecameIdle(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public deduplicate(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 1
    .param p1, "pool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .param p2, "address"    # Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .param p3, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 162
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->deduplicate(Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equalsNonHost(Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/Address;)Z
    .locals 1
    .param p1, "a"    # Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .param p2, "b"    # Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    .line 157
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->equalsNonHost(Lccsancom/mbridge/msdk/thrid/okhttp/Address;)Z

    move-result v0

    return v0
.end method

.method public get(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    .locals 1
    .param p1, "pool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .param p2, "address"    # Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .param p3, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .param p4, "route"    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 153
    invoke-virtual {p1, p2, p3, p4}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->get(Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .line 183
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid URL host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newWebSocketCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .locals 1
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 195
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->newRealCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;Z)Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)V
    .locals 0
    .param p1, "pool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .param p2, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    .line 166
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->put(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)V

    .line 167
    return-void
.end method

.method public routeDatabase(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteDatabase;
    .locals 1
    .param p1, "connectionPool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 170
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->routeDatabase:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "builder"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .param p2, "internalCache"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 143
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->setInternalCache(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V

    .line 144
    return-void
.end method

.method public streamAllocation(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .locals 1
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 187
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->streamAllocation()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public timeoutExit(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 191
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
