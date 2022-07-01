.class Lccsanokhttp3/OkHttpClient$1;
.super Lccsanokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lccsanokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lccsanokhttp3/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Lccsanokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lccsanokhttp3/Headers$Builder;

    .line 134
    return-void
.end method

.method public addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lccsanokhttp3/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1, p2, p3}, Lccsanokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Headers$Builder;

    .line 138
    return-void
.end method

.method public apply(Lccsanokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lccsanokhttp3/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .line 154
    invoke-virtual {p1, p2, p3}, Lccsanokhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 155
    return-void
.end method

.method public code(Lccsanokhttp3/Response$Builder;)I
    .locals 1
    .param p1, "responseBuilder"    # Lccsanokhttp3/Response$Builder;

    .line 149
    iget v0, p1, Lccsanokhttp3/Response$Builder;->code:I

    return v0
.end method

.method public equalsNonHost(Lccsanokhttp3/Address;Lccsanokhttp3/Address;)Z
    .locals 1
    .param p1, "a"    # Lccsanokhttp3/Address;
    .param p2, "b"    # Lccsanokhttp3/Address;

    .line 145
    invoke-virtual {p1, p2}, Lccsanokhttp3/Address;->equalsNonHost(Lccsanokhttp3/Address;)Z

    move-result v0

    return v0
.end method

.method public exchange(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/connection/Exchange;
    .locals 1
    .param p1, "response"    # Lccsanokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 167
    iget-object v0, p1, Lccsanokhttp3/Response;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    return-object v0
.end method

.method public initExchange(Lccsanokhttp3/Response$Builder;Lccsanokhttp3/internal/connection/Exchange;)V
    .locals 0
    .param p1, "responseBuilder"    # Lccsanokhttp3/Response$Builder;
    .param p2, "exchange"    # Lccsanokhttp3/internal/connection/Exchange;

    .line 163
    invoke-virtual {p1, p2}, Lccsanokhttp3/Response$Builder;->initExchange(Lccsanokhttp3/internal/connection/Exchange;)V

    .line 164
    return-void
.end method

.method public newWebSocketCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;)Lccsanokhttp3/Call;
    .locals 1
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lccsanokhttp3/Request;

    .line 158
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lccsanokhttp3/RealCall;->newRealCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;Z)Lccsanokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public realConnectionPool(Lccsanokhttp3/ConnectionPool;)Lccsanokhttp3/internal/connection/RealConnectionPool;
    .locals 1
    .param p1, "connectionPool"    # Lccsanokhttp3/ConnectionPool;

    .line 141
    iget-object v0, p1, Lccsanokhttp3/ConnectionPool;->delegate:Lccsanokhttp3/internal/connection/RealConnectionPool;

    return-object v0
.end method
