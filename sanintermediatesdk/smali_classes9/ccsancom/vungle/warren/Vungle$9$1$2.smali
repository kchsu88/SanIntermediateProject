.class Lccsancom/vungle/warren/Vungle$9$1$2;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle$9$1;->onFailure(Lccsancom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/Vungle$9$1;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle$9$1;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/Vungle$9$1;

    .line 1053
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1056
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-boolean v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->val$finalStreamingOnly:Z

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v1, v1, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v1, v1, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->val$request:Lccsancom/vungle/warren/AdRequest;

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v1, v1, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v1, v1, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9$1;->val$placement:Lccsancom/vungle/warren/model/Placement;

    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9$1$2;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v3, v3, Lccsancom/vungle/warren/Vungle$9$1;->val$finalAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-static {v0, v1, v2, v3}, Lccsancom/vungle/warren/Vungle;->access$1900(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1061
    :goto_0
    return-void
.end method
