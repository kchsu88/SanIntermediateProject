.class Lccsanokhttp3/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lccsanokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/ws/RealWebSocket;->connect(Lccsanokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

.field final synthetic val$request:Lccsanokhttp3/Request;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/ws/RealWebSocket;Lccsanokhttp3/Request;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/ws/RealWebSocket;

    .line 190
    iput-object p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->val$request:Lccsanokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 216
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 217
    return-void
.end method

.method public onResponse(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 5
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "response"    # Lccsanokhttp3/Response;

    .line 192
    sget-object v0, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v0, p2}, Lccsanokhttp3/internal/Internal;->exchange(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/connection/Exchange;

    move-result-object v0

    .line 195
    .local v0, "exchange":Lccsanokhttp3/internal/connection/Exchange;
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, p2, v0}, Lccsanokhttp3/internal/ws/RealWebSocket;->checkUpgradeSuccess(Lccsanokhttp3/Response;Lccsanokhttp3/internal/connection/Exchange;)V

    .line 196
    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Exchange;->newWebSocketStreams()Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .local v1, "streams":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    nop

    .line 206
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OkHttp WebSocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->val$request:Lccsanokhttp3/Request;

    invoke-virtual {v3}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lccsanokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v3, v2, v1}, Lccsanokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lccsanokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 208
    iget-object v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    iget-object v3, v3, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    iget-object v4, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v3, v4, p2}, Lccsanokhttp3/WebSocketListener;->onOpen(Lccsanokhttp3/WebSocket;Lccsanokhttp3/Response;)V

    .line 209
    iget-object v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v3}, Lccsanokhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 197
    .end local v1    # "streams":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    :catch_1
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Exchange;->webSocketUpgradeFailed()V

    .line 199
    :cond_0
    iget-object v2, p0, Lccsanokhttp3/internal/ws/RealWebSocket$1;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v2, v1, p2}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 200
    invoke-static {p2}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 201
    return-void
.end method
