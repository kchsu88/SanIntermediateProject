.class Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
.super Lccsanokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$newStream:Lccsanokhttp3/internal/http2/Http2Stream;


# direct methods
.method varargs constructor <init>(Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lccsanokhttp3/internal/http2/Http2Stream;)V
    .locals 0
    .param p1, "this$1"    # Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 728
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0, p2, p3}, Lccsanokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 731
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lccsanokhttp3/internal/http2/Http2Connection;->listener:Lccsanokhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0, v1}, Lccsanokhttp3/internal/http2/Http2Connection$Listener;->onStream(Lccsanokhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v4, v4, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lccsanokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lccsanokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    :try_start_1
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Lccsanokhttp3/internal/http2/Http2Stream;

    sget-object v2, Lccsanokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v0}, Lccsanokhttp3/internal/http2/Http2Stream;->close(Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    goto :goto_0

    .line 737
    :catch_1
    move-exception v1

    .line 740
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
