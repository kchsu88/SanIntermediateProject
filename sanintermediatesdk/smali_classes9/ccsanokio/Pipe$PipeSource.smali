.class final Lccsanokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lccsanokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokio/Pipe;

.field final timeout:Lccsanokio/Timeout;


# direct methods
.method constructor <init>(Lccsanokio/Pipe;)V
    .locals 1
    .param p1, "this$0"    # Lccsanokio/Pipe;

    .line 192
    iput-object p1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lccsanokio/Timeout;

    invoke-direct {v0}, Lccsanokio/Timeout;-><init>()V

    iput-object v0, p0, Lccsanokio/Pipe$PipeSource;->timeout:Lccsanokio/Timeout;

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

    .line 211
    iget-object v0, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v0, v0, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsanokio/Pipe;->sourceClosed:Z

    .line 213
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v1, v1, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lccsanokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v0, v0, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-boolean v1, v1, Lccsanokio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_2

    .line 199
    :goto_0
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v1, v1, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v1}, Lccsanokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 200
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-boolean v1, v1, Lccsanokio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    monitor-exit v0

    return-wide v1

    .line 201
    :cond_0
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->timeout:Lccsanokio/Timeout;

    iget-object v2, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v2, v2, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v1, v2}, Lccsanokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v1, v1, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lccsanokio/Buffer;->read(Lccsanokio/Buffer;J)J

    move-result-wide v1

    .line 205
    .local v1, "result":J
    iget-object v3, p0, Lccsanokio/Pipe$PipeSource;->this$0:Lccsanokio/Pipe;

    iget-object v3, v3, Lccsanokio/Pipe;->buffer:Lccsanokio/Buffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 206
    monitor-exit v0

    return-wide v1

    .line 197
    .end local v1    # "result":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sink":Lccsanokio/Buffer;
    .end local p2    # "byteCount":J
    throw v1

    .line 207
    .restart local p1    # "sink":Lccsanokio/Buffer;
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

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 218
    iget-object v0, p0, Lccsanokio/Pipe$PipeSource;->timeout:Lccsanokio/Timeout;

    return-object v0
.end method
