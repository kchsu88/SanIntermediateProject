.class public abstract Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

.field protected mContext:Lccsanandroid/content/Context;

.field private mId:I

.field protected mInflater:Lccsanandroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lccsanandroidx/appcompat/view/menu/MenuView;

.field protected mSystemContext:Lccsanandroid/content/Context;

.field protected mSystemInflater:Lccsanandroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemContext:Lccsanandroid/content/Context;

    .line 63
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Lccsanandroid/view/LayoutInflater;

    .line 64
    iput p2, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 65
    iput p3, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 66
    return-void
.end method


# virtual methods
.method protected addItemView(Lccsanandroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Lccsanandroid/view/View;
    .param p2, "childIndex"    # I

    .line 134
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 135
    .local v0, "currentParent":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/MenuView;

    check-cast v1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;I)V

    .line 139
    return-void
.end method

.method public abstract bindItemView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 167
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Lccsanandroid/view/LayoutInflater;

    iget v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Lccsanandroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 148
    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewGroup;->removeViewAt(I)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;
    .locals 1

    .line 158
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 244
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 183
    instance-of v0, p2, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p2

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    .local v0, "itemView":Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;
    goto :goto_0

    .line 186
    .end local v0    # "itemView":Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;
    :cond_0
    invoke-virtual {p0, p3}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->createItemView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    move-result-object v0

    .line 188
    .restart local v0    # "itemView":Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->bindItemView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;)V

    .line 189
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    return-object v1
.end method

.method public getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Lccsanandroid/view/ViewGroup;

    .line 77
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Lccsanandroid/view/LayoutInflater;

    iget v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/MenuView;

    .line 79
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuView;->initialize(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 83
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 70
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mContext:Lccsanandroid/content/Context;

    .line 71
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 73
    return-void
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 213
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 220
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 222
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    :goto_0
    invoke-interface {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 224
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 154
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 155
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 248
    iput p1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    .line 249
    return-void
.end method

.method public shouldIncludeItem(ILccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .line 91
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/MenuView;

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 92
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "childIndex":I
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    .line 96
    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 97
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 98
    .local v2, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 99
    .local v3, "itemCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 100
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 101
    .local v5, "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {p0, v1, v5}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v6

    .line 103
    .local v6, "convertView":Lccsanandroid/view/View;
    instance-of v7, v6, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v7, :cond_1

    .line 104
    move-object v7, v6

    check-cast v7, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    invoke-interface {v7}, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 105
    .local v7, "oldItem":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v5, v6, v0}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v8

    .line 106
    .local v8, "itemView":Lccsanandroid/view/View;
    if-eq v5, v7, :cond_2

    .line 108
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lccsanandroid/view/View;->setPressed(Z)V

    .line 109
    invoke-virtual {v8}, Lccsanandroid/view/View;->jumpDrawablesToCurrentState()V

    .line 111
    :cond_2
    if-eq v8, v6, :cond_3

    .line 112
    invoke-virtual {p0, v8, v1}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->addItemView(Lccsanandroid/view/View;I)V

    .line 114
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 99
    .end local v5    # "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .end local v6    # "convertView":Lccsanandroid/view/View;
    .end local v7    # "oldItem":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .end local v8    # "itemView":Lccsanandroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v3    # "itemCount":I
    .end local v4    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 121
    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Lccsanandroid/view/ViewGroup;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_6
    return-void
.end method
