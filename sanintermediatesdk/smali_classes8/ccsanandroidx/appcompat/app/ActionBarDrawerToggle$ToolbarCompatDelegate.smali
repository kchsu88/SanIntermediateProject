.class Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mDefaultContentDescription:Ljava/lang/CharSequence;

.field final mDefaultUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

.field final mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lccsanandroidx/appcompat/widget/Toolbar;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    .line 593
    invoke-virtual {p1}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 594
    invoke-virtual {p1}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    .line 595
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Lccsanandroid/content/Context;
    .locals 1

    .line 619
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 614
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .line 605
    if-nez p1, :cond_0

    .line 606
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 610
    :goto_0
    return-void
.end method

.method public setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 599
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 600
    invoke-virtual {p0, p2}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->setActionBarDescription(I)V

    .line 601
    return-void
.end method
