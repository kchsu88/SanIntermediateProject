.class Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$child:Lccsanandroid/view/View;

.field final synthetic val$finalState:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1069
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;"
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$child:Lccsanandroid/view/View;

    iput p3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$finalState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1072
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$child:Lccsanandroid/view/View;

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$finalState:I

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToState(Lccsanandroid/view/View;I)V

    .line 1073
    return-void
.end method
