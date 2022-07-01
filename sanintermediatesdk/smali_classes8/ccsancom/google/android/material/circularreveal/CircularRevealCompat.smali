.class public final Lccsancom/google/android/material/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;FFF)Lccsanandroid/animation/Animator;
    .locals 8
    .param p0, "view"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "endRadius"    # F

    .line 57
    sget-object v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Lccsanandroid/util/Property;

    sget-object v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Lccsanandroid/animation/TypeEvaluator;

    const/4 v2, 0x1

    new-array v3, v2, [Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v4, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p3}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 58
    invoke-static {p0, v0, v1, v3}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 63
    .local v0, "revealInfoAnimator":Lccsanandroid/animation/Animator;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 66
    invoke-interface {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    .line 67
    .local v1, "revealInfo":Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    if-eqz v1, :cond_0

    .line 71
    iget v3, v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 72
    .local v3, "startRadius":F
    move-object v4, p0

    check-cast v4, Lccsanandroid/view/View;

    float-to-int v6, p1

    float-to-int v7, p2

    .line 73
    invoke-static {v4, v6, v7, v3, p3}, Lccsanandroid/view/ViewAnimationUtils;->createCircularReveal(Lccsanandroid/view/View;IIFF)Lccsanandroid/animation/Animator;

    move-result-object v4

    .line 75
    .local v4, "circularRevealAnimator":Lccsanandroid/animation/Animator;
    new-instance v6, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v6}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 76
    .local v6, "set":Lccsanandroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Lccsanandroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v4, v7, v2

    invoke-virtual {v6, v7}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 77
    return-object v6

    .line 68
    .end local v3    # "startRadius":F
    .end local v4    # "circularRevealAnimator":Lccsanandroid/animation/Animator;
    .end local v6    # "set":Lccsanandroid/animation/AnimatorSet;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "revealInfo":Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    :cond_1
    return-object v0
.end method

.method public static createCircularReveal(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;FFFF)Lccsanandroid/animation/Animator;
    .locals 7
    .param p0, "view"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 97
    sget-object v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Lccsanandroid/util/Property;

    sget-object v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Lccsanandroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v3, v2, [Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v4, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p3}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p4}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 98
    invoke-static {p0, v0, v1, v3}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 104
    .local v0, "revealInfoAnimator":Lccsanandroid/animation/Animator;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 105
    move-object v1, p0

    check-cast v1, Lccsanandroid/view/View;

    float-to-int v3, p1

    float-to-int v4, p2

    .line 106
    invoke-static {v1, v3, v4, p3, p4}, Lccsanandroid/view/ViewAnimationUtils;->createCircularReveal(Lccsanandroid/view/View;IIFF)Lccsanandroid/animation/Animator;

    move-result-object v1

    .line 108
    .local v1, "circularRevealAnimator":Lccsanandroid/animation/Animator;
    new-instance v3, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v3}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 109
    .local v3, "set":Lccsanandroid/animation/AnimatorSet;
    new-array v2, v2, [Lccsanandroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v3, v2}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 110
    return-object v3

    .line 112
    .end local v1    # "circularRevealAnimator":Lccsanandroid/animation/Animator;
    .end local v3    # "set":Lccsanandroid/animation/AnimatorSet;
    :cond_0
    return-object v0
.end method

.method public static createCircularRevealListener(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Lccsanandroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "view"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    .line 123
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method
