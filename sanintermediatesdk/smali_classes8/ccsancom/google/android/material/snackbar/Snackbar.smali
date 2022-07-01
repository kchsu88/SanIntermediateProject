.class public Lccsancom/google/android/material/snackbar/Snackbar;
.super Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;,
        Lccsancom/google/android/material/snackbar/Snackbar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar<",
        "Lccsancom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final SNACKBAR_BUTTON_STYLE_ATTR:[I

.field private static final SNACKBAR_CONTENT_STYLE_ATTRS:[I


# instance fields
.field private final accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

.field private callback:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "Lccsancom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private hasAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lccsancom/google/android/material/R$attr;->snackbarButtonStyle:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lccsancom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lccsancom/google/android/material/R$attr;->snackbarButtonStyle:I

    aput v2, v1, v3

    sget v2, Lccsancom/google/android/material/R$attr;->snackbarTextViewStyle:I

    aput v2, v1, v0

    sput-object v1, Lccsancom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsancom/google/android/material/snackbar/ContentViewCallback;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p3, "content"    # Lccsanandroid/view/View;
    .param p4, "contentViewCallback"    # Lccsancom/google/android/material/snackbar/ContentViewCallback;

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsancom/google/android/material/snackbar/ContentViewCallback;)V

    .line 112
    nop

    .line 113
    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    .line 114
    return-void
.end method

.method private static findSuitableParent(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "fallback":Lccsanandroid/view/ViewGroup;
    :goto_0
    instance-of v1, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 271
    move-object v1, p0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    return-object v1

    .line 272
    :cond_0
    instance-of v1, p0, Lccsanandroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {p0}, Lccsanandroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    .line 276
    move-object v1, p0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    return-object v1

    .line 279
    :cond_1
    move-object v0, p0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 283
    :cond_2
    if-eqz p0, :cond_4

    .line 285
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 286
    .local v1, "parent":Lccsanandroid/view/ViewParent;
    instance-of v2, v1, Lccsanandroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lccsanandroid/view/View;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move-object p0, v2

    .line 288
    .end local v1    # "parent":Lccsanandroid/view/ViewParent;
    :cond_4
    if-nez p0, :cond_5

    .line 291
    return-object v0

    .line 288
    :cond_5
    goto :goto_0
.end method

.method protected static hasSnackbarButtonStyleAttr(Lccsanandroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    sget-object v0, Lccsancom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 232
    .local v3, "snackbarButtonStyleResId":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 233
    if-eq v3, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static hasSnackbarContentStyleAttrs(Lccsanandroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 237
    sget-object v0, Lccsancom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 239
    .local v3, "snackbarButtonStyleResId":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 240
    .local v5, "snackbarTextViewStyleResId":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 241
    if-eq v3, v2, :cond_0

    if-eq v5, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static make(Lccsanandroid/content/Context;Lccsanandroid/view/View;Ljava/lang/CharSequence;I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 184
    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/material/snackbar/Snackbar;->makeInternal(Lccsanandroid/content/Context;Lccsanandroid/view/View;Ljava/lang/CharSequence;I)Lccsancom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lccsanandroid/view/View;II)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .line 262
    invoke-virtual {p0}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lccsancom/google/android/material/snackbar/Snackbar;->make(Lccsanandroid/view/View;Ljava/lang/CharSequence;I)Lccsancom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lccsanandroid/view/View;Ljava/lang/CharSequence;I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 157
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lccsancom/google/android/material/snackbar/Snackbar;->makeInternal(Lccsanandroid/content/Context;Lccsanandroid/view/View;Ljava/lang/CharSequence;I)Lccsancom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static makeInternal(Lccsanandroid/content/Context;Lccsanandroid/view/View;Ljava/lang/CharSequence;I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 196
    invoke-static {p1}, Lccsancom/google/android/material/snackbar/Snackbar;->findSuitableParent(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    .line 197
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 202
    if-nez p0, :cond_0

    .line 203
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p0

    .line 206
    :cond_0
    invoke-static {p0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    .line 207
    .local v1, "inflater":Lccsanandroid/view/LayoutInflater;
    nop

    .line 210
    invoke-static {p0}, Lccsancom/google/android/material/snackbar/Snackbar;->hasSnackbarContentStyleAttrs(Lccsanandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lccsancom/google/android/material/R$layout;->mtrl_layout_snackbar_include:I

    goto :goto_0

    :cond_1
    sget v2, Lccsancom/google/android/material/R$layout;->design_layout_snackbar_include:I

    :goto_0
    const/4 v3, 0x0

    .line 209
    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 215
    .local v2, "content":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    new-instance v3, Lccsancom/google/android/material/snackbar/Snackbar;

    invoke-direct {v3, p0, v0, v2, v2}, Lccsancom/google/android/material/snackbar/Snackbar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsancom/google/android/material/snackbar/ContentViewCallback;)V

    .line 216
    .local v3, "snackbar":Lccsancom/google/android/material/snackbar/Snackbar;
    invoke-virtual {v3, p2}, Lccsancom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lccsancom/google/android/material/snackbar/Snackbar;

    .line 217
    invoke-virtual {v3, p3}, Lccsancom/google/android/material/snackbar/Snackbar;->setDuration(I)Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 218
    return-object v3

    .line 198
    .end local v1    # "inflater":Lccsanandroid/view/LayoutInflater;
    .end local v2    # "content":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    .end local v3    # "snackbar":Lccsancom/google/android/material/snackbar/Snackbar;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 127
    invoke-super {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->dismiss()V

    .line 128
    return-void
.end method

.method public getDuration()I
    .locals 4

    .line 363
    invoke-super {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v0

    .line 364
    .local v0, "userSetDuration":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 365
    return v1

    .line 368
    :cond_0
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 369
    iget-boolean v1, p0, Lccsancom/google/android/material/snackbar/Snackbar;->hasAction:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 370
    .local v1, "controlsFlag":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/material/snackbar/Snackbar;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    or-int/lit8 v3, v1, 0x1

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v0, v3}, Lccsanandroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v2

    return v2

    .line 375
    .end local v1    # "controlsFlag":I
    :cond_2
    iget-boolean v2, p0, Lccsancom/google/android/material/snackbar/Snackbar;->hasAction:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lccsancom/google/android/material/snackbar/Snackbar;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Lccsanandroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method

.method public isShown()Z
    .locals 1

    .line 134
    invoke-super {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAction(ILccsanandroid/view/View$OnClickListener;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 325
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/Snackbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsancom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Lccsanandroid/view/View$OnClickListener;)Lccsancom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Lccsanandroid/view/View$OnClickListener;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 337
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 338
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Lccsanandroid/widget/Button;

    move-result-object v2

    .line 339
    .local v2, "tv":Lccsanandroid/widget/TextView;
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lccsancom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 345
    invoke-virtual {v2, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-virtual {v2, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    new-instance v1, Lccsancom/google/android/material/snackbar/Snackbar$1;

    invoke-direct {v1, p0, p2}, Lccsancom/google/android/material/snackbar/Snackbar$1;-><init>(Lccsancom/google/android/material/snackbar/Snackbar;Lccsanandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 340
    :cond_1
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 341
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 342
    iput-boolean v1, p0, Lccsancom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 357
    :goto_1
    return-object p0
.end method

.method public setActionTextColor(I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 2
    .param p1, "color"    # I

    .line 433
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 434
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Lccsanandroid/widget/Button;

    move-result-object v1

    .line 435
    .local v1, "tv":Lccsanandroid/widget/TextView;
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 436
    return-object p0
.end method

.method public setActionTextColor(Lccsanandroid/content/res/ColorStateList;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 2
    .param p1, "colors"    # Lccsanandroid/content/res/ColorStateList;

    .line 410
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 411
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Lccsanandroid/widget/Button;

    move-result-object v1

    .line 412
    .local v1, "tv":Lccsanandroid/widget/TextView;
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 413
    return-object p0
.end method

.method public setBackgroundTint(I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "color"    # I

    .line 442
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/Snackbar;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)Lccsancom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "colorStateList"    # Lccsanandroid/content/res/ColorStateList;

    .line 448
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 449
    return-object p0
.end method

.method public setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 454
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 455
    return-object p0
.end method

.method public setCallback(Lccsancom/google/android/material/snackbar/Snackbar$Callback;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/snackbar/Snackbar$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->callback:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/Snackbar;->removeCallback(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 477
    :cond_0
    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/snackbar/Snackbar;->addCallback(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 482
    :cond_1
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/Snackbar;->callback:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    .line 483
    return-object p0
.end method

.method public setMaxInlineActionWidth(I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 2
    .param p1, "width"    # I

    .line 422
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 423
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    .line 424
    return-object p0
.end method

.method public setText(I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p1, "resId"    # I

    .line 314
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/Snackbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lccsancom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 301
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 302
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Lccsanandroid/widget/TextView;

    move-result-object v1

    .line 303
    .local v1, "tv":Lccsanandroid/widget/TextView;
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-object p0
.end method

.method public setTextColor(I)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 2
    .param p1, "color"    # I

    .line 398
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 399
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Lccsanandroid/widget/TextView;

    move-result-object v1

    .line 400
    .local v1, "tv":Lccsanandroid/widget/TextView;
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 401
    return-object p0
.end method

.method public setTextColor(Lccsanandroid/content/res/ColorStateList;)Lccsancom/google/android/material/snackbar/Snackbar;
    .locals 2
    .param p1, "colors"    # Lccsanandroid/content/res/ColorStateList;

    .line 386
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;

    .line 387
    .local v0, "contentLayout":Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Lccsanandroid/widget/TextView;

    move-result-object v1

    .line 388
    .local v1, "tv":Lccsanandroid/widget/TextView;
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 389
    return-object p0
.end method

.method public show()V
    .locals 0

    .line 120
    invoke-super {p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 121
    return-void
.end method
