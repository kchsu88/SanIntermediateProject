.class abstract Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private shadowSizeEnd:F

.field private shadowSizeStart:F

.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field private validValues:Z


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .param p2, "x1"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;

    .line 778
    invoke-direct {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 801
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateShapeElevation(F)V

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 803
    return-void
.end method

.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Lccsanandroid/animation/ValueAnimator;

    .line 787
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    if-nez v0, :cond_1

    .line 788
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    :goto_0
    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    .line 789
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->getTargetShadowSize()F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 793
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    iget v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    sub-float/2addr v2, v1

    .line 796
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 793
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateShapeElevation(F)V

    .line 797
    return-void
.end method
