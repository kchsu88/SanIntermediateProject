.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1037
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;->previousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/ValueAnimator;

    .line 1042
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;"
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1043
    .local v0, "currentAnimatedIntValue":I
    invoke-static {}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v2, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;->previousAnimatedIntValue:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    goto :goto_0

    .line 1049
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 1051
    :goto_0
    iput v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$18;->previousAnimatedIntValue:I

    .line 1052
    return-void
.end method
