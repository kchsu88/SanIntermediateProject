.class public Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
.super Lccsanandroidx/appcompat/app/AlertDialog$Builder;
.source "MaterialAlertDialogBuilder.java"


# static fields
.field private static final DEF_STYLE_ATTR:I

.field private static final DEF_STYLE_RES:I

.field private static final MATERIAL_ALERT_DIALOG_THEME_OVERLAY:I


# instance fields
.field private background:Lccsanandroid/graphics/drawable/Drawable;

.field private final backgroundInsets:Lccsanandroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget v0, Lccsancom/google/android/material/R$attr;->alertDialogStyle:I

    sput v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_ATTR:I

    .line 70
    sget v0, Lccsancom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents:I

    sput v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_RES:I

    .line 73
    sget v0, Lccsancom/google/android/material/R$attr;->materialAlertDialogTheme:I

    sput v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->MATERIAL_ALERT_DIALOG_THEME_OVERLAY:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Lccsanandroid/content/Context;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "overrideThemeResId"    # I

    .line 109
    nop

    .line 110
    invoke-static {p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->createMaterialAlertDialogThemedContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    .line 111
    invoke-static {p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getOverridingThemeResId(Lccsanandroid/content/Context;I)I

    move-result v1

    .line 109
    invoke-direct {p0, v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;I)V

    .line 113
    invoke-virtual {p0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    .line 116
    .local v0, "theme":Lccsanandroid/content/res/Resources$Theme;
    sget v1, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v2, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_RES:I

    .line 117
    invoke-static {p1, v1, v2}, Lccsancom/google/android/material/dialog/MaterialDialogs;->getDialogBackgroundInsets(Lccsanandroid/content/Context;II)Lccsanandroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    .line 119
    sget v3, Lccsancom/google/android/material/R$attr;->colorSurface:I

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "surfaceColor":I
    new-instance v4, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    move-object v1, v4

    .line 123
    .local v1, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v1, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 124
    invoke-static {v3}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 127
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_0

    .line 128
    new-instance v2, Lccsanandroid/util/TypedValue;

    invoke-direct {v2}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 129
    .local v2, "dialogCornerRadiusValue":Lccsanandroid/util/TypedValue;
    const v4, 0x1010571

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanandroid/util/TypedValue;->getDimension(Lccsanandroid/util/DisplayMetrics;)F

    move-result v4

    .line 132
    .local v4, "dialogCornerRadius":F
    iget v5, v2, Lccsanandroid/util/TypedValue;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    .line 133
    invoke-virtual {v1, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 136
    .end local v2    # "dialogCornerRadiusValue":Lccsanandroid/util/TypedValue;
    .end local v4    # "dialogCornerRadius":F
    :cond_0
    iput-object v1, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lccsanandroid/graphics/drawable/Drawable;

    .line 137
    return-void
.end method

.method private static createMaterialAlertDialogThemedContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 88
    invoke-static {p0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getMaterialAlertDialogThemeOverlay(Lccsanandroid/content/Context;)I

    move-result v0

    .line 89
    .local v0, "themeOverlayId":I
    sget v1, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v2, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_RES:I

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v1

    .line 90
    .local v1, "themedContext":Lccsanandroid/content/Context;
    if-nez v0, :cond_0

    .line 91
    return-object v1

    .line 93
    :cond_0
    new-instance v2, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, v1, v0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    return-object v2
.end method

.method private static getMaterialAlertDialogThemeOverlay(Lccsanandroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 79
    sget v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->MATERIAL_ALERT_DIALOG_THEME_OVERLAY:I

    .line 80
    invoke-static {p0, v0}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolve(Lccsanandroid/content/Context;I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 81
    .local v0, "materialAlertDialogThemeOverlay":Lccsanandroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    return v1

    .line 84
    :cond_0
    iget v1, v0, Lccsanandroid/util/TypedValue;->data:I

    return v1
.end method

.method private static getOverridingThemeResId(Lccsanandroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "overrideThemeResId"    # I

    .line 97
    if-nez p1, :cond_0

    .line 98
    invoke-static {p0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getMaterialAlertDialogThemeOverlay(Lccsanandroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 97
    :goto_0
    return v0
.end method


# virtual methods
.method public create()Lccsanandroidx/appcompat/app/AlertDialog;
    .locals 6

    .line 142
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->create()Lccsanandroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 143
    .local v0, "alertDialog":Lccsanandroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    .line 146
    .local v1, "window":Lccsanandroid/view/Window;
    invoke-virtual {v1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v2

    .line 147
    .local v2, "decorView":Lccsanandroid/view/View;
    iget-object v3, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lccsanandroid/graphics/drawable/Drawable;

    instance-of v4, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_0

    .line 148
    check-cast v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 151
    :cond_0
    iget-object v3, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    invoke-static {v3, v4}, Lccsancom/google/android/material/dialog/MaterialDialogs;->insetDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/Rect;)Lccsanandroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    .line 152
    .local v3, "insetDrawable":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 153
    new-instance v4, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;

    iget-object v5, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    invoke-direct {v4, v0, v5}, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Lccsanandroid/app/Dialog;Lccsanandroid/graphics/Rect;)V

    invoke-virtual {v2, v4}, Lccsanandroid/view/View;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 154
    return-object v0
.end method

.method public getBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 159
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public bridge synthetic setAdapter(Lccsanandroid/widget/ListAdapter;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setAdapter(Lccsanandroid/widget/ListAdapter;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Lccsanandroid/widget/ListAdapter;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "adapter"    # Lccsanandroid/widget/ListAdapter;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 359
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Lccsanandroid/widget/ListAdapter;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setBackground(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 164
    iput-object p1, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lccsanandroid/graphics/drawable/Drawable;

    .line 165
    return-object p0
.end method

.method public setBackgroundInsetBottom(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "backgroundInsetBottom"    # I

    .line 200
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    iput p1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    .line 201
    return-object p0
.end method

.method public setBackgroundInsetEnd(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 2
    .param p1, "backgroundInsetEnd"    # I

    .line 188
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    iput p1, v0, Lccsanandroid/graphics/Rect;->left:I

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    iput p1, v0, Lccsanandroid/graphics/Rect;->right:I

    .line 195
    :goto_0
    return-object p0
.end method

.method public setBackgroundInsetStart(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 2
    .param p1, "backgroundInsetStart"    # I

    .line 170
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    iput p1, v0, Lccsanandroid/graphics/Rect;->right:I

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    iput p1, v0, Lccsanandroid/graphics/Rect;->left:I

    .line 177
    :goto_0
    return-object p0
.end method

.method public setBackgroundInsetTop(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "backgroundInsetTop"    # I

    .line 182
    iget-object v0, p0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Lccsanandroid/graphics/Rect;

    iput p1, v0, Lccsanandroid/graphics/Rect;->top:I

    .line 183
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCancelable(Z)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 318
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setCursor(Lccsanandroid/database/Cursor;Lccsanandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCursor(Lccsanandroid/database/Cursor;Lccsanandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCursor(Lccsanandroid/database/Cursor;Lccsanandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .line 368
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setCursor(Lccsanandroid/database/Cursor;Lccsanandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setCustomTitle(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCustomTitle(Lccsanandroid/view/View;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomTitle(Lccsanandroid/view/View;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "customTitleView"    # Lccsanandroid/view/View;

    .line 222
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setIcon(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "iconId"    # I

    .line 240
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 246
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setIconAttribute(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIconAttribute(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIconAttribute(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "attrId"    # I

    .line 252
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setItems(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setItems(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 345
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setItems(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 352
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setMessage(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "messageId"    # I

    .line 228
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 234
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems(I[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems(Lccsanandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems(Lccsanandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultiChoiceItems(I[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 377
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setMultiChoiceItems(Lccsanandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 396
    nop

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems(Lccsanandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 396
    return-object v0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 386
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 279
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 286
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setNegativeButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 292
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setNegativeButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 299
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 306
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setNeutralButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 312
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setNeutralButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "onCancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 325
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "onDismissListener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 332
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "listener"    # Lccsanandroid/widget/AdapterView$OnItemSelectedListener;

    .line 436
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "onKeyListener"    # Lccsanandroid/content/DialogInterface$OnKeyListener;

    .line 338
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Lccsanandroid/content/DialogInterface$OnKeyListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 259
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 266
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setPositiveButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 272
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setPositiveButtonIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(IILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems(IILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(Lccsanandroid/database/Cursor;ILjava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems(Lccsanandroid/database/Cursor;ILjava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(Lccsanandroid/widget/ListAdapter;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems(Lccsanandroid/widget/ListAdapter;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSingleChoiceItems(IILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 404
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setSingleChoiceItems(Lccsanandroid/database/Cursor;ILjava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 414
    nop

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Lccsanandroid/database/Cursor;ILjava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 414
    return-object v0
.end method

.method public setSingleChoiceItems(Lccsanandroid/widget/ListAdapter;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "adapter"    # Lccsanandroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 429
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Lccsanandroid/widget/ListAdapter;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 422
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setTitle(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "titleId"    # I

    .line 210
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 216
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public bridge synthetic setView(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setView(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Lccsanandroid/view/View;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setView(I)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "layoutResId"    # I

    .line 442
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setView(I)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public setView(Lccsanandroid/view/View;)Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 448
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setView(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method
