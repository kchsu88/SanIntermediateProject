.class Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.super Lccsanandroidx/core/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionProviderWrapper"
.end annotation


# instance fields
.field final mInner:Lccsanandroid/view/ActionProvider;

.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/content/Context;Lccsanandroid/view/ActionProvider;)V
    .locals 0
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "inner"    # Lccsanandroid/view/ActionProvider;

    .line 432
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 433
    invoke-direct {p0, p2}, Lccsanandroidx/core/view/ActionProvider;-><init>(Lccsanandroid/content/Context;)V

    .line 434
    iput-object p3, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Lccsanandroid/view/ActionProvider;

    .line 435
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0}, Lccsanandroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Lccsanandroid/view/View;
    .locals 1

    .line 439
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0}, Lccsanandroid/view/ActionProvider;->onCreateActionView()Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0}, Lccsanandroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Lccsanandroid/view/SubMenu;)V
    .locals 2
    .param p1, "subMenu"    # Lccsanandroid/view/SubMenu;

    .line 454
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Lccsanandroid/view/ActionProvider;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Lccsanandroid/view/SubMenu;)Lccsanandroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/ActionProvider;->onPrepareSubMenu(Lccsanandroid/view/SubMenu;)V

    .line 455
    return-void
.end method
