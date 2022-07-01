.class Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$3;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


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

    .line 251
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$3;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;

    .line 255
    const/4 v0, 0x1

    return v0
.end method
