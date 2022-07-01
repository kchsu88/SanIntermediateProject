.class final Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

.field final timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Pipe;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    .line 104
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    .line 125
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_2

    .line 111
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 112
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    monitor-exit v0

    return-wide v1

    .line 113
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v1

    .line 117
    .local v1, "result":J
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lccsancom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v3, v3, Lccsancom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    return-wide v1

    .line 109
    .end local v1    # "result":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sink":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .end local p2    # "byteCount":J
    throw v1

    .line 119
    .restart local p1    # "sink":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    return-object v0
.end method
