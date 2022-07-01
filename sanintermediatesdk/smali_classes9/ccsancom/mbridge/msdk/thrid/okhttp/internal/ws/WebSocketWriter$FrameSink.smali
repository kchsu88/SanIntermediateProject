.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    .line 215
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 255
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 256
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 243
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 246
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 11
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 227
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 229
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    .local v0, "deferWrite":Z
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v9

    .line 232
    .local v9, "emitCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v9, v2

    if-lez v4, :cond_1

    if-nez v0, :cond_1

    .line 233
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v8, 0x0

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 234
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 236
    :cond_1
    return-void

    .line 222
    .end local v0    # "deferWrite":Z
    .end local v9    # "emitCount":J
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
