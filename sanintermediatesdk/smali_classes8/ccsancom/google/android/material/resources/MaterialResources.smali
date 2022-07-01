.class public Lccsancom/google/android/material/resources/MaterialResources;
.super Ljava/lang/Object;
.source "MaterialResources.java"


# static fields
.field private static final FONT_SCALE_1_3:F = 1.3f

.field private static final FONT_SCALE_2_0:F = 2.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributes"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 57
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 59
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 61
    .local v1, "value":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 62
    return-object v1

    .line 69
    .end local v0    # "resourceId":I
    .end local v1    # "value":Lccsanandroid/content/res/ColorStateList;
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 71
    .local v1, "color":I
    if-eq v1, v0, :cond_1

    .line 72
    invoke-static {v1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 76
    .end local v1    # "color":I
    :cond_1
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getColorStateList(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributes"    # Lccsanandroidx/appcompat/widget/TintTypedArray;
    .param p2, "index"    # I

    .line 86
    invoke-virtual {p1, p2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 88
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 90
    .local v1, "value":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 91
    return-object v1

    .line 98
    .end local v0    # "resourceId":I
    .end local v1    # "value":Lccsanandroid/content/res/ColorStateList;
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v1

    .line 100
    .local v1, "color":I
    if-eq v1, v0, :cond_1

    .line 101
    invoke-static {v1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 105
    .end local v1    # "color":I
    :cond_1
    invoke-virtual {p1, p2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getDimensionPixelSize(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;II)I
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributes"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I

    .line 168
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 169
    .local v0, "value":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getValue(ILccsanandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v3, v0, Lccsanandroid/util/TypedValue;->data:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 174
    .local v1, "styledAttrs":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v1, v4, p3}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 175
    .local v2, "dimension":I
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 176
    return v2

    .line 170
    .end local v1    # "styledAttrs":Lccsanandroid/content/res/TypedArray;
    .end local v2    # "dimension":I
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    return v1
.end method

.method public static getDrawable(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributes"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 117
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 119
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    .local v1, "value":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 122
    return-object v1

    .line 126
    .end local v0    # "resourceId":I
    .end local v1    # "value":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getIndexWithValue(Lccsanandroid/content/res/TypedArray;II)I
    .locals 1
    .param p0, "attributes"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 200
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    return p1

    .line 203
    :cond_0
    return p2
.end method

.method public static getTextAppearance(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/resources/TextAppearance;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributes"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 137
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 139
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Lccsancom/google/android/material/resources/TextAppearance;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/material/resources/TextAppearance;-><init>(Lccsanandroid/content/Context;I)V

    return-object v1

    .line 143
    .end local v0    # "resourceId":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isFontScaleAtLeast1_3(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 183
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFontScaleAtLeast2_0(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 190
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
