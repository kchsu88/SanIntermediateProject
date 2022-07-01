.class Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerStartEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
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

    .line 155
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;->val$downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;->onDownloadStart(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 161
    :cond_0
    return-void
.end method
