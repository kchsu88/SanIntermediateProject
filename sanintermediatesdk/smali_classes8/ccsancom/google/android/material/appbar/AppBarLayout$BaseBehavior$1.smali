.class Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.field final synthetic val$child:Lccsancom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$coordinatorLayout:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 1413
    .local p0, "this":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;, "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;"
    iput-object p1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$coordinatorLayout:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$child:Lccsancom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Lccsanandroid/animation/ValueAnimator;

    .line 1416
    .local p0, "this":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;, "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$coordinatorLayout:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$child:Lccsancom/google/android/material/appbar/AppBarLayout;

    .line 1417
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1416
    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)I

    .line 1418
    return-void
.end method
