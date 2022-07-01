.class public Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COLLAPSE_DELAY:J = 0x0L

.field public static final COLLAPSE_DURATION:J = 0x96L

.field public static final EXPAND_DELAY:J = 0x4bL

.field public static final EXPAND_DURATION:J = 0x96L


# instance fields
.field private final collapseTiming:Lccsancom/google/android/material/animation/MotionTiming;

.field private final expandTiming:Lccsancom/google/android/material/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 52
    new-instance v0, Lccsancom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x4b

    const-wide/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lccsancom/google/android/material/animation/MotionTiming;

    .line 53
    new-instance v0, Lccsancom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lccsancom/google/android/material/animation/MotionTiming;

    .line 55
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lccsancom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x4b

    const-wide/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lccsancom/google/android/material/animation/MotionTiming;

    .line 53
    new-instance v0, Lccsancom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lccsancom/google/android/material/animation/MotionTiming;

    .line 59
    return-void
.end method

.method private createScrimAnimation(Lccsanandroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "expanded"    # Z
    .param p3, "currentlyAnimating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p4, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p5, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lccsancom/google/android/material/animation/MotionTiming;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lccsancom/google/android/material/animation/MotionTiming;

    .line 115
    .local v0, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 116
    if-nez p3, :cond_1

    .line 117
    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 119
    :cond_1
    sget-object v1, Lccsanandroid/view/View;->ALPHA:Lccsanandroid/util/Property;

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    invoke-static {p1, v1, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Lccsanandroid/animation/Animator;
    goto :goto_1

    .line 121
    .end local v1    # "animator":Lccsanandroid/animation/Animator;
    :cond_2
    sget-object v4, Lccsanandroid/view/View;->ALPHA:Lccsanandroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v2

    invoke-static {p1, v4, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 124
    .restart local v1    # "animator":Lccsanandroid/animation/Animator;
    :goto_1
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 125
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 63
    instance-of v0, p3, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    return v0
.end method

.method protected onCreateExpandedStateChangeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Lccsanandroid/animation/AnimatorSet;
    .locals 7
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v6, "listeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Lccsanandroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    .line 85
    new-instance v1, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v1}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 86
    .local v1, "set":Lccsanandroid/animation/AnimatorSet;
    invoke-static {v1, v0}, Lccsancom/google/android/material/animation/AnimatorSetCompat;->playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 87
    new-instance v2, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior$1;

    invoke-direct {v2, p0, p3, p2}, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior$1;-><init>(Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;ZLccsanandroid/view/View;)V

    invoke-virtual {v1, v2}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 103
    return-object v1
.end method

.method public onTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 70
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->onTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
