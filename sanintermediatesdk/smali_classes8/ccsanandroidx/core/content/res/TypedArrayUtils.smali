.class public Lccsanandroidx/core/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# static fields
.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method

.method public static getAttr(Lccsanandroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "fallbackAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attr",
            "fallbackAttr"
        }
    .end annotation

    .line 354
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 355
    .local v0, "value":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 356
    iget v1, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 357
    return p1

    .line 359
    :cond_0
    return p2
.end method

.method public static getBoolean(Lccsanandroid/content/res/TypedArray;IIZ)Z
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex",
            "defaultValue"
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p2, p3}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 265
    .local v0, "val":Z
    invoke-virtual {p0, p1, v0}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public static getDrawable(Lccsanandroid/content/res/TypedArray;II)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, "val":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0, p2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    :cond_0
    return-object v0
.end method

.method public static getInt(Lccsanandroid/content/res/TypedArray;III)I
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex",
            "defaultValue"
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p2, p3}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 289
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    return v1
.end method

.method public static getNamedBoolean(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId",
            "defaultValue"
        }
    .end annotation

    .line 87
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 88
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 89
    return p4

    .line 91
    :cond_0
    invoke-virtual {p0, p3, p4}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public static getNamedColor(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId",
            "defaultValue"
        }
    .end annotation

    .line 122
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 124
    return p4

    .line 126
    :cond_0
    invoke-virtual {p0, p3, p4}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    return v1
.end method

.method public static getNamedColorStateList(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/content/res/Resources$Theme;Ljava/lang/String;I)Lccsanandroid/content/res/ColorStateList;
    .locals 4
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "theme",
            "attrName",
            "resId"
        }
    .end annotation

    .line 168
    invoke-static {p1, p3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 170
    .local v0, "value":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0, p4, v0}, Lccsanandroid/content/res/TypedArray;->getValue(ILccsanandroid/util/TypedValue;)Z

    .line 171
    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 174
    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 177
    invoke-static {v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedColorStateListFromInt(Lccsanandroid/util/TypedValue;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/res/TypedArray;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, p4, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 179
    invoke-static {v1, v2, p2}, Lccsanandroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "value":Lccsanandroid/util/TypedValue;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNamedColorStateListFromInt(Lccsanandroid/util/TypedValue;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p0, "value"    # Lccsanandroid/util/TypedValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 190
    iget v0, p0, Lccsanandroid/util/TypedValue;->data:I

    invoke-static {v0}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getNamedComplexColor(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/content/res/Resources$Theme;Ljava/lang/String;II)Lccsanandroidx/core/content/res/ComplexColorCompat;
    .locals 3
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .param p5, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "theme",
            "attrName",
            "resId",
            "defaultValue"
        }
    .end annotation

    .line 140
    invoke-static {p1, p3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 143
    .local v0, "value":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0, p4, v0}, Lccsanandroid/content/res/TypedArray;->getValue(ILccsanandroid/util/TypedValue;)Z

    .line 144
    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 146
    iget v1, v0, Lccsanandroid/util/TypedValue;->data:I

    invoke-static {v1}, Lccsanandroidx/core/content/res/ComplexColorCompat;->from(I)Lccsanandroidx/core/content/res/ComplexColorCompat;

    move-result-object v1

    return-object v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/res/TypedArray;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0, p4, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 150
    invoke-static {v1, v2, p2}, Lccsanandroidx/core/content/res/ComplexColorCompat;->inflate(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/core/content/res/ComplexColorCompat;

    move-result-object v1

    .line 152
    .local v1, "complexColor":Lccsanandroidx/core/content/res/ComplexColorCompat;
    if-eqz v1, :cond_1

    return-object v1

    .line 154
    .end local v0    # "value":Lccsanandroid/util/TypedValue;
    .end local v1    # "complexColor":Lccsanandroidx/core/content/res/ComplexColorCompat;
    :cond_1
    invoke-static {p5}, Lccsanandroidx/core/content/res/ComplexColorCompat;->from(I)Lccsanandroidx/core/content/res/ComplexColorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getNamedFloat(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId",
            "defaultValue"
        }
    .end annotation

    .line 70
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 72
    return p4

    .line 74
    :cond_0
    invoke-virtual {p0, p3, p4}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    return v1
.end method

.method public static getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId",
            "defaultValue"
        }
    .end annotation

    .line 104
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 106
    return p4

    .line 108
    :cond_0
    invoke-virtual {p0, p3, p4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    return v1
.end method

.method public static getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId",
            "defaultValue"
        }
    .end annotation

    .line 203
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 204
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 205
    return p4

    .line 207
    :cond_0
    invoke-virtual {p0, p3, p4}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method public static getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId"
        }
    .end annotation

    .line 221
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 222
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    return-object v1

    .line 225
    :cond_0
    invoke-virtual {p0, p3}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceId(Lccsanandroid/content/res/TypedArray;III)I
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex",
            "defaultValue"
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p2, p3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 300
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method public static getString(Lccsanandroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex"
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0, p2}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_0
    return-object v0
.end method

.method public static getText(Lccsanandroid/content/res/TypedArray;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex"
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 327
    .local v0, "val":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0, p2}, Lccsanandroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 330
    :cond_0
    return-object v0
.end method

.method public static getTextArray(Lccsanandroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "fallbackIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "fallbackIndex"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 343
    .local v0, "val":[Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p2}, Lccsanandroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 346
    :cond_0
    return-object v0
.end method

.method public static hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1
    .param p0, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "attrName"
        }
    .end annotation

    .line 58
    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p2, "set"    # Lccsanandroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "theme",
            "set",
            "attrs"
        }
    .end annotation

    .line 252
    if-nez p1, :cond_0

    .line 253
    invoke-virtual {p0, p2, p3}, Lccsanandroid/content/res/Resources;->obtainAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static peekNamedValue(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lccsanandroid/util/TypedValue;
    .locals 2
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "parser",
            "attrName",
            "resId"
        }
    .end annotation

    .line 237
    invoke-static {p1, p2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 238
    .local v0, "hasAttr":Z
    if-nez v0, :cond_0

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 241
    :cond_0
    invoke-virtual {p0, p3}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v1

    return-object v1
.end method
