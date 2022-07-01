.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;
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

    .line 281
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 284
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$400(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 290
    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$500(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$600(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 291
    .local v0, "currentInsetBottom":I
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$700(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 293
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 297
    .local v1, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_2

    .line 299
    invoke-static {}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$800()Ljava/lang/String;

    move-result-object v2

    .line 298
    const-string v3, "Unable to apply gesture inset because layout params are not MarginLayoutParams"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 305
    :cond_2
    move-object v2, v1

    check-cast v2, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 306
    .local v2, "marginParams":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v4, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v4}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$700(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 307
    iget-object v3, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v3, v3, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->requestLayout()V

    .line 308
    return-void

    .line 285
    .end local v0    # "currentInsetBottom":I
    .end local v1    # "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    .end local v2    # "marginParams":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_0
    return-void
.end method
