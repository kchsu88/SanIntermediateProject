.class Lccsanokhttp3/internal/connection/RealConnection$1;
.super Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lccsanokhttp3/internal/connection/Exchange;)Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/connection/RealConnection;

.field final synthetic val$exchange:Lccsanokhttp3/internal/connection/Exchange;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/connection/RealConnection;ZLccsanokio/BufferedSource;Lccsanokio/BufferedSink;Lccsanokhttp3/internal/connection/Exchange;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/connection/RealConnection;
    .param p2, "client"    # Z
    .param p3, "source"    # Lccsanokio/BufferedSource;
    .param p4, "sink"    # Lccsanokio/BufferedSink;

    .line 556
    iput-object p1, p0, Lccsanokhttp3/internal/connection/RealConnection$1;->this$0:Lccsanokhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Lccsanokhttp3/internal/connection/RealConnection$1;->val$exchange:Lccsanokhttp3/internal/connection/Exchange;

    invoke-direct {p0, p2, p3, p4}, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLccsanokio/BufferedSource;Lccsanokio/BufferedSink;)V

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

    .line 558
    iget-object v0, p0, Lccsanokhttp3/internal/connection/RealConnection$1;->val$exchange:Lccsanokhttp3/internal/connection/Exchange;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lccsanokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    .line 559
    return-void
.end method
