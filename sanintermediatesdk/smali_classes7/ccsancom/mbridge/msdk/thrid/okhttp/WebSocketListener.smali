.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onClosing(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public onFailure(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Ljava/lang/Throwable;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    return-void
.end method

.method public onMessage(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 0
    .param p1, "webSocket"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .param p2, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 40
    return-void
.end method

.method public onMessage(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public onOpen(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 28
    return-void
.end method
