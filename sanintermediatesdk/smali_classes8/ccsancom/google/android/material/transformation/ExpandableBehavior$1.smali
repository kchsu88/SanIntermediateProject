.class Lccsancom/google/android/material/transformation/ExpandableBehavior$1;
.super Ljava/lang/Object;
.source "ExpandableBehavior.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transformation/ExpandableBehavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transformation/ExpandableBehavior;

.field final synthetic val$child:Lccsanandroid/view/View;

.field final synthetic val$dep:Lccsancom/google/android/material/expandable/ExpandableWidget;

.field final synthetic val$expectedState:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transformation/ExpandableBehavior;Lccsanandroid/view/View;ILccsancom/google/android/material/expandable/ExpandableWidget;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transformation/ExpandableBehavior;

    .line 106
    iput-object p1, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->this$0:Lccsancom/google/android/material/transformation/ExpandableBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$child:Lccsanandroid/view/View;

    iput p3, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$expectedState:I

    iput-object p4, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$dep:Lccsancom/google/android/material/expandable/ExpandableWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 109
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$child:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 111
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->this$0:Lccsancom/google/android/material/transformation/ExpandableBehavior;

    invoke-static {v0}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->access$000(Lccsancom/google/android/material/transformation/ExpandableBehavior;)I

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$expectedState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->this$0:Lccsancom/google/android/material/transformation/ExpandableBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$dep:Lccsancom/google/android/material/expandable/ExpandableWidget;

    move-object v3, v1

    check-cast v3, Lccsanandroid/view/View;

    iget-object v4, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;->val$child:Lccsanandroid/view/View;

    invoke-interface {v1}, Lccsancom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z

    .line 114
    :cond_0
    return v2
.end method
