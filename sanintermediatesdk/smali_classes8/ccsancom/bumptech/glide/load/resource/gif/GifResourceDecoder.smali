.class public Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;,
        Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODER_POOL:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private static final PARSER_POOL:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private static final TAG:Ljava/lang/String; = "GifResourceDecoder"


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Lccsanandroid/content/Context;

.field private final decoderPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private final parserPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private final provider:Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->PARSER_POOL:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->DECODER_POOL:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 38
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 42
    sget-object v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->PARSER_POOL:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    sget-object v1, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->DECODER_POOL:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {p0, p1, p2, v0, v1}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "parserPool"    # Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    .param p4, "decoderPool"    # Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->context:Lccsanandroid/content/Context;

    .line 49
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 50
    iput-object p4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    .line 51
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 52
    iput-object p3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 53
    return-void
.end method

.method private decode([BIILccsancom/bumptech/glide/gifdecoder/GifHeaderParser;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;)Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .locals 17
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "parser"    # Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    .param p5, "decoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    .line 69
    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v11

    .line 70
    .local v11, "header":Lccsancom/bumptech/glide/gifdecoder/GifHeader;
    invoke-virtual {v11}, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->getNumFrames()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v11}, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    goto :goto_0

    .line 75
    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p5

    invoke-direct {v0, v13, v11, v12}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decodeFirstFrame(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsancom/bumptech/glide/gifdecoder/GifHeader;[B)Lccsanandroid/graphics/Bitmap;

    move-result-object v14

    .line 76
    .local v14, "firstFrame":Lccsanandroid/graphics/Bitmap;
    if-nez v14, :cond_1

    .line 77
    return-object v2

    .line 80
    :cond_1
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/UnitTransformation;->get()Lccsancom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v15

    .line 82
    .local v15, "unitTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v16, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v2, v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->context:Lccsanandroid/content/Context;

    iget-object v3, v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    iget-object v4, v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v1, v16

    move-object v5, v15

    move/from16 v6, p2

    move/from16 v7, p3

    move-object v8, v11

    move-object/from16 v9, p1

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/Transformation;IILccsancom/bumptech/glide/gifdecoder/GifHeader;[BLccsanandroid/graphics/Bitmap;)V

    .line 85
    .local v1, "gifDrawable":Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    new-instance v2, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;

    invoke-direct {v2, v1}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;)V

    return-object v2

    .line 70
    .end local v1    # "gifDrawable":Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    .end local v14    # "firstFrame":Lccsanandroid/graphics/Bitmap;
    .end local v15    # "unitTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    :cond_2
    move-object/from16 v12, p1

    move-object/from16 v13, p5

    .line 72
    :goto_0
    return-object v2
.end method

.method private decodeFirstFrame(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;Lccsancom/bumptech/glide/gifdecoder/GifHeader;[B)Lccsanandroid/graphics/Bitmap;
    .locals 1
    .param p1, "decoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p2, "header"    # Lccsancom/bumptech/glide/gifdecoder/GifHeader;
    .param p3, "data"    # [B

    .line 89
    invoke-virtual {p1, p2, p3}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lccsancom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 90
    invoke-virtual {p1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 91
    invoke-virtual {p1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static inputStreamToBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .line 100
    const/16 v0, 0x4000

    .line 101
    .local v0, "bufferSize":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-array v2, v2, [B

    .line 105
    .local v2, "data":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    goto :goto_1

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "GifResourceDecoder"

    const-string v4, "Error reading data from stream"

    invoke-static {v3, v4, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
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

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decode(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .locals 9
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 57
    invoke-static {p1}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->inputStreamToBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 58
    .local v6, "data":[B
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v0, v6}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->obtain([B)Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v7

    .line 59
    .local v7, "parser":Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->provider:Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->obtain(Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v8

    .line 61
    .local v8, "decoder":Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move-object v4, v7

    move-object v5, v8

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decode([BIILccsancom/bumptech/glide/gifdecoder/GifHeaderParser;Lccsancom/bumptech/glide/gifdecoder/GifDecoder;)Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v1, v7}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->release(Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-virtual {v1, v8}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->release(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;)V

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->parserPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v1, v7}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->release(Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;->decoderPool:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-virtual {v1, v8}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->release(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, ""

    return-object v0
.end method
