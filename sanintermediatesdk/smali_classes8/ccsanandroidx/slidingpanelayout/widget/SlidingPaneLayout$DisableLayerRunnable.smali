.class Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableLayerRunnable"
.end annotation


# instance fields
.field final mChildView:Lccsanandroid/view/View;

.field final synthetic this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;Lccsanandroid/view/View;)V
    .locals 0
    .param p2, "childView"    # Lccsanandroid/view/View;

    .line 1602
    iput-object p1, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    iput-object p2, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Lccsanandroid/view/View;

    .line 1604
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1608
    iget-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 1609
    iget-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 1610
    iget-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v1, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateChildRegion(Lccsanandroid/view/View;)V

    .line 1612
    :cond_0
    iget-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, v0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1613
    return-void
.end method