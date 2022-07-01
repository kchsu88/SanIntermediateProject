.class Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/appbar/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final layout:Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final parent:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic this$0:Lccsancom/google/android/material/appbar/HeaderBehavior;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/HeaderBehavior;Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)V
    .locals 0
    .param p2, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>.FlingRunnable;"
    .local p3, "layout":Lccsanandroid/view/View;, "TV;"
    iput-object p1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lccsancom/google/android/material/appbar/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 265
    iput-object p3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Lccsanandroid/view/View;

    .line 266
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 270
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>.FlingRunnable;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lccsancom/google/android/material/appbar/HeaderBehavior;

    iget-object v0, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lccsancom/google/android/material/appbar/HeaderBehavior;

    iget-object v0, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lccsancom/google/android/material/appbar/HeaderBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Lccsanandroid/view/View;

    iget-object v3, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v3}, Lccsanandroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)I

    .line 274
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Lccsanandroid/view/View;

    invoke-static {v0, p0}, Lccsanandroidx/core/view/ViewCompat;->postOnAnimation(Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lccsancom/google/android/material/appbar/HeaderBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Lccsanandroid/view/View;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method
