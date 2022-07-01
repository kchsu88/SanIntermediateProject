.class public Lccsanandroidx/appcompat/app/AlertDialog;
.super Lccsanandroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field final mAlert:Lccsanandroidx/appcompat/app/AlertController;


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/app/AlertDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "themeResId"    # I

    .line 98
    invoke-static {p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Lccsanandroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 99
    new-instance v0, Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lccsanandroidx/appcompat/app/AlertController;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/app/AppCompatDialog;Lccsanandroid/view/Window;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    .line 100
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;ZLccsanandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/app/AlertDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 105
    invoke-virtual {p0, p2}, Lccsanandroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 106
    invoke-virtual {p0, p3}, Lccsanandroidx/appcompat/app/AlertDialog;->setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    return-void
.end method

.method static resolveDialogTheme(Lccsanandroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resid"    # I

    .line 111
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 112
    return p1

    .line 114
    :cond_0
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 115
    .local v0, "outValue":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lccsanandroidx/appcompat/R$attr;->alertDialogTheme:I

    invoke-virtual {v2, v3, v0, v1}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 116
    iget v1, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getButton(I)Lccsanandroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->getButton(I)Lccsanandroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lccsanandroid/widget/ListView;
    .locals 1

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertController;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 278
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDialog;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertController;->installContent()V

    .line 280
    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 284
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/app/AlertController;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDialog;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 292
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/app/AlertController;->onKeyUp(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AppCompatDialog;->onKeyUp(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 226
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;Lccsanandroid/os/Message;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p4, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 244
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;Lccsanandroid/os/Message;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 245
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Lccsanandroid/os/Message;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Lccsanandroid/os/Message;

    .line 211
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;Lccsanandroid/os/Message;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .line 196
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 197
    return-void
.end method

.method public setCustomTitle(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Lccsanandroid/view/View;

    .line 155
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setCustomTitle(Lccsanandroid/view/View;)V

    .line 156
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 253
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 254
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 262
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .line 271
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 272
    .local v0, "out":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 273
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 274
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 164
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 145
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 172
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AlertController;->setView(Lccsanandroid/view/View;)V

    .line 173
    return-void
.end method

.method public setView(Lccsanandroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 187
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertDialog;->mAlert:Lccsanandroidx/appcompat/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/app/AlertController;->setView(Lccsanandroid/view/View;IIII)V

    .line 188
    return-void
.end method
