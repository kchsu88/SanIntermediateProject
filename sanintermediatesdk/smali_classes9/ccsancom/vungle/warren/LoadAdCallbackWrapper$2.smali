.class Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/LoadAdCallbackWrapper;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/LoadAdCallbackWrapper;

.field final synthetic val$exception:Lccsancom/vungle/warren/error/VungleException;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/LoadAdCallbackWrapper;

    .line 33
    iput-object p1, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;->this$0:Lccsancom/vungle/warren/LoadAdCallbackWrapper;

    iput-object p2, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;->val$exception:Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;->this$0:Lccsancom/vungle/warren/LoadAdCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->access$000(Lccsancom/vungle/warren/LoadAdCallbackWrapper;)Lccsancom/vungle/warren/LoadAdCallback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;->val$exception:Lccsancom/vungle/warren/error/VungleException;

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 37
    return-void
.end method
