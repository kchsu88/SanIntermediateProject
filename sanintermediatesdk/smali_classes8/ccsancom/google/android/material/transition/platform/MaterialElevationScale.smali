.class public final Lccsancom/google/android/material/transition/platform/MaterialElevationScale;
.super Lccsancom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialElevationScale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/transition/platform/MaterialVisibility<",
        "Lccsancom/google/android/material/transition/platform/ScaleProvider;",
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

    .line 38
    invoke-static {p1}, Lccsancom/google/android/material/transition/platform/MaterialElevationScale;->createPrimaryAnimatorProvider(Z)Lccsancom/google/android/material/transition/platform/ScaleProvider;

    move-result-object v0

    invoke-static {}, Lccsancom/google/android/material/transition/platform/MaterialElevationScale;->createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 39
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/platform/MaterialElevationScale;->growing:Z

    .line 40
    return-void
.end method

.method private static createPrimaryAnimatorProvider(Z)Lccsancom/google/android/material/transition/platform/ScaleProvider;
    .locals 2
    .param p0, "growing"    # Z

    .line 47
    new-instance v0, Lccsancom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    .line 48
    .local v0, "scaleProvider":Lccsancom/google/android/material/transition/platform/ScaleProvider;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->setOutgoingEndScale(F)V

    .line 49
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->setIncomingStartScale(F)V

    .line 50
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 54
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 30
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 30
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isGrowing()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialElevationScale;->growing:Z

    return v0
.end method

.method public bridge synthetic onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
