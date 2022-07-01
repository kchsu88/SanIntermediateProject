.class Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 3218
    iput-object p1, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3219
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;

    .line 3223
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3224
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 3226
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;

    .line 3230
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 3232
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3233
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Lccsanandroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 3235
    :cond_0
    return-void
.end method
