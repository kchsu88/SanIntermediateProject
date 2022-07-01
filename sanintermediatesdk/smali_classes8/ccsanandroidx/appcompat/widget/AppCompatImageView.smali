.class public Lccsanandroidx/appcompat/widget/AppCompatImageView;
.super Lccsanandroid/widget/ImageView;
.source "AppCompatImageView.java"

# interfaces
.implements Lccsanandroidx/core/view/TintableBackgroundView;
.implements Lccsanandroidx/core/widget/TintableImageSourceView;


# instance fields
.field private final mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 74
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 78
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 79
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;-><init>(Lccsanandroid/widget/ImageView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    .line 82
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 256
    invoke-super {p0}, Lccsanandroid/widget/ImageView;->drawableStateChanged()V

    .line 257
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 260
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 263
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 194
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 222
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 250
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lccsanandroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 136
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 128
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public setImageBitmap(Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Lccsanandroid/graphics/Bitmap;

    .line 112
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 116
    :cond_0
    return-void
.end method

.method public setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 104
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 108
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 96
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setImageURI(Lccsanandroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 120
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setImageURI(Lccsanandroid/net/Uri;)V

    .line 121
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 124
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 151
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 179
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 207
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 210
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 235
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 238
    :cond_0
    return-void
.end method
