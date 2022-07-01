.class public Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/engine/Resource<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmap:Lccsanandroid/graphics/Bitmap;

.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 2
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_1

    .line 35
    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Lccsanandroid/graphics/Bitmap;

    .line 39
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 40
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static obtain(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 1
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v0
.end method


# virtual methods
.method public get()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 44
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->get()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 54
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_0
    return-void
.end method
