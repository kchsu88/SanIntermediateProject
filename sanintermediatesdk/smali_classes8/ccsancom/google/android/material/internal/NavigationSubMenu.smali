.class public Lccsancom/google/android/material/internal/NavigationSubMenu;
.super Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/internal/NavigationMenu;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsancom/google/android/material/internal/NavigationMenu;
    .param p3, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 1
    .param p1, "structureChanged"    # Z

    .line 42
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 43
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationSubMenu;->getParentMenu()Lccsanandroid/view/Menu;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 44
    return-void
.end method
