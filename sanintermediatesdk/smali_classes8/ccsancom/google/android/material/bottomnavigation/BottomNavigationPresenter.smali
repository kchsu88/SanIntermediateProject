.class public Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 105
    iget v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->id:I

    return v0
.end method

.method public getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Lccsanandroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    return-object v0
.end method

.method public initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 52
    iput-object p2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 53
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->initialize(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 54
    return-void
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 82
    return-void
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 120
    instance-of v0, p1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v1, p1

    check-cast v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget v1, v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    .line 122
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 124
    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget-object v1, v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lccsancom/google/android/material/internal/ParcelableSparseArray;

    .line 123
    invoke-static {v0, v1}, Lccsancom/google/android/material/badge/BadgeUtils;->createBadgeDrawablesFromSavedStates(Lccsanandroid/content/Context;Lccsancom/google/android/material/internal/ParcelableSparseArray;)Lccsanandroid/util/SparseArray;

    move-result-object v0

    .line 125
    .local v0, "badgeDrawables":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsancom/google/android/material/badge/BadgeDrawable;>;"
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setBadgeDrawables(Lccsanandroid/util/SparseArray;)V

    .line 127
    .end local v0    # "badgeDrawables":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsancom/google/android/material/badge/BadgeDrawable;>;"
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 2

    .line 111
    new-instance v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 112
    .local v0, "savedState":Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 113
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 114
    invoke-virtual {v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getBadgeDrawables()Lccsanandroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/badge/BadgeUtils;->createParcelableBadgeStates(Lccsanandroid/util/SparseArray;)Lccsancom/google/android/material/internal/ParcelableSparseArray;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->badgeSavedStates:Lccsancom/google/android/material/internal/ParcelableSparseArray;

    .line 115
    return-object v0
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .locals 0
    .param p1, "menuView"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 47
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 48
    return-void
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 74
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 100
    iput p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->id:I

    .line 101
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0
    .param p1, "updateSuspended"    # Z

    .line 130
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    .line 131
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 63
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateSuspended:Z

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->updateMenuView()V

    .line 71
    :goto_0
    return-void
.end method
