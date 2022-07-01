.class public Lccsancom/google/android/material/internal/NavigationMenu;
.super Lccsanandroidx/appcompat/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;-><init>(Lccsanandroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Lccsanandroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/internal/NavigationMenu;->addInternal(IIILjava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 46
    .local v0, "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    new-instance v1, Lccsancom/google/android/material/internal/NavigationSubMenu;

    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenu;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lccsancom/google/android/material/internal/NavigationSubMenu;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/internal/NavigationMenu;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 47
    .local v1, "subMenu":Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 48
    return-object v1
.end method
