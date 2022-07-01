.class Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnKeyListener;
.implements Lccsanandroid/content/DialogInterface$OnClickListener;
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

.field private mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field mPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 45
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 143
    :cond_0
    return-void
.end method

.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 170
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Lccsanandroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;I)Z

    .line 171
    return-void
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 152
    if-nez p2, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->dismiss()V

    .line 155
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 158
    :cond_2
    return-void
.end method

.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;

    .line 147
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 148
    return-void
.end method

.method public onKey(Lccsanandroid/content/DialogInterface;ILccsanandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Lccsanandroid/view/KeyEvent;

    .line 95
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 96
    :cond_0
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 99
    .local v0, "win":Lccsanandroid/view/Window;
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "decor":Lccsanandroid/view/View;
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v2}, Lccsanandroid/view/View;->getKeyDispatcherState()Lccsanandroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 103
    .local v3, "ds":Lccsanandroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v3, p3, p0}, Lccsanandroid/view/KeyEvent$DispatcherState;->startTracking(Lccsanandroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 105
    return v1

    .line 109
    .end local v0    # "win":Lccsanandroid/view/Window;
    .end local v2    # "decor":Lccsanandroid/view/View;
    .end local v3    # "ds":Lccsanandroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 111
    .restart local v0    # "win":Lccsanandroid/view/Window;
    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v2

    .line 113
    .restart local v2    # "decor":Lccsanandroid/view/View;
    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {v2}, Lccsanandroid/view/View;->getKeyDispatcherState()Lccsanandroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 115
    .restart local v3    # "ds":Lccsanandroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p3}, Lccsanandroid/view/KeyEvent$DispatcherState;->isTracking(Lccsanandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 117
    invoke-interface {p1}, Lccsanandroid/content/DialogInterface;->dismiss()V

    .line 118
    return v1

    .line 109
    .end local v0    # "win":Lccsanandroid/view/Window;
    .end local v2    # "decor":Lccsanandroid/view/View;
    .end local v3    # "ds":Lccsanandroid/view/KeyEvent$DispatcherState;
    :cond_2
    nop

    .line 126
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILccsanandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 162
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPresenterCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 131
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 132
    return-void
.end method

.method public show(Lccsanandroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Lccsanandroid/os/IBinder;

    .line 54
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 57
    .local v0, "menu":Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    new-instance v1, Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    .line 59
    .local v1, "builder":Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    new-instance v2, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    sget v4, Lccsanandroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Lccsanandroid/content/Context;I)V

    iput-object v2, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    .line 62
    invoke-virtual {v2, p0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 63
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 64
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Lccsanandroid/widget/ListAdapter;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getHeaderView()Lccsanandroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "headerView":Lccsanandroid/view/View;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getHeaderIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    :goto_0
    invoke-virtual {v1, p0}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->create()Lccsanandroidx/appcompat/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

    .line 81
    invoke-virtual {v3, p0}, Lccsanandroidx/appcompat/app/AlertDialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/app/AlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 84
    .local v3, "lp":Lccsanandroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v3, Lccsanandroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    if-eqz p1, :cond_1

    .line 86
    iput-object p1, v3, Lccsanandroid/view/WindowManager$LayoutParams;->token:Lccsanandroid/os/IBinder;

    .line 88
    :cond_1
    iget v4, v3, Lccsanandroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Lccsanandroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Lccsanandroidx/appcompat/app/AlertDialog;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/app/AlertDialog;->show()V

    .line 91
    return-void
.end method
