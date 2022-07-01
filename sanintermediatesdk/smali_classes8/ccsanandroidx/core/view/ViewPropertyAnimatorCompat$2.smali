.class Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;Lccsanandroid/view/View;)V
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

    .line 780
    iput-object p1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;->this$0:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iput-object p3, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueAnimator"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iget-object v1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Lccsanandroid/view/View;)V

    .line 784
    return-void
.end method
