.class public Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
.super Lccsanandroidx/appcompat/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Lccsanandroid/content/Context;

.field private mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/app/WindowDecorActionBar;Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/WindowDecorActionBar;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "callback"    # Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 991
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Lccsanandroidx/appcompat/view/ActionMode;-><init>()V

    .line 992
    iput-object p2, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Lccsanandroid/content/Context;

    .line 993
    iput-object p3, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 994
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;-><init>(Lccsanandroid/content/Context;)V

    .line 995
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 996
    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 997
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 1058
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1060
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1060
    return v0

    .line 1062
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1063
    throw v0
.end method

.method public finish()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1013
    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iput-object p0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lccsanandroidx/appcompat/view/ActionMode;

    .line 1024
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    iput-object v1, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Lccsanandroidx/appcompat/view/ActionMode;)V

    .line 1028
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 1029
    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1032
    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    .line 1033
    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->getViewGroup()Lccsanandroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1035
    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v2, v2, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1037
    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iput-object v0, v1, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 1038
    return-void
.end method

.method public getCustomView()Lccsanandroid/view/View;
    .locals 1

    .line 1115
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Lccsanandroid/view/Menu;
    .locals 1

    .line 1006
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 2

    .line 1001
    new-instance v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1099
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1094
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 1046
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1051
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1054
    nop

    .line 1055
    return-void

    .line 1053
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1054
    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 1128
    return-void
.end method

.method public onCloseSubMenu(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 1144
    return-void
.end method

.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 1120
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1121
    invoke-interface {v0, p0, p2}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 1148
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1149
    return-void

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1152
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 1153
    return-void
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 1131
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x0

    return v0

    .line 1135
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1136
    return v1

    .line 1139
    :cond_1
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 1140
    return v1
.end method

.method public setCustomView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1068
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setCustomView(Lccsanandroid/view/View;)V

    .line 1069
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1070
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1089
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1090
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 1074
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1075
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1084
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1085
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1079
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1080
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 1104
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1105
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1106
    return-void
.end method
