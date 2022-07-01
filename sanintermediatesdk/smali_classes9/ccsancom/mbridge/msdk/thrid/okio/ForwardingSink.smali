.class public abstract Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Sink;


# instance fields
.field private final delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V
    .locals 2
    .param p1, "delegate"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 27
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->close()V

    .line 48
    return-void
.end method

.method public final delegate()Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 1

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->flush()V

    .line 40
    return-void
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 43
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 1
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->delegate:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 36
    return-void
.end method
