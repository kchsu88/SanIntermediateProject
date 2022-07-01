.class public interface abstract Lccsanandroidx/appcompat/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
.end method

.method public abstract initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Lccsanandroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
