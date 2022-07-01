.class final Lccsancom/vungle/warren/network/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lccsancom/vungle/warren/network/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;,
        Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/network/Call<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final converter:Lccsancom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/vungle/warren/network/converters/Converter<",
            "Lccsanokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field private rawCall:Lccsanokhttp3/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lccsancom/vungle/warren/network/OkHttpCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/network/OkHttpCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanokhttp3/Call;Lccsancom/vungle/warren/network/converters/Converter;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Call;",
            "Lccsancom/vungle/warren/network/converters/Converter<",
            "Lccsanokhttp3/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall;, "Lccsancom/vungle/warren/network/OkHttpCall<TT;>;"
    .local p2, "converter":Lccsancom/vungle/warren/network/converters/Converter;, "Lccsancom/vungle/warren/network/converters/Converter<Lccsanokhttp3/ResponseBody;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lccsancom/vungle/warren/network/OkHttpCall;->rawCall:Lccsanokhttp3/Call;

    .line 43
    iput-object p2, p0, Lccsancom/vungle/warren/network/OkHttpCall;->converter:Lccsancom/vungle/warren/network/converters/Converter;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/network/OkHttpCall;)Lccsancom/vungle/warren/network/converters/Converter;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/network/OkHttpCall;

    .line 35
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall;->converter:Lccsancom/vungle/warren/network/converters/Converter;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/network/OkHttpCall;Lccsanokhttp3/Response;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Response;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/network/OkHttpCall;
    .param p1, "x1"    # Lccsanokhttp3/Response;
    .param p2, "x2"    # Lccsancom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/network/OkHttpCall;->parseResponse(Lccsanokhttp3/Response;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lccsancom/vungle/warren/network/OkHttpCall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private parseResponse(Lccsanokhttp3/Response;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Response;
    .locals 6
    .param p1, "rawResponse"    # Lccsanokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Response;",
            "Lccsancom/vungle/warren/network/converters/Converter<",
            "Lccsanokhttp3/ResponseBody;",
            "TT;>;)",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall;, "Lccsancom/vungle/warren/network/OkHttpCall<TT;>;"
    .local p2, "converter":Lccsancom/vungle/warren/network/converters/Converter;, "Lccsancom/vungle/warren/network/converters/Converter<Lccsanokhttp3/ResponseBody;TT;>;"
    invoke-virtual {p1}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    .line 97
    .local v0, "rawBody":Lccsanokhttp3/ResponseBody;
    invoke-virtual {p1}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;

    .line 98
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentType()Lccsanokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;-><init>(Lccsanokhttp3/MediaType;J)V

    invoke-virtual {v1, v2}, Lccsanokhttp3/Response$Builder;->body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lccsanokhttp3/Response;->code()I

    move-result v1

    .line 102
    .local v1, "code":I
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lccsanokhttp3/ResponseBody;)V

    .line 122
    .local v2, "catchingBody":Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;
    :try_start_0
    invoke-interface {p2, v2}, Lccsancom/vungle/warren/network/converters/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lccsancom/vungle/warren/network/Response;->success(Ljava/lang/Object;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 123
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->throwIfCaught()V

    .line 127
    throw v3

    .line 116
    .end local v2    # "catchingBody":Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 117
    const/4 v2, 0x0

    invoke-static {v2, p1}, Lccsancom/vungle/warren/network/Response;->success(Ljava/lang/Object;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;

    move-result-object v2

    return-object v2

    .line 105
    :cond_3
    :goto_1
    :try_start_1
    new-instance v2, Lccsanokio/Buffer;

    invoke-direct {v2}, Lccsanokio/Buffer;-><init>()V

    .line 106
    .local v2, "buffer":Lccsanokio/Buffer;
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v3

    invoke-interface {v3, v2}, Lccsanokio/BufferedSource;->readAll(Lccsanokio/Sink;)J

    .line 107
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentType()Lccsanokhttp3/MediaType;

    move-result-object v3

    .line 108
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 107
    invoke-static {v3, v4, v5, v2}, Lccsanokhttp3/ResponseBody;->create(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)Lccsanokhttp3/ResponseBody;

    move-result-object v3

    .line 109
    .local v3, "bufferedBody":Lccsanokhttp3/ResponseBody;
    invoke-static {v3, p1}, Lccsancom/vungle/warren/network/Response;->error(Lccsanokhttp3/ResponseBody;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 109
    return-object v4

    .line 111
    .end local v2    # "buffer":Lccsanokio/Buffer;
    .end local v3    # "bufferedBody":Lccsanokhttp3/ResponseBody;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 112
    throw v2
.end method


# virtual methods
.method public enqueue(Lccsancom/vungle/warren/network/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall;, "Lccsancom/vungle/warren/network/OkHttpCall<TT;>;"
    .local p1, "callback":Lccsancom/vungle/warren/network/Callback;, "Lccsancom/vungle/warren/network/Callback<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall;->rawCall:Lccsanokhttp3/Call;

    new-instance v1, Lccsancom/vungle/warren/network/OkHttpCall$1;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/network/OkHttpCall$1;-><init>(Lccsancom/vungle/warren/network/OkHttpCall;Lccsancom/vungle/warren/network/Callback;)V

    invoke-interface {v0, v1}, Lccsanokhttp3/Call;->enqueue(Lccsanokhttp3/Callback;)V

    .line 90
    return-void
.end method

.method public execute()Lccsancom/vungle/warren/network/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall;, "Lccsancom/vungle/warren/network/OkHttpCall<TT;>;"
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall;->rawCall:Lccsanokhttp3/Call;

    .line 52
    .local v0, "call":Lccsanokhttp3/Call;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-interface {v0}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/network/OkHttpCall;->converter:Lccsancom/vungle/warren/network/converters/Converter;

    invoke-direct {p0, v1, v2}, Lccsancom/vungle/warren/network/OkHttpCall;->parseResponse(Lccsanokhttp3/Response;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Response;

    move-result-object v1

    return-object v1

    .line 52
    .end local v0    # "call":Lccsanokhttp3/Call;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
