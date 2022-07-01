.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->startFadeOutAnimation(I)V
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

    .line 936
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iput p2, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;->val$event:I

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 939
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$12;->val$event:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    .line 940
    return-void
.end method
