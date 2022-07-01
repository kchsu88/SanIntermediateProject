.class Lccsanandroidx/transition/Transition$3;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/Transition;->animate(Lccsanandroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/Transition;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/Transition;

    .line 1911
    iput-object p1, p0, Lccsanandroidx/transition/Transition$3;->this$0:Lccsanandroidx/transition/Transition;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 1914
    iget-object v0, p0, Lccsanandroidx/transition/Transition$3;->this$0:Lccsanandroidx/transition/Transition;

    invoke-virtual {v0}, Lccsanandroidx/transition/Transition;->end()V

    .line 1915
    invoke-virtual {p1, p0}, Lccsanandroid/animation/Animator;->removeListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 1916
    return-void
.end method
