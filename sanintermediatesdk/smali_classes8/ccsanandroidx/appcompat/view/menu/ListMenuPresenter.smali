.class public Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

.field mContext:Lccsanandroid/content/Context;

.field private mId:I

.field mInflater:Lccsanandroid/view/LayoutInflater;

.field mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 83
    iput p2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 84
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;-><init>(II)V

    .line 72
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Lccsanandroid/content/Context;

    .line 73
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 74
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Lccsanandroid/widget/ListAdapter;
    .locals 1

    .line 125
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 128
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 212
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .line 161
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Lccsanandroid/view/ViewGroup;

    .line 105
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    sget v1, Lccsanandroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    .line 108
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    .line 111
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 88
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lccsanandroid/view/ContextThemeWrapper;

    iget v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Lccsanandroid/content/Context;

    .line 90
    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Lccsanandroid/content/Context;

    if-eqz v0, :cond_1

    .line 92
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mContext:Lccsanandroid/content/Context;

    .line 93
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 94
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 97
    :cond_1
    :goto_0
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 98
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_2
    return-void
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 155
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 3
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

    .line 173
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;Lccsanandroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 174
    return-void
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 228
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/Bundle;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->restoreHierarchyState(Lccsanandroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 1

    .line 217
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "state":Lccsanandroid/os/Bundle;
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->saveHierarchyState(Lccsanandroid/os/Bundle;)V

    .line 223
    return-object v0
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 143
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;-><init>(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->show(Lccsanandroid/os/IBinder;)V

    .line 147
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 150
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHierarchyState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Lccsanandroid/os/Bundle;

    .line 200
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Lccsanandroid/util/SparseArray;

    move-result-object v0

    .line 201
    .local v0, "viewStates":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->restoreHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 204
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 192
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 193
    .local v0, "viewStates":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->saveHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 196
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Lccsanandroid/util/SparseArray;)V

    .line 197
    return-void
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 138
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 139
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 207
    iput p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mId:I

    .line 208
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 165
    iput p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenuView:Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 133
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mAdapter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    return-void
.end method
