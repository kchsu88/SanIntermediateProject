.class public abstract Lccsanokhttp3/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lccsanokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lccsanokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 49
    return-void
.end method

.method public onClosing(Lccsanokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lccsanokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public onFailure(Lccsanokhttp3/WebSocket;Ljava/lang/Throwable;Lccsanokhttp3/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lccsanokhttp3/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lccsanokhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    return-void
.end method

.method public onMessage(Lccsanokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lccsanokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onMessage(Lccsanokhttp3/WebSocket;Lccsanokio/ByteString;)V
    .locals 0
    .param p1, "webSocket"    # Lccsanokhttp3/WebSocket;
    .param p2, "bytes"    # Lccsanokio/ByteString;

    .line 35
    return-void
.end method

.method public onOpen(Lccsanokhttp3/WebSocket;Lccsanokhttp3/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lccsanokhttp3/WebSocket;
    .param p2, "response"    # Lccsanokhttp3/Response;

    .line 27
    return-void
.end method
