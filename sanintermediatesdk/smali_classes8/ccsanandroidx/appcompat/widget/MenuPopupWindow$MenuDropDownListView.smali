.class public Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Lccsanandroidx/appcompat/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Lccsanandroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 147
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;-><init>(Lccsanandroid/content/Context;Z)V

    .line 149
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, "res":Lccsanandroid/content/res/Resources;
    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    .line 151
    .local v1, "config":Lccsanandroid/content/res/Configuration;
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v4, 0x16

    const/16 v5, 0x11

    if-lt v2, v5, :cond_0

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v1}, Lccsanandroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 153
    iput v3, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 154
    iput v4, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0

    .line 156
    :cond_0
    iput v4, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 157
    iput v3, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 159
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .line 166
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 167
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    .line 138
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lookForSelectablePosition(IZ)I
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic measureHeightOfChildrenCompat(IIIII)I
    .locals 0

    .line 138
    invoke-super/range {p0 .. p5}, Lccsanandroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onForwardedEvent(Lccsanandroid/view/MotionEvent;I)Z
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Lccsanandroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 193
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v0

    .line 198
    .local v0, "adapter":Lccsanandroid/widget/ListAdapter;
    instance-of v1, v0, Lccsanandroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/HeaderViewListAdapter;

    .line 200
    .local v1, "headerAdapter":Lccsanandroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Lccsanandroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 201
    .local v2, "headersCount":I
    invoke-virtual {v1}, Lccsanandroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    .line 202
    .local v1, "menuAdapter":Lccsanandroidx/appcompat/view/menu/MenuAdapter;
    goto :goto_0

    .line 203
    .end local v1    # "menuAdapter":Lccsanandroidx/appcompat/view/menu/MenuAdapter;
    .end local v2    # "headersCount":I
    :cond_0
    const/4 v2, 0x0

    .line 204
    .restart local v2    # "headersCount":I
    move-object v1, v0

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    .line 208
    .restart local v1    # "menuAdapter":Lccsanandroidx/appcompat/view/menu/MenuAdapter;
    :goto_0
    const/4 v3, 0x0

    .line 209
    .local v3, "menuItem":Lccsanandroid/view/MenuItem;
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 210
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v4

    .line 211
    .local v4, "position":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 212
    sub-int v5, v4, v2

    .line 213
    .local v5, "itemPosition":I
    if-ltz v5, :cond_1

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 214
    invoke-virtual {v1, v5}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    .line 219
    .end local v4    # "position":I
    .end local v5    # "itemPosition":I
    :cond_1
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Lccsanandroid/view/MenuItem;

    .line 220
    .local v4, "oldMenuItem":Lccsanandroid/view/MenuItem;
    if-eq v4, v3, :cond_3

    .line 221
    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v5

    .line 222
    .local v5, "menu":Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    if-eqz v4, :cond_2

    .line 223
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v6, v5, v4}, Lccsanandroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)V

    .line 226
    :cond_2
    iput-object v3, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Lccsanandroid/view/MenuItem;

    .line 228
    if-eqz v3, :cond_3

    .line 229
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v6, v5, v3}, Lccsanandroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)V

    .line 234
    .end local v0    # "adapter":Lccsanandroid/widget/ListAdapter;
    .end local v1    # "menuAdapter":Lccsanandroidx/appcompat/view/menu/MenuAdapter;
    .end local v2    # "headersCount":I
    .end local v3    # "menuItem":Lccsanandroid/view/MenuItem;
    .end local v4    # "oldMenuItem":Lccsanandroid/view/MenuItem;
    .end local v5    # "menu":Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    :cond_3
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/DropDownListView;->onHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 171
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;

    .line 172
    .local v0, "selectedItem":Lccsanandroidx/appcompat/view/menu/ListMenuItemView;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_1

    .line 173
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    nop

    .line 176
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v2

    .line 177
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v3

    .line 174
    invoke-virtual {p0, v0, v2, v3, v4}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Lccsanandroid/view/View;IJ)Z

    .line 179
    :cond_0
    return v1

    .line 180
    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v2, :cond_2

    .line 181
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 184
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 185
    return v1

    .line 187
    :cond_2
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/DropDownListView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHoverListener(Lccsanandroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    .line 162
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    .line 163
    return-void
.end method

.method public bridge synthetic setSelector(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/DropDownListView;->setSelector(Lccsanandroid/graphics/drawable/Drawable;)V

    return-void
.end method
