.class abstract Lccsancom/google/android/material/transition/platform/MaterialVisibility;
.super Lccsanandroid/transition/Visibility;
.source "MaterialVisibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">",
        "Lccsanandroid/transition/Visibility;"
    }
.end annotation


# instance fields
.field private final additionalAnimatorProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private secondaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# direct methods
.method protected constructor <init>(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p2, "secondaryAnimatorProvider"    # Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    .local p1, "primaryAnimatorProvider":Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;, "TP;"
    invoke-direct {p0}, Lccsanandroid/transition/Visibility;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 47
    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 48
    sget-object v0, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroid/transition/Transition;

    .line 49
    return-void
.end method

.method private static addAnimatorIfNeeded(Ljava/util/List;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)V
    .locals 1
    .param p1, "animatorProvider"    # Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .param p2, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p3, "view"    # Lccsanandroid/view/View;
    .param p4, "appearing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroid/view/View;",
            "Z)V"
        }
    .end annotation

    .line 147
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    if-nez p1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    if-eqz p4, :cond_1

    .line 152
    invoke-interface {p1, p2, p3}, Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)Lccsanandroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {p1, p2, p3}, Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)Lccsanandroid/animation/Animator;

    move-result-object v0

    :goto_0
    nop

    .line 154
    .local v0, "animator":Lccsanandroid/animation/Animator;
    if-eqz v0, :cond_2

    .line 155
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    return-void
.end method

.method private createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)Lccsanandroid/animation/Animator;
    .locals 4
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "appearing"    # Z

    .line 126
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    new-instance v0, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v0}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 127
    .local v0, "set":Lccsanandroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    iget-object v2, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    invoke-static {v1, v2, p1, p2, p3}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)V

    .line 131
    iget-object v2, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    invoke-static {v1, v2, p1, p2, p3}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)V

    .line 133
    iget-object v2, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 134
    .local v3, "additionalAnimatorProvider":Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    invoke-static {v1, v3, p1, p2, p3}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)V

    .line 135
    .end local v3    # "additionalAnimatorProvider":Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v0, v1}, Lccsancom/google/android/material/animation/AnimatorSetCompat;->playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p1, "additionalAnimatorProvider"    # Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 90
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public clearAdditionalAnimatorProvider()V
    .locals 1

    .line 110
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    return-void
.end method

.method public getPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 68
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroid/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroid/transition/TransitionValues;

    .line 116
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroid/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroid/transition/TransitionValues;

    .line 122
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Z)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 1
    .param p1, "additionalAnimatorProvider"    # Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 100
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1, "secondaryAnimatorProvider"    # Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 77
    .local p0, "this":Lccsancom/google/android/material/transition/platform/MaterialVisibility;, "Lccsancom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 78
    return-void
.end method
