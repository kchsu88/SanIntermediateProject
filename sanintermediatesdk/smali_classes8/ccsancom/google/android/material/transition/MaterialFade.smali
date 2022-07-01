.class public final Lccsancom/google/android/material/transition/MaterialFade;
.super Lccsancom/google/android/material/transition/MaterialVisibility;
.source "MaterialFade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/transition/MaterialVisibility<",
        "Lccsancom/google/android/material/transition/FadeProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_END_THRESHOLD_ENTER:F = 0.3f

.field private static final DEFAULT_START_SCALE:F = 0.8f


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-static {}, Lccsancom/google/android/material/transition/MaterialFade;->createPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/FadeProvider;

    move-result-object v0

    invoke-static {}, Lccsancom/google/android/material/transition/MaterialFade;->createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/transition/MaterialVisibility;-><init>(Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 30
    return-void
.end method

.method private static createPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/FadeProvider;
    .locals 2

    .line 33
    new-instance v0, Lccsancom/google/android/material/transition/FadeProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/FadeProvider;-><init>()V

    .line 34
    .local v0, "fadeProvider":Lccsancom/google/android/material/transition/FadeProvider;
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/FadeProvider;->setIncomingEndThreshold(F)V

    .line 35
    return-object v0
.end method

.method private static createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/VisibilityAnimatorProvider;
    .locals 2

    .line 39
    new-instance v0, Lccsancom/google/android/material/transition/ScaleProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/ScaleProvider;-><init>()V

    .line 40
    .local v0, "scaleProvider":Lccsancom/google/android/material/transition/ScaleProvider;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/ScaleProvider;->setScaleOnDisappear(Z)V

    .line 41
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/transition/ScaleProvider;->setIncomingStartScale(F)V

    .line 42
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
