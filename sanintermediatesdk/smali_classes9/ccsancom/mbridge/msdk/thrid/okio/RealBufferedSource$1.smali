.class Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    .line 422
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 445
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->close()V

    .line 451
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 426
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    .line 427
    .local v0, "count":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, -0x1

    return v2

    .line 429
    .end local v0    # "count":J
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 424
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    .line 434
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 436
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 437
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v0

    .line 438
    .local v0, "count":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, -0x1

    return v2

    .line 441
    .end local v0    # "count":J
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->read([BII)I

    move-result v0

    return v0

    .line 433
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource$1;->this$0:Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
