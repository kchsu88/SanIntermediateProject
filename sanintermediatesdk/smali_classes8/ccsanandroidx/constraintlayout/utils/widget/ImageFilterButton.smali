.class public Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;
.super Lccsanandroidx/appcompat/widget/AppCompatImageButton;
.source "ImageFilterButton.java"


# instance fields
.field private mCrossfade:F

.field private mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

.field mLayers:[Lccsanandroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPath:Lccsanandroid/graphics/Path;

.field mRect:Lccsanandroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 95
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;-><init>(Lccsanandroid/content/Context;)V

    .line 82
    new-instance v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 85
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 85
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 101
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 85
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 106
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;)F
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    .line 81
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;)F
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    .line 81
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    return v0
.end method

.method private init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setPadding(IIII)V

    .line 111
    if-eqz p2, :cond_8

    .line 112
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    sget-object v2, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 113
    invoke-virtual {v1, p2, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 115
    .local v2, "N":I
    sget v3, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {v1, v3}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 117
    .local v3, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_7

    .line 118
    invoke-virtual {v1, v4}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 119
    .local v5, "attr":I
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    .line 120
    invoke-virtual {v1, v5, v7}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    goto :goto_1

    .line 121
    :cond_0
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

    if-ne v5, v6, :cond_1

    .line 122
    invoke-virtual {v1, v5, v7}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setWarmth(F)V

    goto :goto_1

    .line 123
    :cond_1
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    if-ne v5, v6, :cond_2

    .line 124
    invoke-virtual {v1, v5, v7}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setSaturation(F)V

    goto :goto_1

    .line 125
    :cond_2
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

    if-ne v5, v6, :cond_3

    .line 126
    invoke-virtual {v1, v5, v7}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setContrast(F)V

    goto :goto_1

    .line 127
    :cond_3
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    if-ne v5, v6, :cond_4

    .line 128
    invoke-virtual {v1, v5, v7}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V

    goto :goto_1

    .line 129
    :cond_4
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v5, v6, :cond_5

    .line 130
    invoke-virtual {v1, v5, v7}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    goto :goto_1

    .line 131
    :cond_5
    sget v6, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    if-ne v5, v6, :cond_6

    .line 132
    iget-boolean v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    invoke-virtual {v1, v5, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-direct {p0, v6}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setOverlay(Z)V

    .line 117
    .end local v5    # "attr":I
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 137
    if-eqz v3, :cond_8

    .line 138
    const/4 v4, 0x2

    new-array v4, v4, [Lccsanandroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 140
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 142
    new-instance v0, Lccsanandroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    invoke-direct {v0, v5}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 143
    invoke-virtual {v0, v4}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v0, v4}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 144
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 147
    .end local v1    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v2    # "N":I
    .end local v3    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_8
    return-void
.end method

.method private setOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .line 156
    iput-boolean p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    .line 157
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "clip":Z
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 385
    iget v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 387
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 388
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;)Z

    .line 391
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 392
    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 395
    :cond_1
    return-void
.end method

.method public getContrast()F
    .locals 1

    .line 196
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    return v0
.end method

.method public getCrossfade()F
    .locals 1

    .line 240
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    return v0
.end method

.method public getRound()F
    .locals 1

    .line 378
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .locals 1

    .line 369
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .line 177
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    return v0
.end method

.method public getWarmth()F
    .locals 1

    .line 215
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return v0
.end method

.method public setBrightness(F)V
    .locals 1
    .param p1, "brightness"    # F

    .line 251
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 252
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 253
    return-void
.end method

.method public setContrast(F)V
    .locals 1
    .param p1, "contrast"    # F

    .line 186
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 187
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 188
    return-void
.end method

.method public setCrossfade(F)V
    .locals 4
    .param p1, "crossfade"    # F

    .line 224
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 225
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 226
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 232
    :cond_1
    return-void
.end method

.method public setRound(F)V
    .locals 8
    .param p1, "round"    # F

    .line 313
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 315
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 316
    .local v0, "tmp":F
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 317
    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    .line 318
    return-void

    .line 320
    .end local v0    # "tmp":F
    :cond_0
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 321
    .local v0, "change":Z
    :goto_0
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 323
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_6

    .line 324
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    if-nez v2, :cond_2

    .line 325
    new-instance v2, Lccsanandroid/graphics/Path;

    invoke-direct {v2}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    .line 327
    :cond_2
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    if-nez v2, :cond_3

    .line 328
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    .line 330
    :cond_3
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    .line 331
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    if-nez v2, :cond_4

    .line 332
    new-instance v2, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;

    invoke-direct {v2, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;-><init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    .line 340
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setOutlineProvider(Lccsanandroid/view/ViewOutlineProvider;)V

    .line 342
    :cond_4
    invoke-virtual {p0, v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 345
    :cond_5
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v1

    .line 346
    .local v1, "w":I
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v2

    .line 347
    .local v2, "h":I
    iget-object v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v4, v4, v6, v7}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 348
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->reset()V

    .line 349
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    iget-object v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    iget v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    sget-object v7, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v6, v7}, Lccsanandroid/graphics/Path;->addRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Path$Direction;)V

    .line 350
    .end local v1    # "w":I
    .end local v2    # "h":I
    goto :goto_1

    .line 351
    :cond_6
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    .line 352
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 355
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 356
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_8

    .line 357
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->invalidateOutline()V

    .line 361
    :cond_8
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 9
    .param p1, "round"    # F

    .line 263
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "change":Z
    :goto_0
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 265
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_5

    .line 266
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    if-nez v2, :cond_1

    .line 267
    new-instance v2, Lccsanandroid/graphics/Path;

    invoke-direct {v2}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    .line 269
    :cond_1
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    if-nez v2, :cond_2

    .line 270
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    .line 272
    :cond_2
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 273
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    if-nez v2, :cond_3

    .line 274
    new-instance v2, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$1;

    invoke-direct {v2, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$1;-><init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    .line 283
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setOutlineProvider(Lccsanandroid/view/ViewOutlineProvider;)V

    .line 285
    :cond_3
    invoke-virtual {p0, v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 287
    :cond_4
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v1

    .line 288
    .local v1, "w":I
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v2

    .line 289
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 290
    .local v5, "r":F
    iget-object v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v6, v4, v4, v7, v8}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 291
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->reset()V

    .line 292
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Lccsanandroid/graphics/Path;

    iget-object v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Lccsanandroid/graphics/RectF;

    sget-object v7, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v5, v5, v7}, Lccsanandroid/graphics/Path;->addRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Path$Direction;)V

    .line 293
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v5    # "r":F
    goto :goto_1

    .line 294
    :cond_5
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    .line 295
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setClipToOutline(Z)V

    .line 298
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 299
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    .line 300
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->invalidateOutline()V

    .line 304
    :cond_7
    return-void
.end method

.method public setSaturation(F)V
    .locals 1
    .param p1, "saturation"    # F

    .line 167
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 168
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 169
    return-void
.end method

.method public setWarmth(F)V
    .locals 1
    .param p1, "warmth"    # F

    .line 205
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 206
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 207
    return-void
.end method
