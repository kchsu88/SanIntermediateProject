.class Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerSuccessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
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

    .line 140
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;->onDownloadComplete(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$100(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V

    .line 147
    return-void
.end method
