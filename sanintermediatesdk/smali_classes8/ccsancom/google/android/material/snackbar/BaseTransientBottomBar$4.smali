.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsanandroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsancom/google/android/material/snackbar/ContentViewCallback;)V
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

    .line 406
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 412
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$902(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 413
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$1002(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 414
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$1102(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 415
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$4;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 416
    return-object p2
.end method
