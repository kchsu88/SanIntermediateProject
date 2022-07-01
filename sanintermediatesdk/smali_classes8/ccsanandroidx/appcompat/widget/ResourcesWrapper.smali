.class Lccsanandroidx/appcompat/widget/ResourcesWrapper;
.super Lccsanandroid/content/res/Resources;
.source "ResourcesWrapper.java"


# instance fields
.field private final mResources:Lccsanandroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lccsanandroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;

    .line 48
    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lccsanandroid/content/res/Resources;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;)V

    .line 49
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    .line 50
    return-void
.end method


# virtual methods
.method public getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lccsanandroid/content/res/Configuration;
    .locals 1

    .line 251
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;
    .locals 1

    .line 246
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getDrawable(ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(II)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getDrawableForDensity(II)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 150
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getDrawableForDensity(IILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFraction(III)F
    .locals 1
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .line 125
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getFraction(III)F

    move-result v0

    return v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntArray(I)[I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getLayout(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getLayout(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Lccsanandroid/graphics/Movie;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getMovie(I)Lccsanandroid/graphics/Movie;

    move-result-object v0

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValue(ILccsanandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "outValue"    # Lccsanandroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 215
    return-void
.end method

.method public getValue(Ljava/lang/String;Lccsanandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Lccsanandroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getValue(Ljava/lang/String;Lccsanandroid/util/TypedValue;Z)V

    .line 228
    return-void
.end method

.method public getValueForDensity(IILccsanandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Lccsanandroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/content/res/Resources;->getValueForDensity(IILccsanandroid/util/TypedValue;Z)V

    .line 222
    return-void
.end method

.method public getXml(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public obtainAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;
    .locals 1
    .param p1, "set"    # Lccsanandroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 232
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->obtainAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainTypedArray(I)Lccsanandroid/content/res/TypedArray;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->obtainTypedArray(I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openRawResource(ILccsanandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Lccsanandroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->openRawResource(ILccsanandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openRawResourceFd(I)Lccsanandroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->openRawResourceFd(I)Lccsanandroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public parseBundleExtra(Ljava/lang/String;Lccsanandroid/util/AttributeSet;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "outBundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Lccsanandroid/util/AttributeSet;Lccsanandroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public parseBundleExtras(Lccsanandroid/content/res/XmlResourceParser;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parser"    # Lccsanandroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->parseBundleExtras(Lccsanandroid/content/res/XmlResourceParser;Lccsanandroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method public updateConfiguration(Lccsanandroid/content/res/Configuration;Lccsanandroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Lccsanandroid/content/res/Configuration;
    .param p2, "metrics"    # Lccsanandroid/util/DisplayMetrics;

    .line 238
    invoke-super {p0, p1, p2}, Lccsanandroid/content/res/Resources;->updateConfiguration(Lccsanandroid/content/res/Configuration;Lccsanandroid/util/DisplayMetrics;)V

    .line 239
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->mResources:Lccsanandroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->updateConfiguration(Lccsanandroid/content/res/Configuration;Lccsanandroid/util/DisplayMetrics;)V

    .line 242
    :cond_0
    return-void
.end method
