.class public Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final gifBitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "gifBitmapDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 20
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 3
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    new-instance v1, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Lccsanandroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->decode(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
