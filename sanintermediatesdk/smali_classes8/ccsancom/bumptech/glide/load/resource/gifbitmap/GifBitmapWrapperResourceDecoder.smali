.class public Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;,
        Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARSER:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private static final DEFAULT_STREAM_FACTORY:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

.field static final MARK_LIMIT_BYTES:I = 0x800


# instance fields
.field private final bitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final gifDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final parser:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

.field private final streamFactory:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 24
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 6
    .param p3, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .line 38
    .local p1, "bitmapDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    sget-object v4, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_PARSER:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    sget-object v5, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->DEFAULT_STREAM_FACTORY:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;)V
    .locals 0
    .param p3, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "parser"    # Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;
    .param p5, "streamFactory"    # Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "bitmapDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 46
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 47
    iput-object p3, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 48
    iput-object p4, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    .line 49
    iput-object p5, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    .line 50
    return-void
.end method

.method private decode(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 1
    .param p1, "source"    # Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeStream(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v0

    .local v0, "result":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    goto :goto_0

    .line 73
    .end local v0    # "result":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v0

    .line 75
    .restart local v0    # "result":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :goto_0
    return-object v0
.end method

.method private decodeBitmapWrapper(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 4
    .param p1, "toDecode"    # Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1, p1, p2, p3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 122
    .local v1, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 123
    new-instance v2, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Lccsancom/bumptech/glide/load/engine/Resource;)V

    move-object v0, v2

    .line 126
    :cond_0
    return-object v0
.end method

.method private decodeGifWrapper(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 7
    .param p1, "bis"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "result":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1, p1, p2, p3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 102
    .local v1, "gifResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 108
    .local v2, "drawable":Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    .line 109
    new-instance v3, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-direct {v3, v5, v1}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Lccsancom/bumptech/glide/load/engine/Resource;)V

    move-object v0, v3

    goto :goto_0

    .line 111
    :cond_0
    new-instance v3, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v3, v4, v6}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 112
    .local v3, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v4, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-direct {v4, v3, v5}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Lccsancom/bumptech/glide/load/engine/Resource;)V

    move-object v0, v4

    .line 115
    .end local v2    # "drawable":Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    .end local v3    # "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    :cond_1
    :goto_0
    return-object v0
.end method

.method private decodeStream(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .locals 5
    .param p1, "source"    # Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->streamFactory:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$BufferedStreamFactory;->build(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, "bis":Ljava/io/InputStream;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->parser:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder$ImageTypeParser;->parse(Ljava/io/InputStream;)Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 83
    .local v1, "type":Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "result":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    sget-object v3, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v1, v3, :cond_0

    .line 87
    invoke-direct {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeGifWrapper(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v2

    .line 90
    :cond_0
    if-nez v2, :cond_1

    .line 93
    new-instance v3, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Lccsanandroid/os/ParcelFileDescriptor;)V

    .line 94
    .local v3, "forBitmapDecoder":Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    invoke-direct {p0, v3, p2, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decodeBitmapWrapper(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v2

    .line 96
    .end local v3    # "forBitmapDecoder":Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public decode(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 4
    .param p1, "source"    # Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
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

    .line 56
    invoke-static {}, Lccsancom/bumptech/glide/util/ByteArrayPool;->get()Lccsancom/bumptech/glide/util/ByteArrayPool;

    move-result-object v0

    .line 57
    .local v0, "pool":Lccsancom/bumptech/glide/util/ByteArrayPool;
    invoke-virtual {v0}, Lccsancom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v1

    .line 59
    .local v1, "tempBytes":[B
    const/4 v2, 0x0

    .line 61
    .local v2, "wrapper":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II[B)Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 63
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 64
    nop

    .line 65
    if-eqz v2, :cond_0

    new-instance v3, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {v3, v2}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 63
    :catchall_0
    move-exception v3

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw v3
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

    .line 22
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->decode(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->gifDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->bitmapDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;->id:Ljava/lang/String;

    return-object v0
.end method
