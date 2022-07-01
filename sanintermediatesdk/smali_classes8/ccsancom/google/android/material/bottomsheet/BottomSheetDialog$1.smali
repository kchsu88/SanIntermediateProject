.class Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 217
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 220
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-boolean v0, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 223
    :cond_0
    return-void
.end method
