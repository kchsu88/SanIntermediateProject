.class final Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;
.super Lccsanokhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingResponseBody"
.end annotation


# instance fields
.field private final delegate:Lccsanokhttp3/ResponseBody;

.field thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lccsanokhttp3/ResponseBody;)V
    .locals 0
    .param p1, "delegate"    # Lccsanokhttp3/ResponseBody;

    .line 164
    invoke-direct {p0}, Lccsanokhttp3/ResponseBody;-><init>()V

    .line 165
    iput-object p1, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lccsanokhttp3/ResponseBody;

    .line 166
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 195
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lccsanokhttp3/ResponseBody;

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->close()V

    .line 196
    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 175
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lccsanokhttp3/ResponseBody;

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1

    .line 170
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lccsanokhttp3/ResponseBody;

    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->contentType()Lccsanokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lccsanokio/BufferedSource;
    .locals 2

    .line 180
    new-instance v0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;

    iget-object v1, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lccsanokhttp3/ResponseBody;

    invoke-virtual {v1}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;Lccsanokio/Source;)V

    invoke-static {v0}, Lccsanokio/Okio;->buffer(Lccsanokio/Source;)Lccsanokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 200
    :cond_0
    throw v0
.end method
