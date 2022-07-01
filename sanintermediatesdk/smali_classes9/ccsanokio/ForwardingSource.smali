.class public abstract Lccsanokio/ForwardingSource;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lccsanokio/Source;


# instance fields
.field private final delegate:Lccsanokio/Source;


# direct methods
.method public constructor <init>(Lccsanokio/Source;)V
    .locals 2
    .param p1, "delegate"    # Lccsanokio/Source;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lccsanokio/ForwardingSource;->delegate:Lccsanokio/Source;

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

    .line 43
    iget-object v0, p0, Lccsanokio/ForwardingSource;->delegate:Lccsanokio/Source;

    invoke-interface {v0}, Lccsanokio/Source;->close()V

    .line 44
    return-void
.end method

.method public final delegate()Lccsanokio/Source;
    .locals 1

    .line 31
    iget-object v0, p0, Lccsanokio/ForwardingSource;->delegate:Lccsanokio/Source;

    return-object v0
.end method

.method public read(Lccsanokio/Buffer;J)J
    .locals 2
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lccsanokio/ForwardingSource;->delegate:Lccsanokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lccsanokio/Source;->read(Lccsanokio/Buffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 39
    iget-object v0, p0, Lccsanokio/ForwardingSource;->delegate:Lccsanokio/Source;

    invoke-interface {v0}, Lccsanokio/Source;->timeout()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokio/ForwardingSource;->delegate:Lccsanokio/Source;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
