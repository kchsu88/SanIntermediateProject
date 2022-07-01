.class public Lccsanandroidx/appcompat/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

.field private final mView:Lccsanandroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/ImageView;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    .line 49
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Lccsanandroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "imageSource"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 200
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 203
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 204
    .local v0, "info":Lccsanandroidx/appcompat/widget/TintInfo;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintInfo;->clear()V

    .line 206
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-static {v1}, Lccsanandroidx/core/widget/ImageViewCompat;->getImageTintList(Lccsanandroid/widget/ImageView;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 207
    .local v1, "tintList":Lccsanandroid/content/res/ColorStateList;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 208
    iput-boolean v2, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 209
    iput-object v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 211
    :cond_1
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-static {v3}, Lccsanandroidx/core/widget/ImageViewCompat;->getImageTintMode(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 212
    .local v3, "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    if-eqz v3, :cond_2

    .line 213
    iput-boolean v2, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 214
    iput-object v3, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 217
    :cond_2
    iget-boolean v4, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 218
    :cond_4
    :goto_0
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4}, Lccsanandroid/widget/ImageView;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    .line 219
    return v2
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 4

    .line 178
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .local v0, "sdk":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    .line 182
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 183
    :cond_1
    if-ne v0, v3, :cond_2

    .line 187
    return v1

    .line 190
    :cond_2
    return v2
.end method


# virtual methods
.method applySupportImageTint()V
    .locals 3

    .line 141
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "imageViewDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->fixDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_2

    .line 155
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    .line 156
    invoke-virtual {v2}, Lccsanandroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 155
    invoke-static {v0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_3

    .line 158
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    .line 159
    invoke-virtual {v2}, Lccsanandroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 158
    invoke-static {v0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    .line 162
    :cond_3
    :goto_0
    return-void
.end method

.method getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 123
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 137
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method hasOverlappingRendering()Z
    .locals 3

    .line 103
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    instance-of v1, v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x0

    return v1

    .line 110
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 52
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    sget-object v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView:[I

    .line 55
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;

    move-result-object v5

    .line 54
    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 57
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 61
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    invoke-virtual {v0, v3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 62
    .local v3, "id":I
    if-eq v3, v2, :cond_0

    .line 63
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, v4

    .line 64
    if-eqz v1, :cond_0

    .line 65
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 70
    .end local v3    # "id":I
    :cond_0
    if-eqz v1, :cond_1

    .line 71
    invoke-static {v1}, Lccsanandroidx/appcompat/widget/DrawableUtils;->fixDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    sget v4, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 76
    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Lccsanandroidx/core/widget/ImageViewCompat;->setImageTintList(Lccsanandroid/widget/ImageView;Lccsanandroid/content/res/ColorStateList;)V

    .line 78
    :cond_2
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    sget v4, Lccsanandroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    .line 81
    invoke-virtual {v0, v4, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x0

    .line 80
    invoke-static {v2, v4}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 79
    invoke-static {v3, v2}, Lccsanandroidx/core/widget/ImageViewCompat;->setImageTintMode(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v1    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 85
    nop

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 85
    throw v1
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 89
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, "d":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->fixDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 95
    .end local v0    # "d":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mView:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 100
    return-void
.end method

.method setInternalImageTint(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 169
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 170
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 174
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 175
    return-void
.end method

.method setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 114
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 117
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 118
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 119
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 120
    return-void
.end method

.method setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 130
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 133
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 134
    return-void
.end method
