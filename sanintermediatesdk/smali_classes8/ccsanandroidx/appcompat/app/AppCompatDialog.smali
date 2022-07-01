.class public Lccsanandroidx/appcompat/app/AppCompatDialog;
.super Lccsanandroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Lccsanandroidx/appcompat/app/AppCompatCallback;


# instance fields
.field private mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

.field private final mKeyDispatcher:Lccsanandroidx/core/view/KeyEventDispatcher$Component;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "theme"    # I

    .line 57
    invoke-static {p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getThemeResId(Lccsanandroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 45
    new-instance v0, Lccsanandroidx/appcompat/app/AppCompatDialog$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/app/AppCompatDialog$1;-><init>(Lccsanandroidx/appcompat/app/AppCompatDialog;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Lccsanandroidx/core/view/KeyEventDispatcher$Component;

    .line 59
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    .line 61
    .local v0, "delegate":Lccsanandroidx/appcompat/app/AppCompatDelegate;
    invoke-static {p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getThemeResId(Lccsanandroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setTheme(I)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;ZLccsanandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;ZLccsanandroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    new-instance v0, Lccsanandroidx/appcompat/app/AppCompatDialog$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/app/AppCompatDialog$1;-><init>(Lccsanandroidx/appcompat/app/AppCompatDialog;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Lccsanandroidx/core/view/KeyEventDispatcher$Component;

    .line 73
    return-void
.end method

.method private static getThemeResId(Lccsanandroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "themeId"    # I

    .line 183
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 186
    .local v0, "outValue":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$attr;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 187
    iget p1, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    .line 189
    .end local v0    # "outValue":Lccsanandroid/util/TypedValue;
    :cond_0
    return p1
.end method


# virtual methods
.method public addContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 129
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->addContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 140
    invoke-super {p0}, Lccsanandroid/app/Dialog;->dismiss()V

    .line 142
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 143
    return-void
.end method

.method public dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 213
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "decor":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Lccsanandroidx/core/view/KeyEventDispatcher$Component;

    invoke-static {v1, v0, p0, p1}, Lccsanandroidx/core/view/KeyEventDispatcher;->dispatchKeyEvent(Lccsanandroidx/core/view/KeyEventDispatcher$Component;Lccsanandroid/view/View;Lccsanandroid/view/Window$Callback;Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    return v1
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

    .line 112
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;
    .locals 1

    .line 176
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDialog;->mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 177
    invoke-static {p0, p0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->create(Lccsanandroid/app/Dialog;Lccsanandroidx/appcompat/app/AppCompatCallback;)Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDialog;->mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

    .line 179
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDialog;->mDelegate:Lccsanandroidx/appcompat/app/AppCompatDelegate;

    return-object v0
.end method

.method public getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Lccsanandroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 170
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 77
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 78
    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 134
    invoke-super {p0}, Lccsanandroid/app/Dialog;->onStop()V

    .line 135
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 136
    return-void
.end method

.method public onSupportActionModeFinished(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 198
    return-void
.end method

.method public onSupportActionModeStarted(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 194
    return-void
.end method

.method public onWindowStartingSupportActionMode(Lccsanandroidx/appcompat/view/ActionMode$Callback;)Lccsanandroidx/appcompat/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 95
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    .line 96
    return-void
.end method

.method public setContentView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 100
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setContentView(Lccsanandroid/view/View;)V

    .line 101
    return-void
.end method

.method public setContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 105
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "titleId"    # I

    .line 123
    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->setTitle(I)V

    .line 124
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 117
    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method superDispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 208
    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .line 160
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->getDelegate()Lccsanandroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method
