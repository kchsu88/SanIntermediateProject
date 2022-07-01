.class public Lccsanandroidx/core/widget/ImageViewCompat;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageTintList(Lccsanandroid/widget/ImageView;)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "view"    # Lccsanandroid/widget/ImageView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 37
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getImageTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_1

    .line 41
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableImageSourceView;

    invoke-interface {v0}, Lccsanandroidx/core/widget/TintableImageSourceView;->getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0
.end method

.method public static getImageTintMode(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "view"    # Lccsanandroid/widget/ImageView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 74
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_1

    .line 78
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableImageSourceView;

    invoke-interface {v0}, Lccsanandroidx/core/widget/TintableImageSourceView;->getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0
.end method

.method public static setImageTintList(Lccsanandroid/widget/ImageView;Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/widget/ImageView;
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tintList"
        }
    .end annotation

    .line 50
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 51
    invoke-virtual {p0, p1}, Lccsanandroid/widget/ImageView;->setImageTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 53
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 56
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    .local v0, "imageViewDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getImageTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 63
    .end local v0    # "imageViewDrawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    .line 64
    :cond_2
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_3

    .line 65
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableImageSourceView;

    invoke-interface {v0, p1}, Lccsanandroidx/core/widget/TintableImageSourceView;->setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public static setImageTintMode(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/widget/ImageView;
    .param p1, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "mode"
        }
    .end annotation

    .line 88
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 89
    invoke-virtual {p0, p1}, Lccsanandroid/widget/ImageView;->setImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 91
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 94
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "imageViewDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getImageTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 101
    .end local v0    # "imageViewDrawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    .line 102
    :cond_2
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_3

    .line 103
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableImageSourceView;

    invoke-interface {v0, p1}, Lccsanandroidx/core/widget/TintableImageSourceView;->setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 105
    :cond_3
    :goto_0
    return-void
.end method
