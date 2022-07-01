.class public final Lccsancom/google/android/material/transition/platform/MaterialFadeThrough;
.super Lccsancom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialFadeThrough.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/transition/platform/MaterialVisibility<",
        "Lccsancom/google/android/material/transition/platform/FadeThroughProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_START_SCALE:F = 0.92f


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-static {}, Lccsancom/google/android/material/transition/platform/MaterialFadeThrough;->createPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/FadeThroughProvider;

    move-result-object v0

    invoke-static {}, Lccsancom/google/android/material/transition/platform/MaterialFadeThrough;->createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 34
    return-void
.end method

.method private static createPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/FadeThroughProvider;
    .locals 1

    .line 37
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeThroughProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeThroughProvider;-><init>()V

    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 2

    .line 41
    new-instance v0, Lccsancom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/ScaleProvider;-><init>()V

    .line 42
    .local v0, "scaleProvider":Lccsancom/google/android/material/transition/platform/ScaleProvider;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->setScaleOnDisappear(Z)V

    .line 43
    const v1, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->setIncomingStartScale(F)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 27
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 27
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
