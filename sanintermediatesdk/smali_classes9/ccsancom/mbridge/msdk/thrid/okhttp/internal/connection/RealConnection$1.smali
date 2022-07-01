.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection$1;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->newWebSocketStreams(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ZLccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    .param p2, "client"    # Z
    .param p3, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .param p4, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 546
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    iput-object p5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection$1;->val$streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;-><init>(ZLccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection$1;->val$streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->codec()Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    move-result-object v2

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFinished(ZLccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;JLjava/io/IOException;)V

    .line 550
    return-void
.end method
