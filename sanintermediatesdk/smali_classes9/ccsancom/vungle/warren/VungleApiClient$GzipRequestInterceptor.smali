.class Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GzipRequestInterceptor"
.end annotation


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final GZIP:Ljava/lang/String; = "gzip"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gzip(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/RequestBody;
    .locals 3
    .param p1, "requestBody"    # Lccsanokhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    .line 337
    .local v0, "output":Lccsanokio/Buffer;
    new-instance v1, Lccsanokio/GzipSink;

    invoke-direct {v1, v0}, Lccsanokio/GzipSink;-><init>(Lccsanokio/Sink;)V

    invoke-static {v1}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v1

    .line 338
    .local v1, "gzipSink":Lccsanokio/BufferedSink;
    invoke-virtual {p1, v1}, Lccsanokhttp3/RequestBody;->writeTo(Lccsanokio/BufferedSink;)V

    .line 339
    invoke-interface {v1}, Lccsanokio/BufferedSink;->close()V

    .line 340
    new-instance v2, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;

    invoke-direct {v2, p0, p1, v0}, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;-><init>(Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;Lccsanokhttp3/RequestBody;Lccsanokio/Buffer;)V

    return-object v2
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 4
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v0

    .line 323
    .local v0, "originalRequest":Lccsanokhttp3/Request;
    invoke-virtual {v0}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Lccsanokhttp3/Request;->newBuilder()Lccsanokhttp3/Request$Builder;

    move-result-object v2

    .line 329
    const-string v3, "gzip"

    invoke-virtual {v2, v1, v3}, Lccsanokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {v0}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v3

    invoke-direct {p0, v3}, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;->gzip(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanokhttp3/Request$Builder;->method(Ljava/lang/String;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    .line 332
    .local v1, "compressedRequest":Lccsanokhttp3/Request;
    invoke-interface {p1, v1}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v2

    return-object v2

    .line 325
    .end local v1    # "compressedRequest":Lccsanokhttp3/Request;
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v1

    return-object v1
.end method
