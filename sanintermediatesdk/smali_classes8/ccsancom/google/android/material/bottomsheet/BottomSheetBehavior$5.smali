.class Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1783
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;"
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput p2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "arguments"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 1786
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;->val$state:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 1787
    const/4 v0, 0x1

    return v0
.end method
