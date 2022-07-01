.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V
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

    .line 986
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 995
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    .line 996
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 989
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$15;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$1600(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)Lccsancom/google/android/material/snackbar/ContentViewCallback;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lccsancom/google/android/material/snackbar/ContentViewCallback;->animateContentIn(II)V

    .line 991
    return-void
.end method
