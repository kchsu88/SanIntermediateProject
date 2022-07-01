.class Lccsancom/google/android/material/internal/TextScale$1;
.super Ljava/lang/Object;
.source "TextScale.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/TextScale;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/TextScale;

.field final synthetic val$view:Lccsanandroid/widget/TextView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/TextScale;Lccsanandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/TextScale;

    .line 79
    iput-object p1, p0, Lccsancom/google/android/material/internal/TextScale$1;->this$0:Lccsancom/google/android/material/internal/TextScale;

    iput-object p2, p0, Lccsancom/google/android/material/internal/TextScale$1;->val$view:Lccsanandroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;

    .line 82
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 83
    .local v0, "animatedValue":F
    iget-object v1, p0, Lccsancom/google/android/material/internal/TextScale$1;->val$view:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setScaleX(F)V

    .line 84
    iget-object v1, p0, Lccsancom/google/android/material/internal/TextScale$1;->val$view:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setScaleY(F)V

    .line 85
    return-void
.end method
