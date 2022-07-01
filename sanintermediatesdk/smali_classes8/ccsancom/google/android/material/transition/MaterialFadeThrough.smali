.class public final Lccsancom/google/android/material/transition/MaterialFadeThrough;
.super Lccsancom/google/android/material/transition/MaterialVisibility;
.source "MaterialFadeThrough.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/transition/MaterialVisibility<",
        "Lccsancom/google/android/material/transition/FadeThroughProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_START_SCALE:F = 0.92f


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-static {}, Lccsancom/google/android/material/transition/MaterialFadeThrough;->createPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/FadeThroughProvider;

    move-result-object v0

    invoke-static {}, Lccsancom/google/android/material/transition/MaterialFadeThrough;->createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/transition/MaterialVisibility;-><init>(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 29
    return-void
.end method

.method private static createPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/FadeThroughProvider;
    .locals 1

    .line 32
    new-instance v0, Lccsancom/google/android/material/transition/FadeThroughProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/FadeThroughProvider;-><init>()V

    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 2

    .line 36
    new-instance v0, Lccsancom/google/android/material/transition/ScaleProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/ScaleProvider;-><init>()V

    .line 37
    .local v0, "scaleProvider":Lccsancom/google/android/material/transition/ScaleProvider;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    .line 38
    const v1, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/MaterialVisibility;->addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 23
    invoke-super {p0}, Lccsancom/google/android/material/transition/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1

    .line 23
    invoke-super {p0}, Lccsancom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/MaterialVisibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/MaterialVisibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/MaterialVisibility;->removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
