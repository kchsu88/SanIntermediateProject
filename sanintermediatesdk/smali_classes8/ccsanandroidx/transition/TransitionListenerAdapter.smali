.class public Lccsanandroidx/transition/TransitionListenerAdapter;
.super Ljava/lang/Object;
.source "TransitionListenerAdapter.java"

# interfaces
.implements Lccsanandroidx/transition/Transition$TransitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 39
    return-void
.end method

.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 35
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 43
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 47
    return-void
.end method

.method public onTransitionStart(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 31
    return-void
.end method
