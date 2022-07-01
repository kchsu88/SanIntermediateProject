.class public Lccsanandroidx/appcompat/widget/AppCompatImageButton;
.super Lccsanandroid/widget/ImageButton;
.source "AppCompatImageButton.java"

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

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 70
    sget v0, Lccsanandroidx/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 75
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/ImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 79
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 80
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;-><init>(Lccsanandroid/widget/ImageView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    .line 83
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 245
    invoke-super {p0}, Lccsanandroid/widget/ImageButton;->drawableStateChanged()V

    .line 246
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 249
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 252
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 184
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 211
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 239
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lccsanandroid/widget/ImageButton;->hasOverlappingRendering()Z

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

    .line 126
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageButton;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 118
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public setImageBitmap(Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Lccsanandroid/graphics/Bitmap;

    .line 102
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageButton;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 103
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 106
    :cond_0
    return-void
.end method

.method public setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 94
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 98
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 89
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 90
    return-void
.end method

.method public setImageURI(Lccsanandroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 110
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageButton;->setImageURI(Lccsanandroid/net/Uri;)V

    .line 111
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 114
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 141
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 169
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 172
    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 196
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 199
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 224
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 227
    :cond_0
    return-void
.end method
