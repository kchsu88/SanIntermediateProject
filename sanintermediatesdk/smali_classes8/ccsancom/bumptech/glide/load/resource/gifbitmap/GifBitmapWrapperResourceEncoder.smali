.class public Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceEncoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceEncoder<",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final gifEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/ResourceEncoder;Lccsancom/bumptech/glide/load/ResourceEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "bitmapEncoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "gifEncoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 23
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 24
    return-void
.end method


# virtual methods
.method public encode(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 4
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 28
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 29
    .local v0, "gifBitmap":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 31
    .local v1, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 32
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v2, v1, p2}, Lccsancom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v2

    return v2

    .line 34
    :cond_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lccsancom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v2

    return v2
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .line 15
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->encode(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    return-object v0
.end method
