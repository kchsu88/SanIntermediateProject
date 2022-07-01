.class Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"

# interfaces
.implements Lccsanandroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->controlWindowInsetsAnimation(IJLccsanandroid/view/animation/Interpolator;Lccsanandroid/os/CancellationSignal;Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCompatAnimController:Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;

.field final synthetic this$0:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

.field final synthetic val$listener:Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->this$0:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const/4 p2, 0x0

    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;

    return-void
.end method


# virtual methods
.method public onCancelled(Lccsanandroid/view/WindowInsetsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Lccsanandroid/view/WindowInsetsAnimationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;

    :goto_0
    invoke-interface {v0, v1}, Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onCancelled(Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    .line 693
    return-void
.end method

.method public onFinished(Lccsanandroid/view/WindowInsetsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Lccsanandroid/view/WindowInsetsAnimationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onFinished(Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    .line 687
    return-void
.end method

.method public onReady(Lccsanandroid/view/WindowInsetsAnimationController;I)V
    .locals 2
    .param p1, "controller"    # Lccsanandroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "types"
        }
    .end annotation

    .line 678
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;-><init>(Lccsanandroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;

    .line 680
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    invoke-interface {v1, v0, p2}, Lccsanandroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onReady(Lccsanandroidx/core/view/WindowInsetsAnimationControllerCompat;I)V

    .line 681
    return-void
.end method
