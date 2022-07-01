.class Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerCancelEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field final synthetic val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Download task is cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;->onDownloadError(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$100(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V

    .line 176
    return-void
.end method
