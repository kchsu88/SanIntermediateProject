.class Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;
.super Ljava/lang/Object;
.source "AnimatorTracker.java"


# instance fields
.field private currentAnimator:Lccsanandroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCurrent()V
    .locals 1

    .line 33
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Lccsanandroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lccsanandroid/animation/Animator;->cancel()V

    .line 36
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Lccsanandroid/animation/Animator;

    .line 40
    return-void
.end method

.method public onNextAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 28
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->cancelCurrent()V

    .line 29
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Lccsanandroid/animation/Animator;

    .line 30
    return-void
.end method
