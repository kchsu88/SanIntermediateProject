.class Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"

# interfaces
.implements Lccsanandroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->addOnControllableInsetsChangedListener(Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

.field final synthetic val$listener:Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
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

    .line 737
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;->this$0:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;->val$listener:Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllableInsetsChanged(Lccsanandroid/view/WindowInsetsController;I)V
    .locals 2
    .param p1, "controller"    # Lccsanandroid/view/WindowInsetsController;
    .param p2, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "typeMask"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;->this$0:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iget-object v0, v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Lccsanandroid/view/WindowInsetsController;

    if-ne v0, p1, :cond_0

    .line 744
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;->val$listener:Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30$2;->this$0:Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iget-object v1, v1, Lccsanandroidx/core/view/WindowInsetsControllerCompat$Impl30;->mCompatController:Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    invoke-interface {v0, v1, p2}, Lccsanandroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Lccsanandroidx/core/view/WindowInsetsControllerCompat;I)V

    .line 747
    :cond_0
    return-void
.end method
