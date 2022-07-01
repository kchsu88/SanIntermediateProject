.class public final Lccsancom/google/android/material/transition/MaterialElevationScale;
.super Lccsancom/google/android/material/transition/MaterialVisibility;
.source "MaterialElevationScale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/transition/MaterialVisibility<",
        "Lccsancom/google/android/material/transition/ScaleProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 0.85f


# instance fields
.field private final growing:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "growing"    # Z

    .line 33
    invoke-static {p1}, Lccsancom/google/android/material/transition/MaterialElevationScale;->createPrimaryAnimatorProvider(Z)Lccsancom/google/android/material/transition/ScaleProvider;

    move-result-object v0

    invoke-static {}, Lccsancom/google/android/material/transition/MaterialElevationScale;->createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/transition/MaterialVisibility;-><init>(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 34
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/MaterialElevationScale;->growing:Z

    .line 35
    return-void
.end method

.method private static createPrimaryAnimatorProvider(Z)Lccsancom/google/android/material/transition/ScaleProvider;
    .locals 2
    .param p0, "growing"    # Z

    .line 42
    new-instance v0, Lccsancom/google/android/material/transition/ScaleProvider;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    .line 43
    .local v0, "scaleProvider":Lccsancom/google/android/material/transition/ScaleProvider;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/ScaleProvider;->setOutgoingEndScale(F)V

    .line 44
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 45
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1

    .line 49
    new-instance v0, Lccsancom/google/android/material/transition/FadeProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/FadeProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/MaterialVisibility;->addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 26
    invoke-super {p0}, Lccsancom/google/android/material/transition/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 1

    .line 26
    invoke-super {p0}, Lccsancom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isGrowing()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/MaterialElevationScale;->growing:Z

    return v0
.end method

.method public bridge synthetic onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/MaterialVisibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/MaterialVisibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/MaterialVisibility;->removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
