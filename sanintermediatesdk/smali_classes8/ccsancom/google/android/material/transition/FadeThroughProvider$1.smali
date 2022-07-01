.class final Lccsancom/google/android/material/transition/FadeThroughProvider$1;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/FadeThroughProvider;->createFadeThroughAnimator(Lccsanandroid/view/View;FFFFF)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endFraction:F

.field final synthetic val$endValue:F

.field final synthetic val$startFraction:F

.field final synthetic val$startValue:F

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;FFFF)V
    .locals 0

    .line 75
    iput-object p1, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$view:Lccsanandroid/view/View;

    iput p2, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$startValue:F

    iput p3, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$endValue:F

    iput p4, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$startFraction:F

    iput p5, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$endFraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Lccsanandroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 79
    .local v0, "progress":F
    iget-object v1, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$view:Lccsanandroid/view/View;

    iget v2, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$startValue:F

    iget v3, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$endValue:F

    iget v4, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$startFraction:F

    iget v5, p0, Lccsancom/google/android/material/transition/FadeThroughProvider$1;->val$endFraction:F

    invoke-static {v2, v3, v4, v5, v0}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 80
    return-void
.end method
