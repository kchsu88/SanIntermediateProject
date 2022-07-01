.class Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$view"
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->this$0:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    iput-object p3, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Lccsanandroid/view/View;)V

    .line 746
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Lccsanandroid/view/View;)V

    .line 751
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Lccsanandroid/view/View;)V

    .line 756
    return-void
.end method
