.class Lccsancom/vungle/warren/DownloadCallbackWrapper$3;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/DownloadCallbackWrapper;->onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field final synthetic val$placement:Lccsancom/vungle/warren/model/Placement;

.field final synthetic val$request:Lccsancom/vungle/warren/AdRequest;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/DownloadCallbackWrapper;

    .line 50
    iput-object p1, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->this$0:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->val$request:Lccsancom/vungle/warren/AdRequest;

    iput-object p3, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->val$placement:Lccsancom/vungle/warren/model/Placement;

    iput-object p4, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 53
    iget-object v0, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->this$0:Lccsancom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/DownloadCallbackWrapper;->access$000(Lccsancom/vungle/warren/DownloadCallbackWrapper;)Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->val$request:Lccsancom/vungle/warren/AdRequest;

    iget-object v2, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->val$placement:Lccsancom/vungle/warren/model/Placement;

    iget-object v3, p0, Lccsancom/vungle/warren/DownloadCallbackWrapper$3;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-interface {v0, v1, v2, v3}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 54
    return-void
.end method
