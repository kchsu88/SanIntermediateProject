.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 268
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 271
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$000(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$200(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$102(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 275
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 276
    return-void
.end method
