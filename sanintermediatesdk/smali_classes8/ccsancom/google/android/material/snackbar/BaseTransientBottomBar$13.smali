.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->getAlphaAnimator([F)Lccsanandroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 949
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;

    .line 952
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setAlpha(F)V

    .line 953
    return-void
.end method
