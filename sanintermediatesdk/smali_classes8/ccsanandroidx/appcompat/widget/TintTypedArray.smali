.class public Lccsanandroidx/appcompat/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private mTypedValue:Lccsanandroid/util/TypedValue;

.field private final mWrapped:Lccsanandroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "array"    # Lccsanandroid/content/res/TypedArray;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mContext:Lccsanandroid/content/Context;

    .line 69
    iput-object p2, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    .line 70
    return-void
.end method

.method public static obtainStyledAttributes(Lccsanandroid/content/Context;I[I)Lccsanandroidx/appcompat/widget/TintTypedArray;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I

    .line 64
    new-instance v0, Lccsanandroidx/appcompat/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[I)Lccsanandroidx/appcompat/widget/TintTypedArray;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "set"    # Lccsanandroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 54
    new-instance v0, Lccsanandroidx/appcompat/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "set"    # Lccsanandroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 59
    new-instance v0, Lccsanandroidx/appcompat/widget/TintTypedArray;

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .line 158
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 257
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 170
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p1, "index"    # I

    .line 174
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 176
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mContext:Lccsanandroid/content/Context;

    .line 178
    invoke-static {v1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 179
    .local v1, "value":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 180
    return-object v1

    .line 184
    .end local v0    # "resourceId":I
    .end local v1    # "value":Lccsanandroid/content/res/ColorStateList;
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 192
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 196
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 200
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "index"    # I

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 82
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mContext:Lccsanandroid/content/Context;

    invoke-static {v1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0    # "resourceId":I
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableIfKnown(I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 92
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->get()Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mContext:Lccsanandroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Lccsanandroid/content/Context;IZ)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "resourceId":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getFont(IILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)Lccsanandroid/graphics/Typeface;
    .locals 3
    .param p1, "index"    # I
    .param p2, "style"    # I
    .param p3, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 119
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 120
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    if-nez v1, :cond_1

    .line 124
    new-instance v1, Lccsanandroid/util/TypedValue;

    invoke-direct {v1}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    .line 126
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    invoke-static {v1, v0, v2, p2, p3}, Lccsanandroidx/core/content/res/ResourcesCompat;->getFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public getFraction(IIIF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .line 212
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    return v0
.end method

.method public getIndex(I)I
    .locals 1
    .param p1, "at"    # I

    .line 138
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public getIndexCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 162
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 208
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 154
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 216
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    .line 142
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 150
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .line 146
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .line 220
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 228
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->getType(I)I

    move-result v0

    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    .line 234
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/TypedArray;->getValue(ILccsanandroid/util/TypedValue;)Z

    .line 235
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mTypedValue:Lccsanandroid/util/TypedValue;

    iget v0, v0, Lccsanandroid/util/TypedValue;->type:I

    return v0
.end method

.method public getValue(ILccsanandroid/util/TypedValue;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "outValue"    # Lccsanandroid/util/TypedValue;

    .line 224
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/TypedArray;->getValue(ILccsanandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;
    .locals 1

    .line 76
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    return-object v0
.end method

.method public hasValue(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 240
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 130
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public peekValue(I)Lccsanandroid/util/TypedValue;
    .locals 1
    .param p1, "index"    # I

    .line 244
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 252
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintTypedArray;->mWrapped:Lccsanandroid/content/res/TypedArray;

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 253
    return-void
.end method
