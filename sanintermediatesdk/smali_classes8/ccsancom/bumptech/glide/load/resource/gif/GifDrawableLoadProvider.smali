.class public Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final encoder:Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder;

.field private final sourceEncoder:Lccsancom/bumptech/glide/load/model/StreamEncoder;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    .line 28
    new-instance v1, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    invoke-direct {v1, v0}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->encoder:Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    .line 30
    new-instance v0, Lccsancom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/model/StreamEncoder;

    .line 31
    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    return-object v0
.end method

.method public getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->encoder:Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/model/StreamEncoder;

    return-object v0
.end method
