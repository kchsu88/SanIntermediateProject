.class public final Lccsancom/google/android/material/transition/platform/FadeThroughProvider;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# static fields
.field static final PROGRESS_THRESHOLD:F = 0.35f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFadeThroughAnimator(Lccsanandroid/view/View;FFFFF)Lccsanandroid/animation/Animator;
    .locals 8
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startFraction"    # F
    .param p4, "endFraction"    # F
    .param p5, "originalAlpha"    # F

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 79
    .local v0, "animator":Lccsanandroid/animation/ValueAnimator;
    new-instance v7, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$1;-><init>(Lccsanandroid/view/View;FFFF)V

    invoke-virtual {v0, v7}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    new-instance v1, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;

    invoke-direct {v1, p0, p5}, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;-><init>(Lccsanandroid/view/View;F)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 95
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)Lccsanandroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 48
    invoke-virtual {p2}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    move v3, v0

    .line 49
    .local v3, "originalAlpha":F
    :goto_0
    const/4 v2, 0x0

    const v4, 0x3eb33333    # 0.35f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p2

    move v6, v3

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Lccsanandroid/view/View;FFFFF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)Lccsanandroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 61
    invoke-virtual {p2}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    move v2, v0

    .line 62
    .local v2, "originalAlpha":F
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3eb33333    # 0.35f

    move-object v1, p2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Lccsanandroid/view/View;FFFFF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
