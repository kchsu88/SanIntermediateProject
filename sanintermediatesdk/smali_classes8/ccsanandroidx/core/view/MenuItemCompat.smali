.class public final Lccsanandroidx/core/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static expandActionView(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static getActionProvider(Lccsanandroid/view/MenuItem;)Lccsanandroidx/core/view/ActionProvider;
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 224
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 225
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Lccsanandroidx/core/view/ActionProvider;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    const-string v0, "MenuItemCompat"

    const-string v1, "getActionProvider: item does not implement SupportMenuItem; returning null"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActionView(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/View;
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getActionView()Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAlphabeticModifiers(Lccsanandroid/view/MenuItem;)I
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 481
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 482
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0

    .line 484
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 485
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v0

    return v0

    .line 487
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getContentDescription(Lccsanandroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 335
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 336
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 339
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 341
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIconTintList(Lccsanandroid/view/MenuItem;)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 515
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 516
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getIconTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 519
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getIconTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 521
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIconTintMode(Lccsanandroid/view/MenuItem;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 548
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 549
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 551
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 552
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getIconTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 554
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNumericModifiers(Lccsanandroid/view/MenuItem;)I
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 436
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 437
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    move-result v0

    return v0

    .line 439
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 440
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getNumericModifiers()I

    move-result v0

    return v0

    .line 442
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getTooltipText(Lccsanandroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 364
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 365
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0}, Lccsanandroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 368
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 370
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isActionViewExpanded(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-interface {p0}, Lccsanandroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public static setActionProvider(Lccsanandroid/view/MenuItem;Lccsanandroidx/core/view/ActionProvider;)Lccsanandroid/view/MenuItem;
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "provider"    # Lccsanandroidx/core/view/ActionProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "provider"
        }
    .end annotation

    .line 207
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 208
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Lccsanandroidx/core/view/ActionProvider;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    const-string v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object p0
.end method

.method public static setActionView(Lccsanandroid/view/MenuItem;I)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "resId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setActionView(I)Lccsanandroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setActionView(Lccsanandroid/view/MenuItem;Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setActionView(Lccsanandroid/view/View;)Lccsanandroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setAlphabeticShortcut(Lccsanandroid/view/MenuItem;CI)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "item",
            "alphaChar",
            "alphaModifiers"
        }
    .end annotation

    .line 463
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 464
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Lccsanandroid/view/MenuItem;

    goto :goto_0

    .line 465
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 466
    invoke-interface {p0, p1, p2}, Lccsanandroid/view/MenuItem;->setAlphabeticShortcut(CI)Lccsanandroid/view/MenuItem;

    .line 468
    :cond_1
    :goto_0
    return-void
.end method

.method public static setContentDescription(Lccsanandroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "contentDescription"
        }
    .end annotation

    .line 322
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 323
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    goto :goto_0

    .line 324
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 325
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    .line 327
    :cond_1
    :goto_0
    return-void
.end method

.method public static setIconTintList(Lccsanandroid/view/MenuItem;Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "tint"
        }
    .end annotation

    .line 503
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 504
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIconTintList(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/view/MenuItem;

    goto :goto_0

    .line 505
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 506
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setIconTintList(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/view/MenuItem;

    .line 508
    :cond_1
    :goto_0
    return-void
.end method

.method public static setIconTintMode(Lccsanandroid/view/MenuItem;Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "tintMode"
        }
    .end annotation

    .line 534
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 535
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/view/MenuItem;

    goto :goto_0

    .line 536
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 537
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setIconTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/view/MenuItem;

    .line 539
    :cond_1
    :goto_0
    return-void
.end method

.method public static setNumericShortcut(Lccsanandroid/view/MenuItem;CI)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "item",
            "numericChar",
            "numericModifiers"
        }
    .end annotation

    .line 418
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 419
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Lccsanandroid/view/MenuItem;

    goto :goto_0

    .line 420
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 421
    invoke-interface {p0, p1, p2}, Lccsanandroid/view/MenuItem;->setNumericShortcut(CI)Lccsanandroid/view/MenuItem;

    .line 423
    :cond_1
    :goto_0
    return-void
.end method

.method public static setOnActionExpandListener(Lccsanandroid/view/MenuItem;Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;)Lccsanandroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "listener"    # Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "item",
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    new-instance v0, Lccsanandroidx/core/view/MenuItemCompat$1;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/MenuItemCompat$1;-><init>(Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;)V

    invoke-interface {p0, v0}, Lccsanandroid/view/MenuItem;->setOnActionExpandListener(Lccsanandroid/view/MenuItem$OnActionExpandListener;)Lccsanandroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setShortcut(Lccsanandroid/view/MenuItem;CCII)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "item",
            "numericChar",
            "alphaChar",
            "numericModifiers",
            "alphaModifiers"
        }
    .end annotation

    .line 397
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 398
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Lccsanandroid/view/MenuItem;

    goto :goto_0

    .line 400
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 401
    invoke-interface {p0, p1, p2, p3, p4}, Lccsanandroid/view/MenuItem;->setShortcut(CCII)Lccsanandroid/view/MenuItem;

    .line 403
    :cond_1
    :goto_0
    return-void
.end method

.method public static setShowAsAction(Lccsanandroid/view/MenuItem;I)V
    .locals 0
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "actionEnum"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "actionEnum"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    return-void
.end method

.method public static setTooltipText(Lccsanandroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "item"    # Lccsanandroid/view/MenuItem;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "tooltipText"
        }
    .end annotation

    .line 351
    instance-of v0, p0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 352
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v0, p1}, Lccsanandroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lccsanandroidx/core/internal/view/SupportMenuItem;

    goto :goto_0

    .line 353
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 354
    invoke-interface {p0, p1}, Lccsanandroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Lccsanandroid/view/MenuItem;

    .line 356
    :cond_1
    :goto_0
    return-void
.end method
