.class Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

.field mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2446
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 2543
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    instance-of v0, v0, Lccsanandroidx/appcompat/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2544
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {v0}, Lccsanandroidx/appcompat/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2547
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    .line 2548
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Lccsanandroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    .line 2549
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    .line 2551
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2552
    iput-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 2553
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2554
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2556
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 2506
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 2507
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Lccsanandroid/widget/ImageButton;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageButton;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 2508
    .local v0, "collapseButtonParent":Lccsanandroid/view/ViewParent;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2509
    instance-of v2, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2510
    move-object v2, v0

    check-cast v2, Lccsanandroid/view/ViewGroup;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Lccsanandroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 2512
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v2, v1, Lccsanandroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Lccsanandroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;)V

    .line 2514
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Lccsanandroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    .line 2515
    iput-object p2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 2516
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 2517
    .local v1, "expandedActionParent":Lccsanandroid/view/ViewParent;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    if-eq v1, v2, :cond_3

    .line 2518
    instance-of v3, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2519
    move-object v3, v1

    check-cast v3, Lccsanandroid/view/ViewGroup;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    invoke-virtual {v3, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 2521
    :cond_2
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v2

    .line 2522
    .local v2, "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    const v3, 0x800003

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget v4, v4, Lccsanandroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2523
    const/4 v3, 0x2

    iput v3, v2, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2524
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    invoke-virtual {v3, v2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2525
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v4, v3, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    invoke-virtual {v3, v4}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;)V

    .line 2528
    .end local v2    # "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_3
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2529
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2530
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2532
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    instance-of v3, v3, Lccsanandroidx/appcompat/view/CollapsibleActionView;

    if-eqz v3, :cond_4

    .line 2533
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/Toolbar;->mExpandedActionView:Lccsanandroid/view/View;

    check-cast v3, Lccsanandroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {v3}, Lccsanandroidx/appcompat/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2536
    :cond_4
    return v2
.end method

.method public flagActionItems()Z
    .locals 1

    .line 2501
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 2561
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Lccsanandroid/view/ViewGroup;

    .line 2459
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 2451
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 2452
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 2454
    :cond_0
    iput-object p2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 2455
    return-void
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2497
    return-void
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 2571
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 1

    .line 2566
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 2492
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2488
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 5
    .param p1, "cleared"    # Z

    .line 2465
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 2466
    const/4 v0, 0x0

    .line 2468
    .local v0, "found":Z
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 2469
    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 2470
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2471
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Lccsanandroid/view/MenuItem;

    move-result-object v3

    .line 2472
    .local v3, "item":Lccsanandroid/view/MenuItem;
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_0

    .line 2473
    const/4 v0, 0x1

    .line 2474
    goto :goto_1

    .line 2470
    .end local v3    # "item":Lccsanandroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2479
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2481
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 2484
    .end local v0    # "found":Z
    :cond_2
    return-void
.end method
