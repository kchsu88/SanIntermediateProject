.class Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;
.super Lccsanandroidx/appcompat/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Lccsanandroid/view/SubMenu;


# instance fields
.field private final mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportSubMenu;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "subMenu"    # Lccsanandroidx/core/internal/view/SupportSubMenu;

    .line 39
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportMenu;)V

    .line 40
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    .line 41
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .line 75
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportSubMenu;->clearHeader()V

    .line 76
    return-void
.end method

.method public getItem()Lccsanandroid/view/MenuItem;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportSubMenu;->getItem()Lccsanandroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 57
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(I)Lccsanandroid/view/SubMenu;

    .line 58
    return-object p0
.end method

.method public setHeaderIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setHeaderIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/SubMenu;

    .line 64
    return-object p0
.end method

.method public setHeaderTitle(I)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .line 45
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(I)Lccsanandroid/view/SubMenu;

    .line 46
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 51
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Lccsanandroid/view/SubMenu;

    .line 52
    return-object p0
.end method

.method public setHeaderView(Lccsanandroid/view/View;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 69
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setHeaderView(Lccsanandroid/view/View;)Lccsanandroid/view/SubMenu;

    .line 70
    return-object p0
.end method

.method public setIcon(I)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setIcon(I)Lccsanandroid/view/SubMenu;

    .line 81
    return-object p0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/SubMenuWrapperICS;->mSubMenu:Lccsanandroidx/core/internal/view/SupportSubMenu;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportSubMenu;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/SubMenu;

    .line 87
    return-object p0
.end method
