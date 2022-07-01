.class Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.field final synthetic val$appBarLayout:Lccsancom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$expand:Z


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lccsancom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 1662
    .local p0, "this":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;, "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;"
    iput-object p1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->this$0:Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$appBarLayout:Lccsancom/google/android/material/appbar/AppBarLayout;

    iput-boolean p3, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$expand:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "arguments"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 1665
    .local p0, "this":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;, "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$appBarLayout:Lccsancom/google/android/material/appbar/AppBarLayout;

    iget-boolean v1, p0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;->val$expand:Z

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 1666
    const/4 v0, 0x1

    return v0
.end method
