.class public final Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Lccsanandroid/view/View;

.field decorView:Lccsanandroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Lccsanandroid/os/Bundle;

.field frozenMenuState:Lccsanandroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

.field listPresenterContext:Lccsanandroid/content/Context;

.field menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Lccsanandroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2845
    iput p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    .line 2847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 2848
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .line 2950
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Lccsanandroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2951
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Lccsanandroid/os/Bundle;)V

    .line 2952
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Lccsanandroid/os/Bundle;

    .line 2954
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .line 2861
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 2862
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2864
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    .line 2865
    return-void
.end method

.method getListMenuView(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 3
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2912
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2914
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    .line 2915
    new-instance v0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Lccsanandroid/content/Context;

    sget v2, Lccsanandroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Lccsanandroid/content/Context;I)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    .line 2917
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 2918
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2921
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    .line 2923
    .local v0, "result":Lccsanandroidx/appcompat/view/menu/MenuView;
    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    .line 2851
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2852
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Lccsanandroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2854
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 2940
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    .line 2941
    .local v0, "savedState":Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    iget v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    .line 2942
    iget-boolean v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->wasLastOpen:Z

    .line 2943
    iget-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Lccsanandroid/os/Bundle;

    iput-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Lccsanandroid/os/Bundle;

    .line 2945
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Lccsanandroid/view/View;

    .line 2946
    iput-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Lccsanandroid/view/ViewGroup;

    .line 2947
    return-void
.end method

.method onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 3

    .line 2927
    new-instance v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;-><init>()V

    .line 2928
    .local v0, "savedState":Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    iget v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iput v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    .line 2929
    iget-boolean v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    .line 2931
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 2932
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Lccsanandroid/os/Bundle;

    .line 2933
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Lccsanandroid/os/Bundle;)V

    .line 2936
    :cond_0
    return-object v0
.end method

.method setMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 2900
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 2902
    :cond_0
    if-eqz v0, :cond_1

    .line 2903
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2905
    :cond_1
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 2906
    if-eqz p1, :cond_2

    .line 2907
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 2909
    :cond_2
    return-void
.end method

.method setStyle(Lccsanandroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 2868
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 2869
    .local v0, "outValue":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->newTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2870
    .local v1, "widgetTheme":Lccsanandroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources$Theme;->setTo(Lccsanandroid/content/res/Resources$Theme;)V

    .line 2873
    sget v2, Lccsanandroidx/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 2874
    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 2875
    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2879
    :cond_0
    sget v2, Lccsanandroidx/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 2880
    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 2881
    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 2883
    :cond_1
    sget v2, Lccsanandroidx/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2886
    :goto_0
    new-instance v2, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    move-object p1, v2

    .line 2887
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/content/res/Resources$Theme;->setTo(Lccsanandroid/content/res/Resources$Theme;)V

    .line 2889
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Lccsanandroid/content/Context;

    .line 2891
    sget-object v2, Lccsanandroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v2

    .line 2892
    .local v2, "a":Lccsanandroid/content/res/TypedArray;
    sget v4, Lccsanandroidx/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    .line 2894
    sget v4, Lccsanandroidx/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    .line 2896
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 2897
    return-void
.end method
