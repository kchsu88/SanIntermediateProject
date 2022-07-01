.class final Lccsanokhttp3/internal/huc/BufferedRequestBody;
.super Lccsanokhttp3/internal/huc/OutputStreamRequestBody;
.source "BufferedRequestBody.java"


# instance fields
.field final buffer:Lccsanokio/Buffer;

.field contentLength:J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "expectedContentLength"    # J

    .line 35
    invoke-direct {p0}, Lccsanokhttp3/internal/huc/OutputStreamRequestBody;-><init>()V

    .line 32
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->buffer:Lccsanokio/Buffer;

    .line 33
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->contentLength:J

    .line 36
    invoke-virtual {p0, v0, p1, p2}, Lccsanokhttp3/internal/huc/BufferedRequestBody;->initOutputStream(Lccsanokio/BufferedSink;J)V

    .line 37
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-wide v0, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->contentLength:J

    return-wide v0
.end method

.method public prepareToSendRequest(Lccsanokhttp3/Request;)Lccsanokhttp3/Request;
    .locals 4
    .param p1, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lccsanokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lccsanokhttp3/internal/huc/BufferedRequestBody;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 52
    iget-object v1, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v1}, Lccsanokio/Buffer;->size()J

    move-result-wide v1

    iput-wide v1, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->contentLength:J

    .line 53
    invoke-virtual {p1}, Lccsanokhttp3/Request;->newBuilder()Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 54
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lccsanokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->buffer:Lccsanokio/Buffer;

    .line 55
    invoke-virtual {v2}, Lccsanokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lccsanokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public writeTo(Lccsanokio/BufferedSink;)V
    .locals 6
    .param p1, "sink"    # Lccsanokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->buffer:Lccsanokio/Buffer;

    invoke-interface {p1}, Lccsanokio/BufferedSink;->buffer()Lccsanokio/Buffer;

    move-result-object v1

    iget-object v2, p0, Lccsanokhttp3/internal/huc/BufferedRequestBody;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v2}, Lccsanokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lccsanokio/Buffer;->copyTo(Lccsanokio/Buffer;JJ)Lccsanokio/Buffer;

    .line 61
    return-void
.end method
