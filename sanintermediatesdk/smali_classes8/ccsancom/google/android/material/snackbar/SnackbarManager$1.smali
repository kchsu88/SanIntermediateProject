.class Lccsancom/google/android/material/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/SnackbarManager;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/SnackbarManager;

    .line 54
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/SnackbarManager$1;->this$0:Lccsancom/google/android/material/snackbar/SnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Lccsanandroid/os/Message;

    .line 57
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarManager$1;->this$0:Lccsancom/google/android/material/snackbar/SnackbarManager;

    iget-object v1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lccsancom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/SnackbarManager;->handleTimeout(Lccsancom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 60
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
