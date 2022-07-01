.class public final Lccsancom/google/android/material/transition/platform/Hold;
.super Lccsanandroid/transition/Visibility;
.source "Hold.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lccsanandroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroid/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroid/transition/TransitionValues;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroid/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroid/transition/TransitionValues;

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
