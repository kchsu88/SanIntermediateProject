.class Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;
.super Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomSheetDismissCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;
    .param p2, "x1"    # Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;

    .line 99
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onSlide(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "bottomSheet"    # Lccsanandroid/view/View;
    .param p2, "slideOffset"    # F

    .line 109
    return-void
.end method

.method public onStateChanged(Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "bottomSheet"    # Lccsanandroid/view/View;
    .param p2, "newState"    # I

    .line 103
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-static {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->access$100(Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 106
    :cond_0
    return-void
.end method
