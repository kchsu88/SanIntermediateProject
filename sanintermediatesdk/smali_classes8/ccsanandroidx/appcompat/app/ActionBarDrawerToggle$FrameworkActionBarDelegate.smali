.class Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameworkActionBarDelegate"
.end annotation


# instance fields
.field private final mActivity:Lccsanandroid/app/Activity;

.field private mSetIndicatorInfo:Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method constructor <init>(Lccsanandroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    .line 521
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Lccsanandroid/content/Context;
    .locals 2

    .line 538
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v0

    .line 539
    .local v0, "actionBar":Lccsanandroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lccsanandroid/app/ActionBar;->getThemedContext()Lccsanandroid/content/Context;

    move-result-object v1

    return-object v1

    .line 542
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    return-object v1
.end method

.method public getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;
    .locals 5

    .line 525
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->getActionBarThemedContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101030b

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x10102ce

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 529
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    .local v1, "result":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 531
    return-object v1

    .line 533
    .end local v0    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v1    # "result":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-static {v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Lccsanandroid/app/Activity;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 2

    .line 547
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v0

    .line 548
    .local v0, "actionBar":Lccsanandroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lccsanandroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 548
    :goto_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .line 570
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 571
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v0

    .line 572
    .local v0, "actionBar":Lccsanandroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lccsanandroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 575
    .end local v0    # "actionBar":Lccsanandroid/app/ActionBar;
    :cond_0
    goto :goto_0

    .line 576
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-static {v0, v1, p1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Lccsanandroid/app/Activity;I)Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 579
    :goto_0
    return-void
.end method

.method public setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "themeImage"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 554
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v0

    .line 555
    .local v0, "actionBar":Lccsanandroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 556
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Lccsanandroid/app/ActionBar;->setHomeAsUpIndicator(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 558
    invoke-virtual {v0, p2}, Lccsanandroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    .line 560
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 561
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Lccsanandroid/app/Activity;

    invoke-static {v1, p1, p2}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Lccsanandroid/app/Activity;Lccsanandroid/graphics/drawable/Drawable;I)Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mSetIndicatorInfo:Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 563
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 566
    :cond_1
    :goto_0
    return-void
.end method
