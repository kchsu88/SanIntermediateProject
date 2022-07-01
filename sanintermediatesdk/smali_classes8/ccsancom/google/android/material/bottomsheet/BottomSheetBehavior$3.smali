.class Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setSystemGestureInsets(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1277
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;"
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 1281
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getMandatorySystemGestureInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->access$102(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1282
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->access$200(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 1283
    return-object p2
.end method
