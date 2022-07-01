.class Lccsancom/google/android/material/appbar/AppBarLayout$2;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollElevationOverlayAnimation(Lccsancom/google/android/material/shape/MaterialShapeDrawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/AppBarLayout;Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/appbar/AppBarLayout;

    .line 874
    iput-object p1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$2;->this$0:Lccsancom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$2;->val$background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;

    .line 877
    iget-object v0, p0, Lccsancom/google/android/material/appbar/AppBarLayout$2;->val$background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 878
    return-void
.end method
