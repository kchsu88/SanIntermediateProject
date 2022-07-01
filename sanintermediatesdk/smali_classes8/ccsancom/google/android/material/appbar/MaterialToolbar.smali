.class public Lccsancom/google/android/material/appbar/MaterialToolbar;
.super Lccsanandroidx/appcompat/widget/Toolbar;
.source "MaterialToolbar.java"


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private navigationIconTint:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget v0, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_Toolbar:I

    sput v0, Lccsancom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/appbar/MaterialToolbar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 74
    sget v0, Lccsancom/google/android/material/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/appbar/MaterialToolbar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    sget v4, Lccsancom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroidx/appcompat/widget/Toolbar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 80
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/MaterialToolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 82
    sget-object v2, Lccsancom/google/android/material/R$styleable;->MaterialToolbar:[I

    const/4 v0, 0x0

    new-array v5, v0, [I

    .line 83
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    .line 90
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-direct {p0, p1}, Lccsancom/google/android/material/appbar/MaterialToolbar;->initBackground(Lccsanandroid/content/Context;)V

    .line 93
    return-void
.end method

.method private initBackground(Lccsanandroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/MaterialToolbar;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 135
    .local v1, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lccsanandroid/graphics/drawable/ColorDrawable;

    .line 136
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 137
    .local v2, "backgroundColor":I
    :goto_0
    invoke-static {v2}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 138
    invoke-virtual {v1, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 139
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v3

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 140
    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method private maybeTintNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "navigationIcon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 145
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, "wrappedNavigationIcon":Lccsanandroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lccsancom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTint(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 148
    return-object v0

    .line 150
    .end local v0    # "wrappedNavigationIcon":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 97
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 99
    invoke-static {p0}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Lccsanandroid/view/View;)V

    .line 100
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 105
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 107
    invoke-static {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setElevation(Lccsanandroid/view/View;F)V

    .line 108
    return-void
.end method

.method public setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 112
    invoke-direct {p0, p1}, Lccsancom/google/android/material/appbar/MaterialToolbar;->maybeTintNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setNavigationIconTint(I)V
    .locals 1
    .param p1, "navigationIconTint"    # I

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 122
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/MaterialToolbar;->getNavigationIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "navigationIcon":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    return-void
.end method
