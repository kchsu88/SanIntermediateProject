.class public final Lccsanokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# instance fields
.field public final client:Lccsanokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lccsanokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lccsanokhttp3/internal/connection/ConnectInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    .line 32
    return-void
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 6
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    move-object v0, p1

    check-cast v0, Lccsanokhttp3/internal/http/RealInterceptorChain;

    .line 36
    .local v0, "realChain":Lccsanokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v0}, Lccsanokhttp3/internal/http/RealInterceptorChain;->request()Lccsanokhttp3/Request;

    move-result-object v1

    .line 37
    .local v1, "request":Lccsanokhttp3/Request;
    invoke-virtual {v0}, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter()Lccsanokhttp3/internal/connection/Transmitter;

    move-result-object v2

    .line 40
    .local v2, "transmitter":Lccsanokhttp3/internal/connection/Transmitter;
    invoke-virtual {v1}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 41
    .local v3, "doExtensiveHealthChecks":Z
    invoke-virtual {v2, p1, v3}, Lccsanokhttp3/internal/connection/Transmitter;->newExchange(Lccsanokhttp3/Interceptor$Chain;Z)Lccsanokhttp3/internal/connection/Exchange;

    move-result-object v4

    .line 43
    .local v4, "exchange":Lccsanokhttp3/internal/connection/Exchange;
    invoke-virtual {v0, v1, v2, v4}, Lccsanokhttp3/internal/http/RealInterceptorChain;->proceed(Lccsanokhttp3/Request;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;)Lccsanokhttp3/Response;

    move-result-object v5

    return-object v5
.end method
