.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->writeSynResetLater(ILccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 339
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    iput p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->val$errorCode:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 342
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->val$errorCode:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->writeSynReset(ILccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->access$000(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
