.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->connect(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

.field final synthetic val$request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    .line 193
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->val$request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 221
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 222
    return-void
.end method

.method public onResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 5
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 196
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->checkResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    nop

    .line 204
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->streamAllocation(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    move-result-object v0

    .line 205
    .local v0, "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->noNewStreams()V

    .line 206
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->connection()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->newWebSocketStreams(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    move-result-object v1

    .line 210
    .local v1, "streams":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v2, v3, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onOpen(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OkHttp WebSocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->val$request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v3, v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;)V

    .line 213
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->connection()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 214
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 197
    .end local v0    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .end local v1    # "streams":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/net/ProtocolException;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v1, v0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 199
    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    return-void
.end method
