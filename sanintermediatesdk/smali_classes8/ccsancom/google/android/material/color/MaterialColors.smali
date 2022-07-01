.class public Lccsancom/google/android/material/color/MaterialColors;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# static fields
.field public static final ALPHA_DISABLED:F = 0.38f

.field public static final ALPHA_DISABLED_LOW:F = 0.12f

.field public static final ALPHA_FULL:F = 1.0f

.field public static final ALPHA_LOW:F = 0.32f

.field public static final ALPHA_MEDIUM:F = 0.54f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static compositeARGBWithAlpha(II)I
    .locals 1
    .param p0, "originalARGB"    # I
    .param p1, "alpha"    # I

    .line 153
    invoke-static {p0}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 154
    .end local p1    # "alpha":I
    .local v0, "alpha":I
    invoke-static {p0, v0}, Lccsanandroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method

.method public static getColor(Lccsanandroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "colorAttributeResId"    # I
    .param p2, "defaultValue"    # I

    .line 84
    invoke-static {p0, p1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolve(Lccsanandroid/content/Context;I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 85
    .local v0, "typedValue":Lccsanandroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 86
    iget v1, v0, Lccsanandroid/util/TypedValue;->data:I

    return v1

    .line 88
    :cond_0
    return p2
.end method

.method public static getColor(Lccsanandroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "colorAttributeResId"    # I
    .param p2, "errorMessageComponent"    # Ljava/lang/String;

    .line 64
    invoke-static {p0, p1, p2}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColor(Lccsanandroid/view/View;I)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "colorAttributeResId"    # I

    .line 53
    invoke-static {p0, p1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public static getColor(Lccsanandroid/view/View;II)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "colorAttributeResId"    # I
    .param p2, "defaultValue"    # I

    .line 74
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static layer(II)I
    .locals 1
    .param p0, "backgroundColor"    # I
    .param p1, "overlayColor"    # I

    .line 139
    invoke-static {p1, p0}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method public static layer(IIF)I
    .locals 3
    .param p0, "backgroundColor"    # I
    .param p1, "overlayColor"    # I
    .param p2, "overlayAlpha"    # F

    .line 128
    invoke-static {p1}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 129
    .local v0, "computedAlpha":I
    invoke-static {p1, v0}, Lccsanandroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 130
    .local v1, "computedOverlayColor":I
    invoke-static {p0, v1}, Lccsancom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v2

    return v2
.end method

.method public static layer(Lccsanandroid/view/View;II)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "backgroundColorAttributeResId"    # I
    .param p2, "overlayColorAttributeResId"    # I

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Lccsancom/google/android/material/color/MaterialColors;->layer(Lccsanandroid/view/View;IIF)I

    move-result v0

    return v0
.end method

.method public static layer(Lccsanandroid/view/View;IIF)I
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "backgroundColorAttributeResId"    # I
    .param p2, "overlayColorAttributeResId"    # I
    .param p3, "overlayAlpha"    # F

    .line 114
    invoke-static {p0, p1}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v0

    .line 115
    .local v0, "backgroundColor":I
    invoke-static {p0, p2}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v1

    .line 116
    .local v1, "overlayColor":I
    invoke-static {v0, v1, p3}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    return v2
.end method
