.class public abstract Lccsanandroidx/core/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static final MAX_IMAGE_SIZE:I = 0x100000


# instance fields
.field private mTempMatrix:Lccsanandroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDrawableBitmap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 13
    .param p0, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 215
    .local v0, "width":I
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 216
    .local v1, "height":I
    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/high16 v2, 0x49800000    # 1048576.0f

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 220
    .local v2, "scale":F
    instance-of v4, p0, Lccsanandroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 222
    move-object v3, p0

    check-cast v3, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lccsanandroid/graphics/drawable/BitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 224
    :cond_1
    int-to-float v3, v0

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 225
    .local v3, "bitmapWidth":I
    int-to-float v4, v1

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 226
    .local v4, "bitmapHeight":I
    sget-object v5, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 227
    .local v5, "bitmap":Lccsanandroid/graphics/Bitmap;
    new-instance v6, Lccsanandroid/graphics/Canvas;

    invoke-direct {v6, v5}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 228
    .local v6, "canvas":Lccsanandroid/graphics/Canvas;
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v7

    .line 229
    .local v7, "existingBounds":Lccsanandroid/graphics/Rect;
    iget v8, v7, Lccsanandroid/graphics/Rect;->left:I

    .line 230
    .local v8, "left":I
    iget v9, v7, Lccsanandroid/graphics/Rect;->top:I

    .line 231
    .local v9, "top":I
    iget v10, v7, Lccsanandroid/graphics/Rect;->right:I

    .line 232
    .local v10, "right":I
    iget v11, v7, Lccsanandroid/graphics/Rect;->bottom:I

    .line 233
    .local v11, "bottom":I
    const/4 v12, 0x0

    invoke-virtual {p0, v12, v12, v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {p0, v6}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p0, v8, v9, v10, v11}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    return-object v5

    .line 217
    .end local v2    # "scale":F
    .end local v3    # "bitmapWidth":I
    .end local v4    # "bitmapHeight":I
    .end local v5    # "bitmap":Lccsanandroid/graphics/Bitmap;
    .end local v6    # "canvas":Lccsanandroid/graphics/Canvas;
    .end local v7    # "existingBounds":Lccsanandroid/graphics/Rect;
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;)Lccsanandroid/os/Parcelable;
    .locals 8
    .param p1, "sharedElement"    # Lccsanandroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Lccsanandroid/graphics/Matrix;
    .param p3, "screenBounds"    # Lccsanandroid/graphics/RectF;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElement",
            "viewToGlobalMatrix",
            "screenBounds"
        }
    .end annotation

    .line 168
    instance-of v0, p1, Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, p1

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 170
    .local v0, "imageView":Lccsanandroid/widget/ImageView;
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    .local v1, "d":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    .local v2, "bg":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 173
    invoke-static {v1}, Lccsanandroidx/core/app/SharedElementCallback;->createDrawableBitmap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    .line 174
    .local v3, "bitmap":Lccsanandroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 175
    new-instance v4, Lccsanandroid/os/Bundle;

    invoke-direct {v4}, Lccsanandroid/os/Bundle;-><init>()V

    .line 176
    .local v4, "bundle":Lccsanandroid/os/Bundle;
    const-string/jumbo v5, "sharedElement:snapshot:bitmap"

    invoke-virtual {v4, v5, v3}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 177
    nop

    .line 178
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getScaleType()Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    const-string/jumbo v6, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v4, v6, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getScaleType()Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Lccsanandroid/widget/ImageView$ScaleType;->MATRIX:Lccsanandroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_0

    .line 180
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getImageMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v5

    .line 181
    .local v5, "matrix":Lccsanandroid/graphics/Matrix;
    const/16 v6, 0x9

    new-array v6, v6, [F

    .line 182
    .local v6, "values":[F
    invoke-virtual {v5, v6}, Lccsanandroid/graphics/Matrix;->getValues([F)V

    .line 183
    const-string/jumbo v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v4, v7, v6}, Lccsanandroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 185
    .end local v5    # "matrix":Lccsanandroid/graphics/Matrix;
    .end local v6    # "values":[F
    :cond_0
    return-object v4

    .line 189
    .end local v0    # "imageView":Lccsanandroid/widget/ImageView;
    .end local v1    # "d":Lccsanandroid/graphics/drawable/Drawable;
    .end local v2    # "bg":Lccsanandroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Lccsanandroid/graphics/Bitmap;
    .end local v4    # "bundle":Lccsanandroid/os/Bundle;
    :cond_1
    invoke-virtual {p3}, Lccsanandroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 190
    .local v0, "bitmapWidth":I
    invoke-virtual {p3}, Lccsanandroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 191
    .local v1, "bitmapHeight":I
    const/4 v2, 0x0

    .line 192
    .local v2, "bitmap":Lccsanandroid/graphics/Bitmap;
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 193
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x49800000    # 1048576.0f

    mul-int v5, v0, v1

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 194
    .local v3, "scale":F
    int-to-float v4, v0

    mul-float v4, v4, v3

    float-to-int v0, v4

    .line 195
    int-to-float v4, v1

    mul-float v4, v4, v3

    float-to-int v1, v4

    .line 196
    iget-object v4, p0, Lccsanandroidx/core/app/SharedElementCallback;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    if-nez v4, :cond_2

    .line 197
    new-instance v4, Lccsanandroid/graphics/Matrix;

    invoke-direct {v4}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lccsanandroidx/core/app/SharedElementCallback;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    .line 199
    :cond_2
    iget-object v4, p0, Lccsanandroidx/core/app/SharedElementCallback;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v4, p2}, Lccsanandroid/graphics/Matrix;->set(Lccsanandroid/graphics/Matrix;)V

    .line 200
    iget-object v4, p0, Lccsanandroidx/core/app/SharedElementCallback;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    iget v5, p3, Lccsanandroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v6, p3, Lccsanandroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    .line 201
    iget-object v4, p0, Lccsanandroidx/core/app/SharedElementCallback;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    .line 202
    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    new-instance v4, Lccsanandroid/graphics/Canvas;

    invoke-direct {v4, v2}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 204
    .local v4, "canvas":Lccsanandroid/graphics/Canvas;
    iget-object v5, p0, Lccsanandroidx/core/app/SharedElementCallback;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Lccsanandroid/graphics/Canvas;->concat(Lccsanandroid/graphics/Matrix;)V

    .line 205
    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 207
    .end local v3    # "scale":F
    .end local v4    # "canvas":Lccsanandroid/graphics/Canvas;
    :cond_3
    return-object v2
.end method

.method public onCreateSnapshotView(Lccsanandroid/content/Context;Lccsanandroid/os/Parcelable;)Lccsanandroid/view/View;
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "snapshot"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "snapshot"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "view":Lccsanandroid/widget/ImageView;
    instance-of v1, p2, Lccsanandroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 259
    move-object v1, p2

    check-cast v1, Lccsanandroid/os/Bundle;

    .line 260
    .local v1, "bundle":Lccsanandroid/os/Bundle;
    const-string/jumbo v2, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Bitmap;

    .line 261
    .local v2, "bitmap":Lccsanandroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 262
    const/4 v3, 0x0

    return-object v3

    .line 264
    :cond_0
    new-instance v3, Lccsanandroid/widget/ImageView;

    invoke-direct {v3, p1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 265
    .local v3, "imageView":Lccsanandroid/widget/ImageView;
    move-object v0, v3

    .line 266
    invoke-virtual {v3, v2}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 267
    nop

    .line 268
    const-string/jumbo v4, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v4

    .line 267
    invoke-virtual {v3, v4}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 269
    invoke-virtual {v3}, Lccsanandroid/widget/ImageView;->getScaleType()Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v4

    sget-object v5, Lccsanandroid/widget/ImageView$ScaleType;->MATRIX:Lccsanandroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_2

    .line 270
    const-string/jumbo v4, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v4}, Lccsanandroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    .line 271
    .local v4, "values":[F
    new-instance v5, Lccsanandroid/graphics/Matrix;

    invoke-direct {v5}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 272
    .local v5, "matrix":Lccsanandroid/graphics/Matrix;
    invoke-virtual {v5, v4}, Lccsanandroid/graphics/Matrix;->setValues([F)V

    .line 273
    invoke-virtual {v3, v5}, Lccsanandroid/widget/ImageView;->setImageMatrix(Lccsanandroid/graphics/Matrix;)V

    goto :goto_0

    .line 275
    .end local v1    # "bundle":Lccsanandroid/os/Bundle;
    .end local v2    # "bitmap":Lccsanandroid/graphics/Bitmap;
    .end local v3    # "imageView":Lccsanandroid/widget/ImageView;
    .end local v4    # "values":[F
    .end local v5    # "matrix":Lccsanandroid/graphics/Matrix;
    :cond_1
    instance-of v1, p2, Lccsanandroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 276
    move-object v1, p2

    check-cast v1, Lccsanandroid/graphics/Bitmap;

    .line 277
    .local v1, "bitmap":Lccsanandroid/graphics/Bitmap;
    new-instance v2, Lccsanandroid/widget/ImageView;

    invoke-direct {v2, p1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    move-object v0, v2

    .line 278
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 275
    .end local v1    # "bitmap":Lccsanandroid/graphics/Bitmap;
    :cond_2
    :goto_0
    nop

    .line 280
    :goto_1
    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "names",
            "sharedElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsanandroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rejectedSharedElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElementNames",
            "sharedElements",
            "sharedElementSnapshots"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElementNames",
            "sharedElements",
            "sharedElementSnapshots"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p3, "listener"    # Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElementNames",
            "sharedElements",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 301
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {p3}, Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 302
    return-void
.end method
