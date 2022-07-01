.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->setUpBehavior(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
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

    .line 835
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 838
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;"
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 841
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 842
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 846
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 850
    :pswitch_0
    invoke-static {}, Lccsancom/google/android/material/snackbar/SnackbarManager;->getInstance()Lccsancom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/SnackbarManager;->pauseTimeout(Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 851
    goto :goto_0

    .line 854
    :pswitch_1
    invoke-static {}, Lccsancom/google/android/material/snackbar/SnackbarManager;->getInstance()Lccsancom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$9;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/SnackbarManager;->restoreTimeoutIfPaused(Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 855
    nop

    .line 859
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
