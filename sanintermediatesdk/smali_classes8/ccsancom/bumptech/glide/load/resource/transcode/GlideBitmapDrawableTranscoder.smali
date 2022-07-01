.class public Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;
.super Ljava/lang/Object;
.source "GlideBitmapDrawableTranscoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lccsanandroid/graphics/Bitmap;",
        "Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final resources:Lccsanandroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 22
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->resources:Lccsanandroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 28
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 32
    .local p1, "toTranscode":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->resources:Lccsanandroid/content/res/Resources;

    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V

    .line 33
    .local v0, "drawable":Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v0, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v1
.end method
