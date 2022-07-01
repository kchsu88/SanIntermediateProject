.class public Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
.super Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GifDrawable.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

.field private final destRect:Lccsanandroid/graphics/Rect;

.field private final frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private final paint:Lccsanandroid/graphics/Paint;

.field private final state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/Transformation;IILccsancom/bumptech/glide/gifdecoder/GifHeader;[BLccsanandroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "bitmapProvider"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    .param p3, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p5, "targetFrameWidth"    # I
    .param p6, "targetFrameHeight"    # I
    .param p7, "gifHeader"    # Lccsancom/bumptech/glide/gifdecoder/GifHeader;
    .param p8, "data"    # [B
    .param p9, "firstFrame"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;II",
            "Lccsancom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Lccsanandroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 75
    .local p4, "frameTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v10, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v0, v10

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lccsancom/bumptech/glide/gifdecoder/GifHeader;[BLccsanandroid/content/Context;Lccsancom/bumptech/glide/load/Transformation;IILccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Paint;)V
    .locals 2
    .param p1, "decoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p2, "frameLoader"    # Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;
    .param p3, "firstFrame"    # Lccsanandroid/graphics/Bitmap;
    .param p4, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p5, "paint"    # Lccsanandroid/graphics/Paint;

    .line 100
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Lccsanandroid/graphics/Rect;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 101
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    .line 102
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 103
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 104
    iput-object p5, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Lccsanandroid/graphics/Paint;

    .line 105
    iput-object p4, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 106
    iput-object p3, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    .line 107
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 7
    .param p1, "state"    # Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 86
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Lccsanandroid/graphics/Rect;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 87
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 92
    new-instance v4, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v4, v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    .line 93
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Lccsanandroid/graphics/Paint;

    .line 94
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    invoke-virtual {v4, v0, v1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lccsancom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 95
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v2, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Lccsanandroid/content/Context;

    iget v5, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget v6, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;II)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 96
    iget-object v1, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lccsancom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lccsancom/bumptech/glide/load/Transformation;)V

    .line 97
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/Transformation;)V
    .locals 11
    .param p1, "other"    # Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    .param p2, "firstFrame"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p3, "frameTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v10, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v2, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v3, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Lccsanandroid/content/Context;

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v5, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v6, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v7, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v8, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v0, v10

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lccsancom/bumptech/glide/gifdecoder/GifHeader;[BLccsanandroid/content/Context;Lccsancom/bumptech/glide/load/Transformation;IILccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;)V

    invoke-direct {p0, v10}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 84
    return-void
.end method

.method private reset()V
    .locals 1

    .line 172
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 173
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method

.method private resetLoopCount()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 143
    return-void
.end method

.method private startRunning()V
    .locals 2

    .line 178
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    goto :goto_0

    .line 180
    :cond_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    if-nez v0, :cond_1

    .line 181
    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 182
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->start()V

    .line 183
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 185
    :cond_1
    :goto_0
    return-void
.end method

.method private stopRunning()V
    .locals 1

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 189
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 190
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 231
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    if-eqz v0, :cond_1

    .line 236
    const/16 v0, 0x77

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Lccsanandroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 240
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "currentFrame":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    .line 242
    .local v1, "toDraw":Lccsanandroid/graphics/Bitmap;
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Lccsanandroid/graphics/Rect;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    .line 243
    return-void
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 283
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    return-object v0
.end method

.method public getDecoder()Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 1

    .line 126
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    return-object v0
.end method

.method public getFirstFrame()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 110
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameTransformation()Lccsancom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lccsancom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 210
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 205
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 258
    const/4 v0, -0x2

    return v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method isRecycled()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 225
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 227
    return-void
.end method

.method public onFrameReady(I)V
    .locals 2
    .param p1, "frameIndex"    # I

    .line 264
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 266
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    .line 267
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 272
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 273
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 276
    :cond_1
    iget v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    if-lt v1, v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 279
    :cond_2
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 291
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    .line 292
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 293
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 294
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 247
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 248
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 252
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 253
    return-void
.end method

.method public setFrameTransformation(Lccsancom/bumptech/glide/load/Transformation;Lccsanandroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "firstFrame"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsanandroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 114
    .local p1, "frameTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    if-eqz p2, :cond_1

    .line 117
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p1, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 121
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p2, v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lccsancom/bumptech/glide/load/Transformation;)V

    .line 123
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The frame transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setIsRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .line 220
    iput-boolean p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 221
    return-void
.end method

.method public setLoopCount(I)V
    .locals 2
    .param p1, "loopCount"    # I

    .line 308
    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 314
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v1

    .line 315
    .local v1, "intrinsicCount":I
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 316
    .end local v1    # "intrinsicCount":I
    goto :goto_2

    .line 317
    :cond_3
    iput p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    .line 319
    :goto_2
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 194
    iput-boolean p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    .line 195
    if-nez p1, :cond_0

    .line 196
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    goto :goto_0

    .line 197
    :cond_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    .line 200
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 148
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->resetLoopCount()V

    .line 149
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    .line 152
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 157
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    .line 163
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 164
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    .line 166
    :cond_0
    return-void
.end method
