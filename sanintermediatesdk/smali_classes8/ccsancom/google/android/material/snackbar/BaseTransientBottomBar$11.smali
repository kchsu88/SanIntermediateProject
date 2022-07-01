.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->startFadeInAnimation()V
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

    .line 923
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 926
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$11;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    .line 927
    return-void
.end method
