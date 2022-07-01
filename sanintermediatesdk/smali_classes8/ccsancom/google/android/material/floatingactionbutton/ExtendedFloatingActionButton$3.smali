.class Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field final synthetic val$callback:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

.field final synthetic val$strategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 648
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p2, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    iput-object p3, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$callback:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    .line 660
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationCancel()V

    .line 661
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 665
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationEnd()V

    .line 666
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$callback:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    invoke-interface {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->onChange(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 669
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 653
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationStart(Lccsanandroid/animation/Animator;)V

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    .line 655
    return-void
.end method
