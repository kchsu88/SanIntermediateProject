.class public Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/engine/Resource<",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
    .locals 2
    .param p1, "data"    # Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 19
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get()Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 1

    .line 23
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->get()Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 28
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getSize()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 33
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 34
    .local v0, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 37
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 38
    .local v1, "gifDataResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v1}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 41
    :cond_1
    return-void
.end method
