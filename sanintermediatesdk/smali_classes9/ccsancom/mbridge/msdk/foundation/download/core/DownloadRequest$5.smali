.class Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerProcessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field final synthetic val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

.field final synthetic val$downloadProgress:Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadProgress:Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$200(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$200(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadProgress:Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;->onProgress(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 188
    :cond_0
    return-void
.end method
