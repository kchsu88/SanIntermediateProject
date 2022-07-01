.class Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    .line 265
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 268
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 269
    .local v0, "scrollPos":I
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 270
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 271
    return-void
.end method
