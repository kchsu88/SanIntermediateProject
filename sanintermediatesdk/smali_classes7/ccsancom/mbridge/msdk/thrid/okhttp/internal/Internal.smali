.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 44
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public abstract addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/Address;)Z
.end method

.method public abstract get(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
.end method

.method public abstract isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z
.end method

.method public abstract newWebSocketCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Call;
.end method

.method public abstract put(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
.end method

.method public abstract timeoutExit(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
