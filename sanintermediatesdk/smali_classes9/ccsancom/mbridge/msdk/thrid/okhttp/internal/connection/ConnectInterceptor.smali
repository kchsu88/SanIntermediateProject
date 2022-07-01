.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;


# instance fields
.field public final client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 33
    return-void
.end method


# virtual methods
.method public intercept(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 7
    .param p1, "chain"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    .line 37
    .local v0, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    .line 38
    .local v1, "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    move-result-object v2

    .line 41
    .local v2, "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 42
    .local v3, "doExtensiveHealthChecks":Z
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2, v4, p1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->newStream(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;Z)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    move-result-object v4

    .line 43
    .local v4, "httpCodec":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->connection()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    move-result-object v5

    .line 45
    .local v5, "connection":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    invoke-virtual {v0, v1, v2, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v6

    return-object v6
.end method
