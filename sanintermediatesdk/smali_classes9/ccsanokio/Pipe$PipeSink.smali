.class final Lccsanokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lccsanokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokio/Pipe;

.field final timeout:Lccsanokio/PushableTimeout;


# direct methods
.method constructor <init>(Lccsanokio/Pipe;)V
    .locals 1
    .param p1, "this$0"    # Lccsanokio/Pipe;

    .line 102
    iput-object p1, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lccsanokio/PushableTimeout;

    invoke-direct {v0}, Lccsanokio/PushableTimeout;-><init>()V

    iput-object v0, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

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

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "delegate":Lccsanokio/Sink;
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v1, v1, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-boolean v2, v2, Lccsanokio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    .line 168
    :cond_0
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-static {v2}, Lccsanokio/Pipe;->access$000(Lccsanokio/Pipe;)Lccsanokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-static {v2}, Lccsanokio/Pipe;->access$000(Lccsanokio/Pipe;)Lccsanokio/Sink;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 171
    :cond_1
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-boolean v2, v2, Lccsanokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v2, v2, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v2}, Lccsanokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "source is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Lccsanokio/Sink;
    throw v2

    .line 172
    .restart local v0    # "delegate":Lccsanokio/Sink;
    :cond_3
    :goto_0
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lccsanokio/Pipe;->sinkClosed:Z

    .line 173
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v2, v2, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 175
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    if-eqz v0, :cond_4

    .line 178
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-interface {v0}, Lccsanokio/Sink;->timeout()Lccsanokio/Timeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanokio/PushableTimeout;->push(Lccsanokio/Timeout;)V

    .line 180
    :try_start_1
    invoke-interface {v0}, Lccsanokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-virtual {v1}, Lccsanokio/PushableTimeout;->pop()V

    .line 183
    goto :goto_2

    .line 182
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-virtual {v2}, Lccsanokio/PushableTimeout;->pop()V

    throw v1

    .line 185
    :cond_4
    :goto_2
    return-void

    .line 175
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "delegate":Lccsanokio/Sink;
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v1, v1, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-boolean v2, v2, Lccsanokio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_4

    .line 146
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-static {v2}, Lccsanokio/Pipe;->access$000(Lccsanokio/Pipe;)Lccsanokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-static {v2}, Lccsanokio/Pipe;->access$000(Lccsanokio/Pipe;)Lccsanokio/Sink;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-boolean v2, v2, Lccsanokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v2, v2, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v2}, Lccsanokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "source is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Lccsanokio/Sink;
    throw v2

    .line 151
    .restart local v0    # "delegate":Lccsanokio/Sink;
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    if-eqz v0, :cond_3

    .line 154
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-interface {v0}, Lccsanokio/Sink;->timeout()Lccsanokio/Timeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanokio/PushableTimeout;->push(Lccsanokio/Timeout;)V

    .line 156
    :try_start_1
    invoke-interface {v0}, Lccsanokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-virtual {v1}, Lccsanokio/PushableTimeout;->pop()V

    .line 159
    goto :goto_1

    .line 158
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-virtual {v2}, Lccsanokio/PushableTimeout;->pop()V

    throw v1

    .line 161
    :cond_3
    :goto_1
    return-void

    .line 144
    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Lccsanokio/Sink;
    throw v2

    .line 151
    .restart local v0    # "delegate":Lccsanokio/Sink;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 188
    iget-object v0, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    return-object v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "delegate":Lccsanokio/Sink;
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v1, v1, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-boolean v2, v2, Lccsanokio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_5

    .line 110
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_3

    .line 111
    iget-object v4, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-static {v4}, Lccsanokio/Pipe;->access$000(Lccsanokio/Pipe;)Lccsanokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 112
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    invoke-static {v2}, Lccsanokio/Pipe;->access$000(Lccsanokio/Pipe;)Lccsanokio/Sink;

    move-result-object v2

    move-object v0, v2

    .line 113
    goto :goto_1

    .line 116
    :cond_0
    iget-object v4, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-boolean v4, v4, Lccsanokio/Pipe;->sourceClosed:Z

    if-nez v4, :cond_2

    .line 118
    iget-object v4, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-wide v4, v4, Lccsanokio/Pipe;->maxBufferSize:J

    iget-object v6, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v6, v6, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v6}, Lccsanokio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 119
    .local v4, "bufferSpaceAvailable":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    .line 120
    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    iget-object v3, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v3, v3, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v2, v3}, Lccsanokio/PushableTimeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 121
    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 125
    .local v2, "bytesToWrite":J
    iget-object v6, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v6, v6, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v6, p1, v2, v3}, Lccsanokio/Buffer;->write(Lccsanokio/Buffer;J)V

    .line 126
    sub-long/2addr p2, v2

    .line 127
    iget-object v6, p0, Lccsanokio/Pipe$PipeSink;->this$0:Lccsanokio/Pipe;

    iget-object v6, v6, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 128
    .end local v2    # "bytesToWrite":J
    .end local v4    # "bufferSpaceAvailable":J
    goto :goto_0

    .line 116
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "source is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Lccsanokio/Sink;
    .end local p1    # "source":Lccsanokio/Buffer;
    .end local p2    # "byteCount":J
    throw v2

    .line 129
    .restart local v0    # "delegate":Lccsanokio/Sink;
    .restart local p1    # "source":Lccsanokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    if-eqz v0, :cond_4

    .line 132
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-interface {v0}, Lccsanokio/Sink;->timeout()Lccsanokio/Timeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanokio/PushableTimeout;->push(Lccsanokio/Timeout;)V

    .line 134
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lccsanokio/Sink;->write(Lccsanokio/Buffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object v1, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-virtual {v1}, Lccsanokio/PushableTimeout;->pop()V

    .line 137
    goto :goto_2

    .line 136
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanokio/Pipe$PipeSink;->timeout:Lccsanokio/PushableTimeout;

    invoke-virtual {v2}, Lccsanokio/PushableTimeout;->pop()V

    throw v1

    .line 139
    :cond_4
    :goto_2
    return-void

    .line 108
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Lccsanokio/Sink;
    .end local p1    # "source":Lccsanokio/Buffer;
    .end local p2    # "byteCount":J
    throw v2

    .line 129
    .restart local v0    # "delegate":Lccsanokio/Sink;
    .restart local p1    # "source":Lccsanokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method
