.class abstract Lccsanandroidx/appcompat/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Lccsanandroid/widget/ListAdapter;Lccsanandroid/view/ViewGroup;Lccsanandroid/content/Context;I)I
    .locals 9
    .param p0, "adapter"    # Lccsanandroid/widget/ListAdapter;
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "maxAllowedWidth"    # I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 145
    .local v1, "itemView":Lccsanandroid/view/View;
    const/4 v2, 0x0

    .line 147
    .local v2, "itemType":I
    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 148
    .local v4, "widthMeasureSpec":I
    invoke-static {v3, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 149
    .local v3, "heightMeasureSpec":I
    invoke-interface {p0}, Lccsanandroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 150
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 151
    invoke-interface {p0, v6}, Lccsanandroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    .line 152
    .local v7, "positionType":I
    if-eq v7, v2, :cond_0

    .line 153
    move v2, v7

    .line 154
    const/4 v1, 0x0

    .line 157
    :cond_0
    if-nez p1, :cond_1

    .line 158
    new-instance v8, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v8, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    move-object p1, v8

    .line 161
    :cond_1
    invoke-interface {p0, v6, v1, p1}, Lccsanandroid/widget/ListAdapter;->getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v4, v3}, Lccsanandroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v1}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 165
    .local v8, "itemWidth":I
    if-lt v8, p3, :cond_2

    .line 166
    return p3

    .line 167
    :cond_2
    if-le v8, v0, :cond_3

    .line 168
    move v0, v8

    .line 150
    .end local v7    # "positionType":I
    .end local v8    # "itemWidth":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 172
    .end local v6    # "i":I
    :cond_4
    return v0
.end method

.method protected static shouldPreserveIconSpacing(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 5
    .param p0, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "preserveIconSpacing":Z
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 205
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Lccsanandroid/view/MenuItem;

    move-result-object v3

    .line 207
    .local v3, "childItem":Lccsanandroid/view/MenuItem;
    invoke-interface {v3}, Lccsanandroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lccsanandroid/view/MenuItem;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 209
    goto :goto_1

    .line 205
    .end local v3    # "childItem":Lccsanandroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method protected static toMenuAdapter(Lccsanandroid/widget/ListAdapter;)Lccsanandroidx/appcompat/view/menu/MenuAdapter;
    .locals 1
    .param p0, "adapter"    # Lccsanandroid/widget/ListAdapter;

    .line 184
    instance-of v0, p0, Lccsanandroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 185
    move-object v0, p0

    check-cast v0, Lccsanandroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Lccsanandroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    return-object v0

    .line 187
    :cond_0
    move-object v0, p0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    return-object v0
.end method


# virtual methods
.method public abstract addMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getEpicenterBounds()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 78
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Lccsanandroid/view/ViewGroup;

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopups manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 99
    return-void
.end method

.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;",
            "Lccsanandroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Lccsanandroid/widget/AdapterView;->getAdapter()Lccsanandroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ListAdapter;

    .line 124
    .local v0, "outerAdapter":Lccsanandroid/widget/ListAdapter;
    invoke-static {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->toMenuAdapter(Lccsanandroid/widget/ListAdapter;)Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    move-result-object v1

    .line 128
    .local v1, "wrappedAdapter":Lccsanandroidx/appcompat/view/menu/MenuAdapter;
    iget-object v2, v1, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 129
    invoke-interface {v0, p3}, Lccsanandroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/MenuItem;

    .line 131
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 128
    :goto_0
    invoke-virtual {v2, v3, p0, v4}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;Lccsanandroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 132
    return-void
.end method

.method public abstract setAnchorView(Lccsanandroid/view/View;)V
.end method

.method public setEpicenterBounds(Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Lccsanandroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
