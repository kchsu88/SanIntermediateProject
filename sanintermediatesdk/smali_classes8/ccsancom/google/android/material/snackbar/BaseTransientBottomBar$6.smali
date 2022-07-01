.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;


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

    .line 714
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 5
    .param p1, "event"    # I

    .line 722
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    sget-object v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Lccsanandroid/os/Handler;

    sget-object v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 723
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    .line 722
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 724
    return-void
.end method

.method public show()V
    .locals 4

    .line 717
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    sget-object v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Lccsanandroid/os/Handler;

    sget-object v1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 718
    return-void
.end method
