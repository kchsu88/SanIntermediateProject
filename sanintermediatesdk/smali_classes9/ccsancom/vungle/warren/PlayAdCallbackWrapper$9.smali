.class Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/PlayAdCallbackWrapper;->onAdViewed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/PlayAdCallbackWrapper;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    .line 117
    iput-object p1, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;->this$0:Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;->this$0:Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->access$000(Lccsancom/vungle/warren/PlayAdCallbackWrapper;)Lccsancom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$9;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/PlayAdCallback;->onAdViewed(Ljava/lang/String;)V

    .line 121
    return-void
.end method