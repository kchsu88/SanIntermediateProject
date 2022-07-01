.class Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;
.super Lccsanandroidx/appcompat/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mTickMark:Lccsanandroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Lccsanandroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private final mView:Lccsanandroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lccsanandroid/widget/SeekBar;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/widget/SeekBar;

    .line 42
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatProgressBarHelper;-><init>(Lccsanandroid/widget/ProgressBar;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Lccsanandroid/content/res/ColorStateList;

    .line 37
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 39
    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 43
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    .line 44
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    .line 128
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v1, :cond_3

    .line 129
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    .line 131
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v1}, Lccsanandroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 145
    :cond_3
    return-void
.end method


# virtual methods
.method drawTickMarks(Lccsanandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 165
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v0}, Lccsanandroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 167
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 168
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 169
    .local v2, "w":I
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 170
    .local v3, "h":I
    if-ltz v2, :cond_0

    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 171
    .local v4, "halfW":I
    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    .line 172
    .local v1, "halfH":I
    :cond_1
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, v1

    invoke-virtual {v5, v6, v7, v4, v1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v5}, Lccsanandroid/widget/SeekBar;->getWidth()I

    move-result v5

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v6}, Lccsanandroid/widget/SeekBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    .line 175
    invoke-virtual {v6}, Lccsanandroid/widget/SeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 176
    .local v5, "spacing":F
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v6

    .line 177
    .local v6, "saveCount":I
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v7}, Lccsanandroid/widget/SeekBar;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v8}, Lccsanandroid/widget/SeekBar;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 178
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-gt v7, v0, :cond_2

    .line 179
    iget-object v8, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 180
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 182
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {p1, v6}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    .end local v0    # "count":I
    .end local v1    # "halfH":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "halfW":I
    .end local v5    # "spacing":F
    .end local v6    # "saveCount":I
    :cond_3
    return-void
.end method

.method drawableStateChanged()V
    .locals 2

    .line 154
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    .line 155
    .local v0, "tickMark":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    .line 156
    invoke-virtual {v1}, Lccsanandroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/SeekBar;->invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_0
    return-void
.end method

.method getTickMark()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 100
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getTickMarkTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 112
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTickMarkTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 124
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method jumpDrawablesToCurrentState()V
    .locals 1

    .line 148
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 151
    :cond_0
    return-void
.end method

.method loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 48
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatProgressBarHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 50
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v0}, Lccsanandroid/widget/SeekBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v1}, Lccsanandroid/widget/SeekBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    sget-object v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    .line 53
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;

    move-result-object v5

    .line 52
    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 55
    sget v1, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    .local v1, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/SeekBar;->setThumb(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    sget v2, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 61
    .local v2, "tickMark":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->setTickMark(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 63
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 64
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v5}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 66
    iput-boolean v4, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 69
    :cond_1
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    sget v3, Lccsanandroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Lccsanandroid/content/res/ColorStateList;

    .line 71
    iput-boolean v4, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 74
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 76
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 77
    return-void
.end method

.method setTickMark(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 84
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Lccsanandroid/graphics/drawable/Drawable;

    .line 86
    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Lccsanandroid/graphics/drawable/Drawable;I)Z

    .line 89
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v0}, Lccsanandroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 92
    :cond_1
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 95
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Lccsanandroid/widget/SeekBar;

    invoke-virtual {v0}, Lccsanandroid/widget/SeekBar;->invalidate()V

    .line 96
    return-void
.end method

.method setTickMarkTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 104
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Lccsanandroid/content/res/ColorStateList;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 107
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 108
    return-void
.end method

.method setTickMarkTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 116
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 119
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 120
    return-void
.end method
