.class public Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;
.super Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Lccsanandroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;,
        Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MenuItemWrapper"


# instance fields
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

.field private final mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportMenuItem;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "object"    # Lccsanandroidx/core/internal/view/SupportMenuItem;

    .line 56
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/view/menu/BaseMenuWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 57
    if-eqz p2, :cond_0

    .line 60
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped Object can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Lccsanandroid/view/ActionProvider;
    .locals 2

    .line 312
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Lccsanandroidx/core/view/ActionProvider;

    move-result-object v0

    .line 313
    .local v0, "provider":Lccsanandroidx/core/view/ActionProvider;
    instance-of v1, v0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    if-eqz v1, :cond_0

    .line 314
    move-object v1, v0

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Lccsanandroid/view/ActionProvider;

    return-object v1

    .line 316
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActionView()Lccsanandroid/view/View;
    .locals 2

    .line 291
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getActionView()Lccsanandroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "actionView":Lccsanandroid/view/View;
    instance-of v1, v0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v1, :cond_0

    .line 293
    move-object v1, v0

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Lccsanandroid/view/View;

    move-result-object v1

    return-object v1

    .line 295
    :cond_0
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 183
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 349
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 70
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 120
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 371
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getIconTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 382
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Lccsanandroid/content/Intent;
    .locals 1

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 65
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Lccsanandroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 253
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getMenuInfo()Lccsanandroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 161
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 75
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Lccsanandroid/view/SubMenu;
    .locals 1

    .line 241
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getSubMenu()Lccsanandroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Lccsanandroid/view/SubMenu;)Lccsanandroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 360
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Lccsanandroid/view/ActionProvider;)Lccsanandroid/view/MenuItem;
    .locals 3
    .param p1, "provider"    # Lccsanandroid/view/ActionProvider;

    .line 301
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 302
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;-><init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/content/Context;Lccsanandroid/view/ActionProvider;)V

    .local v0, "actionProviderWrapper":Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    goto :goto_0

    .line 304
    .end local v0    # "actionProviderWrapper":Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    :cond_0
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/content/Context;Lccsanandroid/view/ActionProvider;)V

    .line 306
    .restart local v0    # "actionProviderWrapper":Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    :goto_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz p1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Lccsanandroidx/core/view/ActionProvider;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    .line 307
    return-object p0
.end method

.method public setActionView(I)Lccsanandroid/view/MenuItem;
    .locals 3
    .param p1, "resId"    # I

    .line 279
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setActionView(I)Lccsanandroid/view/MenuItem;

    .line 281
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getActionView()Lccsanandroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "actionView":Lccsanandroid/view/View;
    instance-of v1, v0, Lccsanandroid/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    new-instance v2, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v2, v0}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Lccsanandroid/view/View;)V

    invoke-interface {v1, v2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setActionView(Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;

    .line 286
    :cond_0
    return-object p0
.end method

.method public setActionView(Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 269
    instance-of v0, p1, Lccsanandroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Lccsanandroid/view/View;)V

    move-object p1, v0

    .line 272
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setActionView(Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;

    .line 273
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .line 171
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(C)Lccsanandroid/view/MenuItem;

    .line 172
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 177
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Lccsanandroid/view/MenuItem;

    .line 178
    return-object p0
.end method

.method public setCheckable(Z)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .line 193
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setCheckable(Z)Lccsanandroid/view/MenuItem;

    .line 194
    return-object p0
.end method

.method public setChecked(Z)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .line 204
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setChecked(Z)Lccsanandroid/view/MenuItem;

    .line 205
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 343
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    .line 344
    return-object p0
.end method

.method public setEnabled(Z)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "enabled"    # Z

    .line 225
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setEnabled(Z)Lccsanandroid/view/MenuItem;

    .line 226
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 6
    .param p1, "checkable"    # Z

    .line 387
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "setExclusiveCheckable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 389
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 391
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuItemWrapper"

    const-string v2, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setIcon(I)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 114
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIcon(I)Lccsanandroid/view/MenuItem;

    .line 115
    return-object p0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/MenuItem;

    .line 109
    return-object p0
.end method

.method public setIconTintList(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 365
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIconTintList(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/view/MenuItem;

    .line 366
    return-object p0
.end method

.method public setIconTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 376
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/view/MenuItem;

    .line 377
    return-object p0
.end method

.method public setIntent(Lccsanandroid/content/Intent;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 125
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIntent(Lccsanandroid/content/Intent;)Lccsanandroid/view/MenuItem;

    .line 126
    return-object p0
.end method

.method public setNumericShortcut(C)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C

    .line 149
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(C)Lccsanandroid/view/MenuItem;

    .line 150
    return-object p0
.end method

.method public setNumericShortcut(CI)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 155
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Lccsanandroid/view/MenuItem;

    .line 156
    return-object p0
.end method

.method public setOnActionExpandListener(Lccsanandroid/view/MenuItem$OnActionExpandListener;)Lccsanandroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Lccsanandroid/view/MenuItem$OnActionExpandListener;

    .line 336
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz p1, :cond_0

    .line 337
    new-instance v1, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 336
    :goto_0
    invoke-interface {v0, v1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setOnActionExpandListener(Lccsanandroid/view/MenuItem$OnActionExpandListener;)Lccsanandroid/view/MenuItem;

    .line 338
    return-object p0
.end method

.method public setOnMenuItemClickListener(Lccsanandroid/view/MenuItem$OnMenuItemClickListener;)Lccsanandroid/view/MenuItem;
    .locals 2
    .param p1, "menuItemClickListener"    # Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    .line 246
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz p1, :cond_0

    .line 247
    new-instance v1, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    :goto_0
    invoke-interface {v0, v1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setOnMenuItemClickListener(Lccsanandroid/view/MenuItem$OnMenuItemClickListener;)Lccsanandroid/view/MenuItem;

    .line 248
    return-object p0
.end method

.method public setShortcut(CC)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 136
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setShortcut(CC)Lccsanandroid/view/MenuItem;

    .line 137
    return-object p0
.end method

.method public setShortcut(CCII)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 143
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Lccsanandroid/view/MenuItem;

    .line 144
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1
    .param p1, "actionEnum"    # I

    .line 258
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setShowAsAction(I)V

    .line 259
    return-void
.end method

.method public setShowAsActionFlags(I)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "actionEnum"    # I

    .line 263
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setShowAsActionFlags(I)Lccsanandroid/view/MenuItem;

    .line 264
    return-object p0
.end method

.method public setTitle(I)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setTitle(I)Lccsanandroid/view/MenuItem;

    .line 87
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    .line 81
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 97
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 354
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    .line 355
    return-object p0
.end method

.method public setVisible(Z)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "visible"    # Z

    .line 215
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setVisible(Z)Lccsanandroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
