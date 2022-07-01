.class public abstract Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;
.super Lccsancom/google/android/material/transformation/ExpandableBehavior;
.source "ExpandableTransformationBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currentAnimation:Lccsanandroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lccsancom/google/android/material/transformation/ExpandableBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/transformation/ExpandableBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;Lccsanandroid/animation/AnimatorSet;)Lccsanandroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;
    .param p1, "x1"    # Lccsanandroid/animation/AnimatorSet;

    .line 42
    iput-object p1, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Lccsanandroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method protected abstract onCreateExpandedStateChangeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Lccsanandroid/animation/AnimatorSet;
.end method

.method protected onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z
    .locals 4
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "animated"    # Z

    .line 75
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Lccsanandroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 76
    .local v2, "currentlyAnimating":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->cancel()V

    .line 80
    :cond_1
    nop

    .line 81
    invoke-virtual {p0, p1, p2, p3, v2}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->onCreateExpandedStateChangeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Lccsanandroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Lccsanandroid/animation/AnimatorSet;

    .line 82
    new-instance v3, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior$1;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior$1;-><init>(Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;)V

    invoke-virtual {v0, v3}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 90
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 91
    if-nez p4, :cond_2

    .line 94
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->end()V

    .line 97
    :cond_2
    return v1
.end method
