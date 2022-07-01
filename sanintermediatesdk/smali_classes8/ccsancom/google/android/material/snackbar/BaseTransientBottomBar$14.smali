.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->getScaleAnimator([F)Lccsanandroid/animation/ValueAnimator;
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

    .line 962
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;

    .line 965
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;"
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 966
    .local v0, "scale":F
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setScaleX(F)V

    .line 967
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$14;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setScaleY(F)V

    .line 968
    return-void
.end method
