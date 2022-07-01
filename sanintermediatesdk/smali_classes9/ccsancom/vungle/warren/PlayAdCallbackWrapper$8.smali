.class Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/PlayAdCallbackWrapper;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/PlayAdCallbackWrapper;

.field final synthetic val$exception:Lccsancom/vungle/warren/error/VungleException;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    .line 105
    iput-object p1, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;->this$0:Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;->val$exception:Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;->this$0:Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/PlayAdCallbackWrapper;->access$000(Lccsancom/vungle/warren/PlayAdCallbackWrapper;)Lccsancom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/PlayAdCallbackWrapper$8;->val$exception:Lccsancom/vungle/warren/error/VungleException;

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 109
    return-void
.end method
