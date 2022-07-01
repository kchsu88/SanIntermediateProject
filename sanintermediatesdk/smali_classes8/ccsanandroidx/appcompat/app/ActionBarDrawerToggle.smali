.class public Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lccsanandroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;,
        Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;,
        Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerSlideAnimationEnabled:Z

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Lccsanandroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method constructor <init>(Lccsanandroid/app/Activity;Lccsanandroidx/appcompat/widget/Toolbar;Lccsanandroidx/drawerlayout/widget/DrawerLayout;Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V
    .locals 2
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "toolbar"    # Lccsanandroidx/appcompat/widget/Toolbar;
    .param p3, "drawerLayout"    # Lccsanandroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "slider"    # Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 122
    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 196
    if-eqz p2, :cond_0

    .line 197
    new-instance v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Lccsanandroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 198
    new-instance v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;-><init>(Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 208
    :cond_0
    instance-of v0, p1, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    .line 209
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 211
    :cond_1
    new-instance v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;-><init>(Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 214
    :goto_0
    iput-object p3, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    .line 215
    iput p5, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 216
    iput p6, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 217
    if-nez p4, :cond_2

    .line 218
    new-instance v0, Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    goto :goto_1

    .line 220
    :cond_2
    iput-object p4, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 223
    :goto_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 224
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Activity;Lccsanandroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 7
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "drawerLayout"    # Lccsanandroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
    .param p4, "closeDrawerContentDescRes"    # I

    .line 153
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Lccsanandroid/app/Activity;Lccsanandroidx/appcompat/widget/Toolbar;Lccsanandroidx/drawerlayout/widget/DrawerLayout;Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Activity;Lccsanandroidx/drawerlayout/widget/DrawerLayout;Lccsanandroidx/appcompat/widget/Toolbar;II)V
    .locals 7
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "drawerLayout"    # Lccsanandroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "toolbar"    # Lccsanandroidx/appcompat/widget/Toolbar;
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .line 184
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Lccsanandroid/app/Activity;Lccsanandroidx/appcompat/widget/Toolbar;Lccsanandroidx/drawerlayout/widget/DrawerLayout;Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    .line 186
    return-void
.end method

.method private setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .line 507
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0

    .line 509
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 512
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 513
    return-void
.end method


# virtual methods
.method public getDrawerArrowDrawable()Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    .locals 1

    .line 371
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    return-object v0
.end method

.method getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 503
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Lccsanandroid/view/View$OnClickListener;
    .locals 1

    .line 471
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Lccsanandroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public isDrawerSlideAnimationEnabled()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 258
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 262
    return-void
.end method

.method public onDrawerClosed(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Lccsanandroid/view/View;

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 445
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Lccsanandroid/view/View;

    .line 429
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 430
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Lccsanandroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Lccsanandroid/view/View;
    .param p2, "slideOffset"    # F

    .line 413
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 418
    :goto_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 459
    return-void
.end method

.method public onOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->toggle()V

    .line 276
    const/4 v0, 0x1

    return v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .line 499
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 500
    return-void
.end method

.method setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 489
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 495
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 496
    return-void
.end method

.method public setDrawerArrowDrawable(Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 380
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 381
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 382
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 354
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_2

    .line 355
    if-eqz p1, :cond_1

    .line 356
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 357
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 356
    :goto_0
    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 360
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 362
    :goto_1
    iput-boolean p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 364
    :cond_2
    return-void
.end method

.method public setDrawerSlideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 390
    iput-boolean p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 391
    if-nez p1, :cond_0

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 394
    :cond_0
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "indicator":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 330
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 332
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 333
    return-void
.end method

.method public setHomeAsUpIndicator(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 303
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 304
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 305
    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0

    .line 307
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 311
    :goto_0
    iget-boolean v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 314
    :cond_1
    return-void
.end method

.method public setToolbarNavigationClickListener(Lccsanandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Lccsanandroid/view/View$OnClickListener;

    .line 485
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Lccsanandroid/view/View$OnClickListener;

    .line 486
    return-void
.end method

.method public syncState()V
    .locals 3

    .line 236
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 239
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 241
    :goto_0
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 243
    iget-object v2, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 242
    :goto_1
    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 246
    :cond_2
    return-void
.end method

.method toggle()V
    .locals 3

    .line 282
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    .line 283
    .local v0, "drawerLockMode":I
    iget-object v2, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 285
    iget-object v2, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 286
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 287
    iget-object v2, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 289
    :cond_1
    :goto_0
    return-void
.end method
