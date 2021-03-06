.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;


# instance fields
.field private final call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

.field private calls:I

.field private final connectTimeout:I

.field private final connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

.field private final eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

.field private final httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeout:I

.field private final request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

.field private final streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

.field private final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;III)V
    .locals 0
    .param p2, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .param p3, "httpCodec"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;
    .param p4, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    .param p5, "index"    # I
    .param p6, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p7, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p8, "eventListener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .param p9, "connectTimeout"    # I
    .param p10, "readTimeout"    # I
    .param p11, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;",
            "I",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Request;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Call;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;",
            "III)V"
        }
    .end annotation

    .line 52
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    .line 55
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 56
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    .line 57
    iput p5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    .line 58
    iput-object p6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 59
    iput-object p7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 60
    iput-object p8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    .line 61
    iput p9, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connectTimeout:I

    .line 62
    iput p10, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->readTimeout:I

    .line 63
    iput p11, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->writeTimeout:I

    .line 64
    return-void
.end method


# virtual methods
.method public call()Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .locals 1

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 71
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connectTimeout:I

    return v0
.end method

.method public connection()Lccsancom/mbridge/msdk/thrid/okhttp/Connection;
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    return-object v0
.end method

.method public eventListener()Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .locals 1

    .line 113
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    return-object v0
.end method

.method public httpStream()Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    return-object v0
.end method

.method public proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 3
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 17
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .param p3, "httpCodec"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;
    .param p4, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p0

    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 128
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->calls:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->calls:I

    .line 131
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->supportsUrl(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    :goto_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->calls:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 138
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_3
    :goto_1
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    iget-object v6, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    iget-object v13, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget v14, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v15, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->readTimeout:I

    iget v11, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;III)V

    .line 146
    .local v1, "next":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    iget-object v5, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;

    .line 147
    .local v5, "interceptor":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;
    invoke-interface {v5, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;->intercept(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v6

    .line 150
    .local v6, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    if-eqz p3, :cond_5

    iget v7, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v7, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->calls:I

    if-ne v7, v2, :cond_4

    goto :goto_2

    .line 151
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_5
    :goto_2
    const-string v2, "interceptor "

    if-eqz v6, :cond_7

    .line 160
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 165
    return-object v6

    .line 161
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned a response with no body"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_7
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v1    # "next":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .end local v5    # "interceptor":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;
    .end local v6    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 81
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->readTimeout:I

    return v0
.end method

.method public request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 1

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    return-object v0
.end method

.method public streamAllocation()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .locals 1

    .line 101
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .locals 18
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 75
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v2, v1

    const-string v4, "timeout"

    move-object/from16 v5, p2

    invoke-static {v4, v2, v3, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    .line 76
    .local v2, "millis":I
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    iget-object v7, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v9, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    iget-object v10, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    iget v11, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    iget-object v12, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    iget-object v13, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    iget-object v14, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->readTimeout:I

    iget v15, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v6, v3

    move/from16 v17, v15

    move v15, v2

    move/from16 v16, v4

    invoke-direct/range {v6 .. v17}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;III)V

    return-object v3
.end method

.method public withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .locals 18
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 85
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v2, v1

    const-string v4, "timeout"

    move-object/from16 v5, p2

    invoke-static {v4, v2, v3, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    .line 86
    .local v2, "millis":I
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    iget-object v7, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v9, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    iget-object v10, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    iget v11, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    iget-object v12, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    iget-object v13, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    iget-object v14, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget v15, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v6, v3

    move/from16 v16, v2

    move/from16 v17, v4

    invoke-direct/range {v6 .. v17}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;III)V

    return-object v3
.end method

.method public withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .locals 18
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 95
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v2, v1

    const-string v4, "timeout"

    move-object/from16 v5, p2

    invoke-static {v4, v2, v3, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    .line 96
    .local v2, "millis":I
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    iget-object v7, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v9, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->httpCodec:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    iget-object v10, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    iget v11, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->index:I

    iget-object v12, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    iget-object v13, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    iget-object v14, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget v15, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->readTimeout:I

    move-object v6, v3

    move/from16 v16, v4

    move/from16 v17, v2

    invoke-direct/range {v6 .. v17}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;III)V

    return-object v3
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 91
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->writeTimeout:I

    return v0
.end method
