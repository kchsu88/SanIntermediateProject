.class public Lccsanandroidx/appcompat/app/AppCompatActivity;
.super Lccsanandroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lccsanandroidx/appcompat/app/AppCompatCallback;
.implements Lccsanandroidx/core/app/TaskStackBuilder$SupportParentable;
.implements Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

.field private mResources:Lccsanandroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "contentLayoutId"    # I

    .line 102
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>(I)V

    .line 103
    return-void
.end method

.method private performMenuItemShortcut(Lccsanandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 586
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 591
    .local v0, "currentWindow":Lccsanandroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    .line 593
    .local v1, "decorView":Lccsanandroid/view/View;
    invoke-virtual {v1, p1}, Lccsanandroid/view/View;->dispatchKeyShortcutEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    const/4 v2, 0x1

    return v2

    .line 598
    .end local v0    # "currentWindow":Lccsanandroid/view/Window;
    .end local v1    # "decorView":Lccsanandroid/view/View;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 185
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->addContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method protected attachBaseContext(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Lccsanandroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->attachBaseContext2(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->attachBaseContext(Lccsanandroid/content/Context;)V

    .line 108
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 620
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 621
    .local v0, "actionBar":Lccsanandroidx/appcompat/app/ActionBar;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar;->closeOptionsMenu()Z

    move-result v1

    if-nez v1, :cond_1

    .line 623
    :cond_0
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->closeOptionsMenu()V

    .line 625
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 563
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 564
    .local v0, "keyCode":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 565
    .local v1, "actionBar":Lccsanandroidx/appcompat/app/ActionBar;
    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/app/ActionBar;->onMenuKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    const/4 v2, 0x1

    return v2

    .line 569
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public findViewById(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;
    .locals 1

    .line 553
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 554
    invoke-static {p0, p0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->create(Lccsanandroid/app/Activity;Lccsanandroidx/appcompat/app/AppCompatCallback;)Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

    .line 556
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->getDrawerToggleDelegate()Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 2

    .line 574
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mResources:Lccsanandroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mResources:Lccsanandroid/content/res/Resources;

    .line 577
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mResources:Lccsanandroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Lccsanandroid/content/Intent;
    .locals 1

    .line 464
    invoke-static {p0}, Lccsanandroidx/core/app/NavUtils;->getParentActivityIntent(Lccsanandroid/app/Activity;)Lccsanandroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 279
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 190
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mResources:Lccsanandroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    .line 196
    .local v0, "newMetrics":Lccsanandroid/util/DisplayMetrics;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatActivity;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Lccsanandroid/content/res/Resources;->updateConfiguration(Lccsanandroid/content/res/Configuration;Lccsanandroid/util/DisplayMetrics;)V

    .line 199
    .end local v0    # "newMetrics":Lccsanandroid/util/DisplayMetrics;
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 200
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 504
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->onSupportContentChanged()V

    .line 505
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 112
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    .line 113
    .local v0, "delegate":Lccsanandroidx/appcompat/app/AppCompatDelegate;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 114
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 115
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lccsanandroidx/core/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Lccsanandroidx/core/app/TaskStackBuilder;

    .line 381
    invoke-virtual {p1, p0}, Lccsanandroidx/core/app/TaskStackBuilder;->addParentStack(Lccsanandroid/app/Activity;)Lccsanandroidx/core/app/TaskStackBuilder;

    .line 382
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 242
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 243
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 244
    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 603
    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/app/AppCompatActivity;->performMenuItemShortcut(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x1

    return v0

    .line 606
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 228
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 233
    .local v0, "ab":Lccsanandroidx/appcompat/app/ActionBar;
    invoke-interface {p2}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    return v1

    .line 237
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuOpened(ILccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 528
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onMenuOpened(ILccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNightModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 634
    return-void
.end method

.method public onPanelClosed(ILccsanandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 539
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onPanelClosed(ILccsanandroid/view/Menu;)V

    .line 540
    return-void
.end method

.method protected onPostCreate(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 126
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onPostCreate(Lccsanandroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Lccsanandroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 204
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 205
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    .line 206
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lccsanandroidx/core/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Lccsanandroidx/core/app/TaskStackBuilder;

    .line 400
    return-void
.end method

.method protected onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 544
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 545
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 210
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onStart()V

    .line 211
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onStart()V

    .line 212
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 216
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onStop()V

    .line 217
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 218
    return-void
.end method

.method public onSupportActionModeFinished(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 301
    return-void
.end method

.method public onSupportActionModeStarted(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 290
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .line 426
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getSupportParentActivityIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 428
    .local v0, "upIntent":Lccsanandroid/content/Intent;
    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->supportShouldUpRecreateTask(Lccsanandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-static {p0}, Lccsanandroidx/core/app/TaskStackBuilder;->create(Lccsanandroid/content/Context;)Lccsanandroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 431
    .local v1, "b":Lccsanandroidx/core/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Lccsanandroidx/core/app/TaskStackBuilder;)V

    .line 432
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Lccsanandroidx/core/app/TaskStackBuilder;)V

    .line 433
    invoke-virtual {v1}, Lccsanandroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 436
    :try_start_0
    invoke-static {p0}, Lccsanandroidx/core/app/ActivityCompat;->finishAffinity(Lccsanandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 437
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 442
    .end local v1    # "b":Lccsanandroidx/core/app/TaskStackBuilder;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 445
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->supportNavigateUpTo(Lccsanandroid/content/Intent;)V

    .line 447
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 449
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 248
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 249
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public onWindowStartingSupportActionMode(Lccsanandroidx/appcompat/view/ActionMode$Callback;)Lccsanandroidx/appcompat/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 611
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 612
    .local v0, "actionBar":Lccsanandroidx/appcompat/app/ActionBar;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBar;->openOptionsMenu()Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    :cond_0
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->openOptionsMenu()V

    .line 616
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 170
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    .line 171
    return-void
.end method

.method public setContentView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 175
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setContentView(Lccsanandroid/view/View;)V

    .line 176
    return-void
.end method

.method public setContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 180
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void
.end method

.method public setSupportActionBar(Lccsanandroidx/appcompat/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lccsanandroidx/appcompat/widget/Toolbar;

    .line 159
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Lccsanandroidx/appcompat/widget/Toolbar;)V

    .line 160
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 120
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 121
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setTheme(I)V

    .line 122
    return-void
.end method

.method public startSupportActionMode(Lccsanandroidx/appcompat/view/ActionMode$Callback;)Lccsanandroidx/appcompat/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 326
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->startSupportActionMode(Lccsanandroidx/appcompat/view/ActionMode$Callback;)Lccsanandroidx/appcompat/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 274
    return-void
.end method

.method public supportNavigateUpTo(Lccsanandroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Lccsanandroid/content/Intent;

    .line 497
    invoke-static {p0, p1}, Lccsanandroidx/core/app/NavUtils;->navigateUpTo(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;)V

    .line 498
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .line 267
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Lccsanandroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Lccsanandroid/content/Intent;

    .line 481
    invoke-static {p0, p1}, Lccsanandroidx/core/app/NavUtils;->shouldUpRecreateTask(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;)Z

    move-result v0

    return v0
.end method
