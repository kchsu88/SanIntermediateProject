.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 3306
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3307
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Lccsanandroid/content/Context;
    .locals 1

    .line 3320
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Lccsanandroid/graphics/drawable/Drawable;
    .locals 4

    .line 3311
    nop

    .line 3312
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lccsanandroidx/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3311
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 3313
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3314
    .local v1, "result":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 3315
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .line 3325
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 3326
    .local v0, "ab":Lccsanandroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .line 3340
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 3341
    .local v0, "ab":Lccsanandroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 3342
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 3344
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Lccsanandroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 3331
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 3332
    .local v0, "ab":Lccsanandroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 3333
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 3334
    invoke-virtual {v0, p2}, Lccsanandroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 3336
    :cond_0
    return-void
.end method
