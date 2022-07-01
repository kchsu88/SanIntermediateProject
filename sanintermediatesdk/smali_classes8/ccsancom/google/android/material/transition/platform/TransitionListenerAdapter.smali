.class abstract Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;
.super Ljava/lang/Object;
.source "TransitionListenerAdapter.java"

# interfaces
.implements Lccsanandroid/transition/Transition$TransitionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lccsanandroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 35
    return-void
.end method

.method public onTransitionEnd(Lccsanandroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 32
    return-void
.end method

.method public onTransitionPause(Lccsanandroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 38
    return-void
.end method

.method public onTransitionResume(Lccsanandroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 41
    return-void
.end method

.method public onTransitionStart(Lccsanandroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 29
    return-void
.end method
