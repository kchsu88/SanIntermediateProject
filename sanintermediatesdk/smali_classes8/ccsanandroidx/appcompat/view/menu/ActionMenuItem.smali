.class public Lccsanandroidx/appcompat/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Lccsanandroidx/core/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8


# instance fields
.field private mClickListener:Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Lccsanandroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private mIconTintList:Lccsanandroid/content/res/ColorStateList;

.field private mIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Lccsanandroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x1000

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 55
    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Lccsanandroid/content/res/ColorStateList;

    .line 67
    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 69
    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 71
    const/16 v0, 0x10

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 80
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mContext:Lccsanandroid/content/Context;

    .line 81
    iput p3, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mId:I

    .line 82
    iput p2, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mGroup:I

    .line 83
    iput p5, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mOrdering:I

    .line 84
    iput-object p6, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 85
    return-void
.end method

.method private applyIconTint()V
    .locals 2

    .line 437
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v1, :cond_2

    .line 438
    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 439
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 441
    iget-boolean v1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 445
    :cond_1
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 449
    :cond_2
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Lccsanandroid/view/ActionProvider;
    .locals 1

    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Lccsanandroid/view/View;
    .locals 1

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 94
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 89
    iget-char v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 392
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 99
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 104
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 418
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 433
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Lccsanandroid/content/Intent;
    .locals 1

    .line 109
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Lccsanandroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 114
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Lccsanandroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 129
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 124
    iget-char v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 134
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Lccsanandroid/view/SubMenu;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Lccsanandroidx/core/view/ActionProvider;
    .locals 1

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 144
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 403
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .line 296
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lccsanandroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    return v1

    .line 300
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Lccsanandroid/content/Intent;

    if-eqz v0, :cond_1

    .line 301
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 302
    return v1

    .line 305
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 159
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1

    .line 164
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 169
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 174
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiresActionButton()Z
    .locals 1

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public requiresOverflow()Z
    .locals 1

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Lccsanandroid/view/ActionProvider;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "actionProvider"    # Lccsanandroid/view/ActionProvider;

    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Lccsanandroid/view/MenuItem;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->setActionView(I)Lccsanandroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->setActionView(Lccsanandroid/view/View;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(I)Lccsanandroidx/core/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "resId"    # I

    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Lccsanandroid/view/View;)Lccsanandroidx/core/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "actionView"    # Lccsanandroid/view/View;

    .line 325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .line 179
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 180
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 185
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 186
    invoke-static {p2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 187
    return-object p0
.end method

.method public setCheckable(Z)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .line 192
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr v0, p1

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 193
    return-object p0
.end method

.method public setChecked(Z)Lccsanandroid/view/MenuItem;
    .locals 2
    .param p1, "checked"    # Z

    .line 203
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 204
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 386
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    .line 387
    return-object p0
.end method

.method public setEnabled(Z)Lccsanandroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .line 209
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 210
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Lccsanandroidx/appcompat/view/menu/ActionMenuItem;
    .locals 2
    .param p1, "exclusive"    # Z

    .line 197
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 198
    return-object p0
.end method

.method public setIcon(I)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 223
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0, p1}, Lccsanandroidx/core/content/ContextCompat;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 225
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 226
    return-object p0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/view/MenuItem;
    .locals 0
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 215
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 217
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 218
    return-object p0
.end method

.method public setIconTintList(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 408
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintList:Lccsanandroid/content/res/ColorStateList;

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 411
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 413
    return-object p0
.end method

.method public setIconTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "iconTintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 423
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 426
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->applyIconTint()V

    .line 428
    return-object p0
.end method

.method public setIntent(Lccsanandroid/content/Intent;)Lccsanandroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 231
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mIntent:Lccsanandroid/content/Intent;

    .line 232
    return-object p0
.end method

.method public setNumericShortcut(C)Lccsanandroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C

    .line 237
    iput-char p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 238
    return-object p0
.end method

.method public setNumericShortcut(CI)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 243
    iput-char p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 244
    invoke-static {p2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 245
    return-object p0
.end method

.method public setOnActionExpandListener(Lccsanandroid/view/MenuItem$OnActionExpandListener;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Lccsanandroid/view/MenuItem$OnActionExpandListener;

    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Lccsanandroid/view/MenuItem$OnMenuItemClickListener;)Lccsanandroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemClickListener"    # Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    .line 250
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mClickListener:Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    .line 251
    return-object p0
.end method

.method public setShortcut(CC)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 256
    iput-char p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 257
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 258
    return-object p0
.end method

.method public setShortcut(CCII)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 264
    iput-char p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 265
    invoke-static {p3}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 266
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 267
    invoke-static {p4}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 268
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "show"    # I

    .line 311
    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Lccsanandroid/view/MenuItem;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Lccsanandroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsActionFlags(I)Lccsanandroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .line 360
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 361
    return-object p0
.end method

.method public setSupportActionProvider(Lccsanandroidx/core/view/ActionProvider;)Lccsanandroidx/core/internal/view/SupportMenuItem;
    .locals 1
    .param p1, "actionProvider"    # Lccsanandroidx/core/view/ActionProvider;

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTitle(I)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 279
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 280
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 273
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 274
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 285
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 286
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;
    .locals 0
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 397
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    .line 398
    return-object p0
.end method

.method public setVisible(Z)Lccsanandroid/view/MenuItem;
    .locals 2
    .param p1, "visible"    # Z

    .line 291
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;->mFlags:I

    .line 292
    return-object p0
.end method
