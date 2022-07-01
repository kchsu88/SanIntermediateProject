.class Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableCompatState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedBitmap:Lccsanandroid/graphics/Bitmap;

.field mCachedRootAlpha:I

.field mCachedThemeAttrs:[I

.field mCachedTint:Lccsanandroid/content/res/ColorStateList;

.field mCachedTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mTempPaint:Lccsanandroid/graphics/Paint;

.field mTint:Lccsanandroid/content/res/ColorStateList;

.field mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1121
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1122
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1123
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 3
    .param p1, "copy"    # Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 1033
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1034
    if-eqz p1, :cond_2

    .line 1035
    iget v0, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iput v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 1036
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v1, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0, v1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>(Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1037
    iget-object v0, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Lccsanandroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Lccsanandroid/graphics/Paint;

    iget-object v2, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v2, v2, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/Paint;-><init>(Lccsanandroid/graphics/Paint;)V

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Lccsanandroid/graphics/Paint;

    .line 1040
    :cond_0
    iget-object v0, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Lccsanandroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Lccsanandroid/graphics/Paint;

    iget-object v2, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v2, v2, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Lccsanandroid/graphics/Paint;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/Paint;-><init>(Lccsanandroid/graphics/Paint;)V

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Lccsanandroid/graphics/Paint;

    .line 1043
    :cond_1
    iget-object v0, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 1044
    iget-object v0, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1045
    iget-boolean v0, p1, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    iput-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    .line 1047
    :cond_2
    return-void
.end method


# virtual methods
.method public canReuseBitmap(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1093
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    .line 1094
    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1095
    const/4 v0, 0x1

    return v0

    .line 1097
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canReuseCache()Z
    .locals 2

    .line 1101
    iget-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTint:Lccsanandroid/content/res/ColorStateList;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Lccsanandroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedRootAlpha:I

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1105
    invoke-virtual {v1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1106
    const/4 v0, 0x1

    return v0

    .line 1108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createCachedBitmapIfNeeded(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1084
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->canReuseBitmap(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 1090
    :cond_1
    return-void
.end method

.method public drawCachedBitmapWithRootAlpha(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/ColorFilter;Lccsanandroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "filter"    # Lccsanandroid/graphics/ColorFilter;
    .param p3, "originalBounds"    # Lccsanandroid/graphics/Rect;

    .line 1052
    invoke-virtual {p0, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->getPaint(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/Paint;

    move-result-object v0

    .line 1053
    .local v0, "p":Lccsanandroid/graphics/Paint;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    .line 1054
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1139
    iget v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    return v0
.end method

.method public getPaint(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/Paint;
    .locals 2
    .param p1, "filter"    # Lccsanandroid/graphics/ColorFilter;

    .line 1064
    invoke-virtual {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->hasTranslucentRoot()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1065
    const/4 v0, 0x0

    return-object v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 1069
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Lccsanandroid/graphics/Paint;

    .line 1070
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 1073
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 1074
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Lccsanandroid/graphics/Paint;

    return-object v0
.end method

.method public hasTranslucentRoot()Z
    .locals 2

    .line 1057
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1143
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->isStateful()Z

    move-result v0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 1128
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>(Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 1134
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>(Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-object v0
.end method

.method public onStateChanged([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .line 1147
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->onStateChanged([I)Z

    move-result v0

    .line 1148
    .local v0, "changed":Z
    iget-boolean v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 1149
    return v0
.end method

.method public updateCacheStates()V
    .locals 1

    .line 1114
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTint:Lccsanandroid/content/res/ColorStateList;

    .line 1115
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1116
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    iput v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedRootAlpha:I

    .line 1117
    iget-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    iput-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedAutoMirrored:Z

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 1119
    return-void
.end method

.method public updateCachedBitmap(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1078
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->eraseColor(I)V

    .line 1079
    new-instance v0, Lccsanandroid/graphics/Canvas;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 1080
    .local v0, "tmpCanvas":Lccsanandroid/graphics/Canvas;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->draw(Lccsanandroid/graphics/Canvas;IILccsanandroid/graphics/ColorFilter;)V

    .line 1081
    return-void
.end method
