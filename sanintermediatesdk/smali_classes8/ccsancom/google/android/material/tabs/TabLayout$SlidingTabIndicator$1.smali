.class Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$currentView:Lccsanandroid/view/View;

.field final synthetic val$targetView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3176
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iput-object p2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$currentView:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$targetView:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;

    .line 3179
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$currentView:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$targetView:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$1300(Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Lccsanandroid/view/View;Lccsanandroid/view/View;F)V

    .line 3180
    return-void
.end method
