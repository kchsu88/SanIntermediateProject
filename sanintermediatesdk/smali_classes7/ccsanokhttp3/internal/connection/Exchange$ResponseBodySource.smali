.class final Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;
.super Lccsanokio/ForwardingSource;
.source "Exchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResponseBodySource"
.end annotation


# instance fields
.field private bytesReceived:J

.field private closed:Z

.field private completed:Z

.field private final contentLength:J

.field final synthetic this$0:Lccsanokhttp3/internal/connection/Exchange;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/connection/Exchange;Lccsanokio/Source;J)V
    .locals 3
    .param p1, "this$0"    # Lccsanokhttp3/internal/connection/Exchange;
    .param p2, "delegate"    # Lccsanokio/Source;
    .param p3, "contentLength"    # J

    .line 274
    iput-object p1, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lccsanokhttp3/internal/connection/Exchange;

    .line 275
    invoke-direct {p0, p2}, Lccsanokio/ForwardingSource;-><init>(Lccsanokio/Source;)V

    .line 276
    iput-wide p3, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    .line 281
    :cond_0
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

    .line 310
    iget-boolean v0, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    .line 313
    :try_start_0
    invoke-super {p0}, Lccsanokio/ForwardingSource;->close()V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 318
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method complete(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 321
    iget-boolean v0, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 322
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    .line 323
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lccsanokhttp3/internal/connection/Exchange;

    iget-wide v2, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lccsanokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public read(Lccsanokio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-nez v0, :cond_4

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->delegate()Lccsanokio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsanokio/Source;->read(Lccsanokio/Buffer;J)J

    move-result-wide v0

    .line 287
    .local v0, "read":J
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 288
    invoke-virtual {p0, v2}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    .line 289
    return-wide v3

    .line 292
    :cond_0
    iget-wide v5, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    add-long/2addr v5, v0

    .line 293
    .local v5, "newBytesReceived":J
    iget-wide v7, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_2

    cmp-long v3, v5, v7

    if-gtz v3, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes but received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sink":Lccsanokio/Buffer;
    .end local p2    # "byteCount":J
    throw v2

    .line 298
    .restart local p1    # "sink":Lccsanokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_2
    :goto_0
    iput-wide v5, p0, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    .line 299
    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    .line 300
    invoke-virtual {p0, v2}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_3
    return-wide v0

    .line 304
    .end local v0    # "read":J
    .end local v5    # "newBytesReceived":J
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
