.class public Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
.super Lccsanandroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field collapseMode:I

.field parallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1242
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1225
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1243
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 1246
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1225
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1247
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 1228
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1225
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1230
    sget-object v2, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v2

    .line 1231
    .local v2, "a":Lccsanandroid/content/res/TypedArray;
    sget v3, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseMode:I

    .line 1232
    invoke-virtual {v2, v3, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1234
    sget v0, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier:I

    .line 1235
    invoke-virtual {v2, v0, v1}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1234
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    .line 1238
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 1239
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1250
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1225
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1251
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 1254
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1225
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1255
    return-void
.end method

.method public constructor <init>(Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 1260
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1225
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1261
    return-void
.end method


# virtual methods
.method public getCollapseMode()I
    .locals 1

    .line 1281
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 1

    .line 1303
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    return v0
.end method

.method public setCollapseMode(I)V
    .locals 0
    .param p1, "collapseMode"    # I

    .line 1270
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 1271
    return-void
.end method

.method public setParallaxMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .line 1293
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 1294
    return-void
.end method