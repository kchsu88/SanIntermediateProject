.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V
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

    .line 734
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 737
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 738
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getRootWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 739
    .local v0, "insets":Lccsanandroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getMandatorySystemGestureInsets()Lccsanandroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Lccsanandroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$702(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 741
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 744
    .end local v0    # "insets":Lccsanandroid/view/WindowInsets;
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 748
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7$1;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7$1;-><init>(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$7;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    :cond_0
    return-void
.end method