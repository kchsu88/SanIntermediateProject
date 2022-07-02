.class public Lccsancom/google/android/material/dialog/MaterialDialogs;
.super Ljava/lang/Object;
.source "MaterialDialogs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialogBackgroundInsets(Lccsanandroid/content/Context;II)Lccsanandroid/graphics/Rect;
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "defaultStyleAttribute"    # I
    .param p2, "defaultStyleResource"    # I

    .line 59
    sget-object v2, Lccsancom/google/android/material/R$styleable;->MaterialAlertDialog:[I

    const/4 v0, 0x0

    new-array v5, v0, [I

    .line 60
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "attributes":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetStart:I

    .line 71
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsancom/google/android/material/R$dimen;->ccsan_mtrl_alert_dialog_background_inset_start:I

    .line 72
    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 73
    .local v1, "backgroundInsetStart":I
    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetTop:I

    .line 77
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    sget v4, Lccsancom/google/android/material/R$dimen;->ccsan_mtrl_alert_dialog_background_inset_top:I

    .line 78
    invoke-virtual {v3, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 74
    invoke-virtual {v0, v2, v3}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 80
    .local v2, "backgroundInsetTop":I
    sget v3, Lccsancom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetEnd:I

    .line 84
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    sget v5, Lccsancom/google/android/material/R$dimen;->ccsan_mtrl_alert_dialog_background_inset_end:I

    .line 85
    invoke-virtual {v4, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 81
    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 86
    .local v3, "backgroundInsetEnd":I
    sget v4, Lccsancom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetBottom:I

    .line 90
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccsancom/google/android/material/R$dimen;->ccsan_mtrl_alert_dialog_background_inset_bottom:I

    .line 91
    invoke-virtual {v5, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 87
    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 93
    .local v4, "backgroundInsetBottom":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 95
    move v5, v1

    .line 96
    .local v5, "backgroundInsetLeft":I
    move v6, v3

    .line 97
    .local v6, "backgroundInsetRight":I
    sget v7, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 98
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    .line 99
    .local v7, "layoutDirection":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 100
    move v5, v3

    .line 101
    move v6, v1

    .line 105
    .end local v7    # "layoutDirection":I
    :cond_0
    new-instance v7, Lccsanandroid/graphics/Rect;

    invoke-direct {v7, v5, v2, v6, v4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    return-object v7
.end method

.method public static insetDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/Rect;)Lccsanandroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p1, "backgroundInsets"    # Lccsanandroid/graphics/Rect;

    .line 48
    new-instance v6, Lccsanandroid/graphics/drawable/InsetDrawable;

    iget v2, p1, Lccsanandroid/graphics/Rect;->left:I

    iget v3, p1, Lccsanandroid/graphics/Rect;->top:I

    iget v4, p1, Lccsanandroid/graphics/Rect;->right:I

    iget v5, p1, Lccsanandroid/graphics/Rect;->bottom:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method
