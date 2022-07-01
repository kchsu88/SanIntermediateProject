.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1025
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iput p2, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$event:I

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 1033
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$event:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    .line 1034
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 1028
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$1600(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)Lccsancom/google/android/material/snackbar/ContentViewCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lccsancom/google/android/material/snackbar/ContentViewCallback;->animateContentOut(II)V

    .line 1029
    return-void
.end method
