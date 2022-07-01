.class final Lccsanokhttp3/internal/huc/StreamedRequestBody;
.super Lccsanokhttp3/internal/huc/OutputStreamRequestBody;
.source "StreamedRequestBody.java"

# interfaces
.implements Lccsanokhttp3/internal/http/UnrepeatableRequestBody;


# instance fields
.field private final pipe:Lccsanokio/Pipe;


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "expectedContentLength"    # J

    .line 32
    invoke-direct {p0}, Lccsanokhttp3/internal/huc/OutputStreamRequestBody;-><init>()V

    .line 30
    new-instance v0, Lccsanokio/Pipe;

    const-wide/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lccsanokio/Pipe;-><init>(J)V

    iput-object v0, p0, Lccsanokhttp3/internal/huc/StreamedRequestBody;->pipe:Lccsanokio/Pipe;

    .line 33
    invoke-virtual {v0}, Lccsanokio/Pipe;->sink()Lccsanokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lccsanokhttp3/internal/huc/StreamedRequestBody;->initOutputStream(Lccsanokio/BufferedSink;J)V

    .line 34
    return-void
.end method


# virtual methods
.method public writeTo(Lccsanokio/BufferedSink;)V
    .locals 6
    .param p1, "sink"    # Lccsanokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    .line 38
    .local v0, "buffer":Lccsanokio/Buffer;
    :goto_0
    iget-object v1, p0, Lccsanokhttp3/internal/huc/StreamedRequestBody;->pipe:Lccsanokio/Pipe;

    invoke-virtual {v1}, Lccsanokio/Pipe;->source()Lccsanokio/Source;

    move-result-object v1

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lccsanokio/Source;->read(Lccsanokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v0}, Lccsanokio/Buffer;->size()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lccsanokio/BufferedSink;->write(Lccsanokio/Buffer;J)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
