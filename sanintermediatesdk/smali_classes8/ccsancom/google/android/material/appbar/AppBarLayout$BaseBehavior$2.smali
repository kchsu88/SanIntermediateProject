.class Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addAccessibilityScrollActions(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.field final synthetic val$appBarLayout:Lccsancom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$coordinatorLayout:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic val$dy:I

.field final synthetic val$scrollingView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 1630
    .local p0, "this":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;, "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;"
    iput-object p1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$coordinatorLayout:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$appBarLayout:Lccsancom/google/android/material/appbar/AppBarLayout;

    iput-object p4, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$scrollingView:Lccsanandroid/view/View;

    iput p5, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 8
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "arguments"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 1633
    .local p0, "this":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;, "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$coordinatorLayout:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$appBarLayout:Lccsancom/google/android/material/appbar/AppBarLayout;

    iget-object v3, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$scrollingView:Lccsanandroid/view/View;

    iget v5, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->val$dy:I

    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;II[II)V

    .line 1641
    const/4 v0, 0x1

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
