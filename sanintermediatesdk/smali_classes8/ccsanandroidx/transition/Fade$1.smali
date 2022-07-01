.class Lccsanandroidx/transition/Fade$1;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/Fade;->createAnimation(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/Fade;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/Fade;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/Fade;

    .line 135
    iput-object p1, p0, Lccsanandroidx/transition/Fade$1;->this$0:Lccsanandroidx/transition/Fade;

    iput-object p2, p0, Lccsanandroidx/transition/Fade$1;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 138
    iget-object v0, p0, Lccsanandroidx/transition/Fade$1;->val$view:Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 139
    iget-object v0, p0, Lccsanandroidx/transition/Fade$1;->val$view:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/transition/ViewUtils;->clearNonTransitionAlpha(Lccsanandroid/view/View;)V

    .line 140
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 141
    return-void
.end method
