.class public final Lccsanokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lccsanokhttp3/Interceptor$Chain;


# instance fields
.field private final call:Lccsanokhttp3/Call;

.field private calls:I

.field private final connectTimeout:I

.field private final exchange:Lccsanokhttp3/internal/connection/Exchange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeout:I

.field private final request:Lccsanokhttp3/Request;

.field private final transmitter:Lccsanokhttp3/internal/connection/Transmitter;

.field private final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;ILccsanokhttp3/Request;Lccsanokhttp3/Call;III)V
    .locals 0
    .param p2, "transmitter"    # Lccsanokhttp3/internal/connection/Transmitter;
    .param p3, "exchange"    # Lccsanokhttp3/internal/connection/Exchange;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "index"    # I
    .param p5, "request"    # Lccsanokhttp3/Request;
    .param p6, "call"    # Lccsanokhttp3/Call;
    .param p7, "connectTimeout"    # I
    .param p8, "readTimeout"    # I
    .param p9, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;",
            "Lccsanokhttp3/internal/connection/Transmitter;",
            "Lccsanokhttp3/internal/connection/Exchange;",
            "I",
            "Lccsanokhttp3/Request;",
            "Lccsanokhttp3/Call;",
            "III)V"
        }
    .end annotation

    .line 53
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    .line 56
    iput-object p3, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    .line 57
    iput p4, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 58
    iput-object p5, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->request:Lccsanokhttp3/Request;

    .line 59
    iput-object p6, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->call:Lccsanokhttp3/Call;

    .line 60
    iput p7, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    .line 61
    iput p8, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    .line 62
    iput p9, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    .line 63
    return-void
.end method


# virtual methods
.method public call()Lccsanokhttp3/Call;
    .locals 1

    .line 109
    iget-object v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->call:Lccsanokhttp3/Call;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 70
    iget v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    return v0
.end method

.method public connection()Lccsanokhttp3/Connection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Exchange;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public exchange()Lccsanokhttp3/internal/connection/Exchange;
    .locals 1

    .line 104
    iget-object v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    if-eqz v0, :cond_0

    .line 105
    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;
    .locals 2
    .param p1, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    iget-object v1, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    invoke-virtual {p0, p1, v0, v1}, Lccsanokhttp3/internal/http/RealInterceptorChain;->proceed(Lccsanokhttp3/Request;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;)Lccsanokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lccsanokhttp3/Request;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;)Lccsanokhttp3/Response;
    .locals 15
    .param p1, "request"    # Lccsanokhttp3/Request;
    .param p2, "transmitter"    # Lccsanokhttp3/internal/connection/Transmitter;
    .param p3, "exchange"    # Lccsanokhttp3/internal/connection/Exchange;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    move-object v0, p0

    iget v1, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v2, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 124
    iget v1, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 127
    iget-object v1, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanokhttp3/internal/connection/Exchange;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lccsanokhttp3/internal/connection/RealConnection;->supportsUrl(Lccsanokhttp3/HttpUrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

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

    .line 133
    :cond_1
    :goto_0
    iget-object v1, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->calls:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3
    :goto_1
    new-instance v1, Lccsanokhttp3/internal/http/RealInterceptorChain;

    iget-object v6, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v9, v5, 0x1

    iget-object v11, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->call:Lccsanokhttp3/Call;

    iget v12, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v13, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v14, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v14}, Lccsanokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;ILccsanokhttp3/Request;Lccsanokhttp3/Call;III)V

    .line 141
    .local v1, "next":Lccsanokhttp3/internal/http/RealInterceptorChain;
    iget-object v5, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanokhttp3/Interceptor;

    .line 142
    .local v5, "interceptor":Lccsanokhttp3/Interceptor;
    invoke-interface {v5, v1}, Lccsanokhttp3/Interceptor;->intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;

    move-result-object v6

    .line 145
    .local v6, "response":Lccsanokhttp3/Response;
    if-eqz p3, :cond_5

    iget v7, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v7, v1, Lccsanokhttp3/internal/http/RealInterceptorChain;->calls:I

    if-ne v7, v2, :cond_4

    goto :goto_2

    .line 146
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

    .line 151
    :cond_5
    :goto_2
    const-string v2, "interceptor "

    if-eqz v6, :cond_7

    .line 155
    invoke-virtual {v6}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 160
    return-object v6

    .line 156
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

    .line 152
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

    .line 122
    .end local v1    # "next":Lccsanokhttp3/internal/http/RealInterceptorChain;
    .end local v5    # "interceptor":Lccsanokhttp3/Interceptor;
    .end local v6    # "response":Lccsanokhttp3/Response;
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 80
    iget v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    return v0
.end method

.method public request()Lccsanokhttp3/Request;
    .locals 1

    .line 113
    iget-object v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->request:Lccsanokhttp3/Request;

    return-object v0
.end method

.method public transmitter()Lccsanokhttp3/internal/connection/Transmitter;
    .locals 1

    .line 100
    iget-object v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    return-object v0
.end method

.method public withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lccsanokhttp3/Interceptor$Chain;
    .locals 13
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 74
    int-to-long v0, p1

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    .line 75
    .local v0, "millis":I
    new-instance v1, Lccsanokhttp3/internal/http/RealInterceptorChain;

    iget-object v4, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v5, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    iget-object v6, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    iget v7, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v8, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->request:Lccsanokhttp3/Request;

    iget-object v9, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->call:Lccsanokhttp3/Call;

    iget v11, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v12, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v3, v1

    move v10, v0

    invoke-direct/range {v3 .. v12}, Lccsanokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;ILccsanokhttp3/Request;Lccsanokhttp3/Call;III)V

    return-object v1
.end method

.method public withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lccsanokhttp3/Interceptor$Chain;
    .locals 13
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 84
    int-to-long v0, p1

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    .line 85
    .local v0, "millis":I
    new-instance v1, Lccsanokhttp3/internal/http/RealInterceptorChain;

    iget-object v4, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v5, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    iget-object v6, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    iget v7, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v8, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->request:Lccsanokhttp3/Request;

    iget-object v9, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->call:Lccsanokhttp3/Call;

    iget v10, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v12, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v3, v1

    move v11, v0

    invoke-direct/range {v3 .. v12}, Lccsanokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;ILccsanokhttp3/Request;Lccsanokhttp3/Call;III)V

    return-object v1
.end method

.method public withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lccsanokhttp3/Interceptor$Chain;
    .locals 13
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 94
    int-to-long v0, p1

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    .line 95
    .local v0, "millis":I
    new-instance v1, Lccsanokhttp3/internal/http/RealInterceptorChain;

    iget-object v4, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v5, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    iget-object v6, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    iget v7, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v8, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->request:Lccsanokhttp3/Request;

    iget-object v9, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->call:Lccsanokhttp3/Call;

    iget v10, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v11, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    move-object v3, v1

    move v12, v0

    invoke-direct/range {v3 .. v12}, Lccsanokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;ILccsanokhttp3/Request;Lccsanokhttp3/Call;III)V

    return-object v1
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 90
    iget v0, p0, Lccsanokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    return v0
.end method
