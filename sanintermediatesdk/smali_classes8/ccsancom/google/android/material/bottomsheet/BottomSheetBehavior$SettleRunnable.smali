.class Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field targetState:I

.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Lccsanandroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "targetState"    # I

    .line 1535
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    iput-object p2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Lccsanandroid/view/View;

    .line 1537
    iput p3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1538
    return-void
.end method

.method static synthetic access$300(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 1527
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    return v0
.end method

.method static synthetic access$302(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
    .param p1, "x1"    # Z

    .line 1527
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1542
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Lccsanandroid/view/View;

    invoke-static {v0, p0}, Lccsanandroidx/core/view/ViewCompat;->postOnAnimation(Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1547
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 1548
    return-void
.end method