.class public Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;
.super Lccsanandroidx/appcompat/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lccsanandroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetCallback:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z

.field private container:Lccsanandroid/widget/FrameLayout;

.field dismissWithAnimation:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "theme"    # I

    .line 60
    invoke-static {p1, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getThemeResId(Lccsanandroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 52
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 291
    new-instance v1, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$4;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 63
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 64
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;ZLccsanandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AppCompatDialog;-><init>(Lccsanandroid/content/Context;ZLccsanandroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 52
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 291
    new-instance v1, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$4;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 69
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 70
    iput-boolean p2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 71
    return-void
.end method

.method private ensureContainerAndBehavior()Lccsanandroid/widget/FrameLayout;
    .locals 3

    .line 186
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->container:Lccsanandroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 187
    nop

    .line 188
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$layout;->ccsan_design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->container:Lccsanandroid/widget/FrameLayout;

    .line 190
    sget v1, Lccsancom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    .line 191
    .local v0, "bottomSheet":Lccsanandroid/widget/FrameLayout;
    invoke-static {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Lccsanandroid/view/View;)Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 192
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 193
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 195
    .end local v0    # "bottomSheet":Lccsanandroid/widget/FrameLayout;
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->container:Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method

.method private static getThemeResId(Lccsanandroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "themeId"    # I

    .line 274
    if-nez p1, :cond_1

    .line 276
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 277
    .local v0, "outValue":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$attr;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget p1, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 281
    :cond_0
    sget p1, Lccsancom/google/android/material/R$style;->Theme_Design_Light_BottomSheetDialog:I

    .line 284
    .end local v0    # "outValue":Lccsanandroid/util/TypedValue;
    :cond_1
    :goto_0
    return p1
.end method

.method private wrapInBottomSheet(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 200
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->ensureContainerAndBehavior()Lccsanandroid/widget/FrameLayout;

    .line 201
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->container:Lccsanandroid/widget/FrameLayout;

    sget v1, Lccsancom/google/android/material/R$id;->coordinator:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 202
    .local v0, "coordinator":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 203
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getLayoutInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p2

    .line 206
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->container:Lccsanandroid/widget/FrameLayout;

    sget v2, Lccsancom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    .line 207
    .local v1, "bottomSheet":Lccsanandroid/widget/FrameLayout;
    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 208
    if-nez p3, :cond_1

    .line 209
    invoke-virtual {v1, p2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v1, p2, p3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 214
    :goto_0
    sget v2, Lccsancom/google/android/material/R$id;->touch_outside:I

    .line 215
    invoke-virtual {v0, v2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    new-instance v3, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$1;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 216
    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 226
    new-instance v2, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-static {v1, v2}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 250
    new-instance v2, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$3;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$3;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->container:Lccsanandroid/widget/FrameLayout;

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 140
    .local v0, "behavior":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<Lccsanandroid/widget/FrameLayout;>;"
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->cancel()V

    .line 145
    :goto_1
    return-void
.end method

.method public getBehavior()Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lccsanandroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->ensureContainerAndBehavior()Lccsanandroid/widget/FrameLayout;

    .line 163
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method public getDismissWithAnimation()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    return v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDialog;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 82
    .local v0, "window":Lccsanandroid/view/Window;
    if-eqz v0, :cond_1

    .line 83
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 84
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 85
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 87
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 89
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 114
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->onStart()V

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 118
    :cond_0
    return-void
.end method

.method removeDefaultCallback()V
    .locals 2

    .line 288
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 289
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .line 103
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 104
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-eq v0, p1, :cond_0

    .line 105
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 106
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .line 149
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-nez v1, :cond_0

    .line 151
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 153
    :cond_0
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 154
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 155
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setContentView(Lccsanandroid/view/View;)V

    .line 76
    return-void
.end method

.method public setContentView(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setContentView(Lccsanandroid/view/View;)V

    .line 94
    return-void
.end method

.method public setContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->setContentView(Lccsanandroid/view/View;)V

    .line 99
    return-void
.end method

.method public setDismissWithAnimation(Z)V
    .locals 0
    .param p1, "dismissWithAnimation"    # Z

    .line 173
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    .line 174
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .locals 5

    .line 262
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v0, :cond_0

    .line 263
    nop

    .line 264
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 265
    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v1}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 267
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 268
    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 270
    .end local v0    # "a":Lccsanandroid/content/res/TypedArray;
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    return v0
.end method
