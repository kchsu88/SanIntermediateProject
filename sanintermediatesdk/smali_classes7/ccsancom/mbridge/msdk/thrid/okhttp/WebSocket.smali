.class public interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract queueSize()J
.end method

.method public abstract request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
.end method

.method public abstract send(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Z
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method
