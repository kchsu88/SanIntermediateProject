.class Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private final mDrawableManager:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

.field private final mView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 44
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    .line 45
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->get()Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    .line 46
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Lccsanandroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 181
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 182
    .local v0, "info":Lccsanandroidx/appcompat/widget/TintInfo;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintInfo;->clear()V

    .line 184
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->getBackgroundTintList(Lccsanandroid/view/View;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 185
    .local v1, "tintList":Lccsanandroid/content/res/ColorStateList;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 186
    iput-boolean v2, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 187
    iput-object v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 189
    :cond_1
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-static {v3}, Lccsanandroidx/core/view/ViewCompat;->getBackgroundTintMode(Lccsanandroid/view/View;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 190
    .local v3, "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    if-eqz v3, :cond_2

    .line 191
    iput-boolean v2, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 192
    iput-object v3, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 195
    :cond_2
    iget-boolean v4, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 200
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 196
    :cond_4
    :goto_0
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-virtual {v4}, Lccsanandroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    .line 197
    return v2
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 4

    .line 156
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    .local v0, "sdk":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    .line 160
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 161
    :cond_1
    if-ne v0, v3, :cond_2

    .line 165
    return v1

    .line 168
    :cond_2
    return v2
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .locals 3

    .line 123
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    .line 134
    invoke-virtual {v2}, Lccsanandroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 133
    invoke-static {v0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_2

    .line 136
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    .line 137
    invoke-virtual {v2}, Lccsanandroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 136
    invoke-static {v0, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 119
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 49
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    sget-object v3, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    .line 52
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;

    move-result-object v5

    .line 51
    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 55
    :try_start_0
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 56
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 58
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    .line 59
    invoke-virtual {v3}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget v4, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    invoke-virtual {v1, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 60
    .local v1, "tint":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 64
    .end local v1    # "tint":Lccsanandroid/content/res/ColorStateList;
    :cond_0
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    sget v3, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 66
    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 65
    invoke-static {v1, v3}, Lccsanandroidx/core/view/ViewCompat;->setBackgroundTintList(Lccsanandroid/view/View;Lccsanandroid/content/res/ColorStateList;)V

    .line 68
    :cond_1
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    sget v3, Lccsanandroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    .line 71
    invoke-virtual {v0, v3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 70
    invoke-static {v2, v3}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lccsanandroidx/core/view/ViewCompat;->setBackgroundTintMode(Lccsanandroid/view/View;Lccsanandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 76
    nop

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 76
    throw v1
.end method

.method onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 92
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 93
    return-void
.end method

.method onSetBackgroundResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 80
    iput p1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 82
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 85
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 86
    return-void
.end method

.method setInternalBackgroundTint(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 143
    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 147
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 148
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 152
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 153
    return-void
.end method

.method setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 96
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 99
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 100
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 101
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 102
    return-void
.end method

.method setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 109
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lccsanandroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    .line 112
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Lccsanandroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 115
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 116
    return-void
.end method
