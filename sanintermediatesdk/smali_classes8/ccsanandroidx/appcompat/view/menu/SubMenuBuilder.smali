.class public Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;
.super Lccsanandroidx/appcompat/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Lccsanandroid/view/SubMenu;


# instance fields
.field private mItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

.field private mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "parentMenu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 43
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;-><init>(Lccsanandroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 46
    iput-object p3, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 47
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 138
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 90
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 91
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 90
    :goto_1
    return v0
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 133
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .line 143
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 145
    const/4 v1, 0x0

    return-object v1

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItem()Lccsanandroid/view/MenuItem;
    .locals 1

    .line 75
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Lccsanandroid/view/Menu;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    .line 85
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v0

    return v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 81
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1
    .param p1, "groupDividerEnabled"    # Z

    .line 152
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    .line 153
    return-void
.end method

.method public setHeaderIcon(I)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 113
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(I)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setHeaderIconInt(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .line 123
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 118
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Lccsanandroid/view/View;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 128
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setHeaderViewInt(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 102
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setIcon(I)Lccsanandroid/view/MenuItem;

    .line 103
    return-object p0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/MenuItem;

    .line 97
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .line 51
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 52
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .line 61
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 62
    return-void
.end method
