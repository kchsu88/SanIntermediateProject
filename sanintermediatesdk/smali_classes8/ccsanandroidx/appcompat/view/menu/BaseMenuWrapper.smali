.class abstract Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field final mContext:Lccsanandroid/content/Context;

.field private mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Lccsanandroidx/core/internal/view/SupportMenuItem;",
            "Lccsanandroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Lccsanandroidx/core/internal/view/SupportSubMenu;",
            "Lccsanandroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Lccsanandroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/MenuItem;
    .locals 4
    .param p1, "menuItem"    # Lccsanandroid/view/MenuItem;

    .line 39
    instance-of v0, p1, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_2

    .line 40
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    .line 43
    .local v0, "supportMenuItem":Lccsanandroidx/core/internal/view/SupportMenuItem;
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    .line 48
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/MenuItem;

    .line 50
    .local v1, "wrappedItem":Lccsanandroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 52
    new-instance v2, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v2, v3, v0}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportMenuItem;)V

    move-object v1, v2

    .line 53
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0, v1}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    return-object v1

    .line 58
    .end local v0    # "supportMenuItem":Lccsanandroidx/core/internal/view/SupportMenuItem;
    .end local v1    # "wrappedItem":Lccsanandroid/view/MenuItem;
    :cond_2
    return-object p1
.end method

.method final getSubMenuWrapper(Lccsanandroid/view/SubMenu;)Lccsanandroid/view/SubMenu;
    .locals 4
    .param p1, "subMenu"    # Lccsanandroid/view/SubMenu;

    .line 62
    instance-of v0, p1, Lccsanandroidx/core/internal/view/SupportSubMenu;

    if-eqz v0, :cond_2

    .line 63
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/internal/view/SupportSubMenu;

    .line 66
    .local v0, "supportSubMenu":Lccsanandroidx/core/internal/view/SupportSubMenu;
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Lccsanandroidx/collection/SimpleArrayMap;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Lccsanandroidx/collection/SimpleArrayMap;

    .line 70
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/SubMenu;

    .line 72
    .local v1, "wrappedMenu":Lccsanandroid/view/SubMenu;
    if-nez v1, :cond_1

    .line 73
    new-instance v2, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v2, v3, v0}, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportSubMenu;)V

    move-object v1, v2

    .line 74
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0, v1}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    return-object v1

    .line 78
    .end local v0    # "supportSubMenu":Lccsanandroidx/core/internal/view/SupportSubMenu;
    .end local v1    # "wrappedMenu":Lccsanandroid/view/SubMenu;
    :cond_2
    return-object p1
.end method

.method final internalClear()V
    .locals 1

    .line 83
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lccsanandroidx/collection/SimpleArrayMap;->clear()V

    .line 86
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Lccsanandroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lccsanandroidx/collection/SimpleArrayMap;->clear()V

    .line 89
    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 2
    .param p1, "groupId"    # I

    .line 92
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Lccsanandroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 97
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method final internalRemoveItem(I)V
    .locals 2
    .param p1, "id"    # I

    .line 104
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Lccsanandroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 108
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 109
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 110
    goto :goto_1

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
