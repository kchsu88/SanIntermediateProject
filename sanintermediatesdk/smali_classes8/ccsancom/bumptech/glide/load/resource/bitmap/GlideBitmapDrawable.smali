.class public Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.super Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final destRect:Lccsanandroid/graphics/Rect;

.field private height:I

.field private mutated:Z

.field private state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

.field private width:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 28
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Lccsanandroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    .line 29
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .locals 2
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "state"    # Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 31
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 20
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Lccsanandroid/graphics/Rect;

    .line 32
    if-eqz p2, :cond_2

    .line 36
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 38
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    .line 40
    .local v0, "density":I
    if-nez v0, :cond_0

    const/16 v1, 0xa0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 41
    .local v1, "targetDensity":I
    :goto_0
    iput v1, p2, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 42
    .end local v0    # "density":I
    goto :goto_1

    .line 43
    .end local v1    # "targetDensity":I
    :cond_1
    iget v1, p2, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 45
    .restart local v1    # "targetDensity":I
    :goto_1
    iget-object v0, p2, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    .line 46
    iget-object v0, p2, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    .line 47
    return-void

    .line 33
    .end local v1    # "targetDensity":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 97
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    if-eqz v0, :cond_0

    .line 98
    const/16 v0, 0x77

    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    iget v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Lccsanandroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 101
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Lccsanandroid/graphics/Rect;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v3, v3, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getBitmap()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 136
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 56
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 121
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    .line 122
    .local v0, "bm":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v1, v1, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x3

    :goto_1
    return v1
.end method

.method public isAnimated()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 128
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 129
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    .line 132
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 86
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 88
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 106
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 107
    .local v0, "currentAlpha":I
    if-eq v0, p1, :cond_0

    .line 108
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-virtual {v1, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    .line 111
    :cond_0
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 115
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 116
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public setLoopCount(I)V
    .locals 0
    .param p1, "loopCount"    # I

    .line 67
    return-void
.end method

.method public start()V
    .locals 0

    .line 72
    return-void
.end method

.method public stop()V
    .locals 0

    .line 77
    return-void
.end method
