.class Lccsancom/vungle/warren/DownloadCallbackWrapper$2;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$advertisementId:Ljava/lang/String;

.field final synthetic val$exception:Lccsancom/vungle/warren/error/VungleException;

.field final synthetic val$request:Lccsancom/vungle/warren/AdRequest;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/DownloadCallbackWrapper;

    .line 38
    iput-object p1, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->this$0:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->val$exception:Lccsancom/vungle/warren/error/VungleException;

    iput-object p3, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->val$request:Lccsancom/vungle/warren/AdRequest;

    iput-object p4, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->val$advertisementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 41
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->this$0:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->access$000(Lccsancom/vungle/warren/DownloadCallbackWrapper;)Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->val$exception:Lccsancom/vungle/warren/error/VungleException;

    iget-object v2, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->val$request:Lccsancom/vungle/warren/AdRequest;

    iget-object v3, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$2;->val$advertisementId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 42
    return-void
.end method
