.class Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$2;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->animateScrim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 680
    iput-object p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$2;->this$0:Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/ValueAnimator;

    .line 683
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$2;->this$0:Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 684
    return-void
.end method
