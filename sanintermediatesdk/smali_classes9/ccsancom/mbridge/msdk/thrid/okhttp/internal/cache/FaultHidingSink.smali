.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;
.super Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V
    .locals 0
    .param p1, "delegate"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 28
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 60
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 50
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .line 65
    return-void
.end method

.method public write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->skip(J)V

    .line 34
    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 40
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
