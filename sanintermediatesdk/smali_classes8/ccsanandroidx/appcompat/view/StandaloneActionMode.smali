.class public Lccsanandroidx/appcompat/view/StandaloneActionMode;
.super Lccsanandroidx/appcompat/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

.field private mContext:Lccsanandroid/content/Context;

.field private mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/ActionBarContextView;Lccsanandroidx/appcompat/view/ActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "view"    # Lccsanandroidx/appcompat/widget/ActionBarContextView;
    .param p3, "callback"    # Lccsanandroidx/appcompat/view/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .line 51
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/ActionMode;-><init>()V

    .line 52
    iput-object p1, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContext:Lccsanandroid/content/Context;

    .line 53
    iput-object p2, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    .line 54
    iput-object p3, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 56
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p2}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;-><init>(Lccsanandroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 58
    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 59
    iput-boolean p4, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mFocusable:Z

    .line 60
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mFinished:Z

    .line 111
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 112
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Lccsanandroidx/appcompat/view/ActionMode;)V

    .line 113
    return-void
.end method

.method public getCustomView()Lccsanandroid/view/View;
    .locals 1

    .line 132
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

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

    .line 117
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 2

    .line 137
    new-instance v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 101
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z

    .line 102
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 146
    return-void
.end method

.method public onCloseSubMenu(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 158
    return-void
.end method

.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 142
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mCallback:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 162
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/StandaloneActionMode;->invalidate()V

    .line 163
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 164
    return-void
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 149
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 150
    return v1

    .line 153
    :cond_0
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 154
    return v1
.end method

.method public setCustomView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 95
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setCustomView(Lccsanandroid/view/View;)V

    .line 96
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 97
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 79
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 69
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 74
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 64
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 84
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 85
    iget-object v0, p0, Lccsanandroidx/appcompat/view/StandaloneActionMode;->mContextView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 86
    return-void
.end method
