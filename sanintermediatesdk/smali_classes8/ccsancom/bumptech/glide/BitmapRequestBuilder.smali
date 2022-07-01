.class public Lccsancom/bumptech/glide/BitmapRequestBuilder;
.super Lccsancom/bumptech/glide/GenericRequestBuilder;
.source "BitmapRequestBuilder.java"

# interfaces
.implements Lccsancom/bumptech/glide/BitmapOptions;
.implements Lccsancom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/GenericRequestBuilder<",
        "TModelType;",
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lccsanandroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Lccsancom/bumptech/glide/BitmapOptions;",
        "Lccsancom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

.field private downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TModelType;",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TModelType;Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsanandroid/graphics/Bitmap;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p3, "other":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    .line 55
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    iput-object v0, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 63
    iget-object v0, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 64
    iget-object v1, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getDecodeFormat()Lccsancom/bumptech/glide/load/DecodeFormat;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 66
    new-instance v2, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v2, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 67
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v1, v0, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 68
    return-void
.end method

.method private crossFadeNotSupported()Ljava/lang/RuntimeException;
    .locals 4

    .line 322
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 324
    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".crossFade() is not supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", use .animate() to provide a compatible animation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private downsample(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .param p1, "downsampler"    # Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 117
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, p1, v1, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 118
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v1, v0, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 119
    return-object p0
.end method


# virtual methods
.method public animate(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 410
    return-object p0
.end method

.method public animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 421
    return-object p0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 440
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "animationFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 441
    return-object p0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "animator"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 430
    return-object p0
.end method

.method public bridge synthetic animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/view/animation/Animation;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method applyCenterCrop()V
    .locals 0

    .line 598
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    .line 599
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 593
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    .line 594
    return-void
.end method

.method public approximate()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsample(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asIs()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsample(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atMost()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsample(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "cacheDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lccsanandroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 184
    return-object p0
.end method

.method public bridge synthetic cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getBitmapCenterCrop()Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transform([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->clone()Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/BitmapRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->clone()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->clone()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const-class v0, Lccsanandroid/graphics/Bitmap;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    const-class v0, Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 342
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public crossFade(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const-class v0, Lccsanandroid/graphics/Bitmap;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    const-class v0, Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 358
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public crossFade(II)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .param p1, "animationId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const-class v0, Lccsanandroid/graphics/Bitmap;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>(Lccsanandroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    const-class v0, Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 391
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            "I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const-class v0, Lccsanandroid/graphics/Bitmap;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>(Lccsanandroid/view/animation/Animation;I)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    const-class v0, Lccsanandroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/view/animation/Animation;I)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 375
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic crossFade()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFade()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFade(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFade(II)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/view/animation/Animation;
    .param p2, "x1"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "decoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsanandroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 175
    return-object p0
.end method

.method public bridge synthetic decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 517
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 401
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 554
    return-object p0
.end method

.method public bridge synthetic dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->dontTransform()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "encoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<Lccsanandroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 193
    return-object p0
.end method

.method public bridge synthetic encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 480
    return-object p0
.end method

.method public error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 489
    return-object p0
.end method

.method public bridge synthetic error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->error(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 471
    return-object p0
.end method

.method public fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 465
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->fallback(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getBitmapFitCenter()Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transform([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public format(Lccsancom/bumptech/glide/load/DecodeFormat;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .param p1, "format"    # Lccsancom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 245
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v1, v2, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 246
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v1}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>()V

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v1, v2, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 247
    new-instance v0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v3, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v2, v3, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 248
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, v1, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 249
    return-object p0
.end method

.method public imageDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "decoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lccsanandroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 207
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, p1, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 208
    return-object p0
.end method

.method public into(Lccsanandroid/widget/ImageView;)Lccsancom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1, "view"    # Lccsanandroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/ImageView;",
            ")",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsanandroid/widget/ImageView;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TModelType;TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 498
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "requestListener":Lccsancom/bumptech/glide/request/RequestListener;, "Lccsancom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 499
    return-object p0
.end method

.method public bridge synthetic listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/RequestListener;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 566
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1, p2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 526
    return-object p0
.end method

.method public bridge synthetic override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->override(II)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 449
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 450
    return-object p0
.end method

.method public placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 459
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/Priority;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 255
    return-object p0
.end method

.method public bridge synthetic priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/Priority;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 560
    return-object p0
.end method

.method public bridge synthetic signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Key;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sizeMultiplier(F)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 166
    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # F

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->sizeMultiplier(F)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 508
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Z

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "sourceEncoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 545
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Encoder;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 128
    return-object p0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/BitmapRequestBuilder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "*TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<*TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 157
    return-object p0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 536
    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # F

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->thumbnail(F)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsanandroid/graphics/Bitmap;",
            "TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lccsanandroid/graphics/Bitmap;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 318
    return-object p0
.end method

.method public bridge synthetic transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "transformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 308
    return-object p0
.end method

.method public varargs transform([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "transformations"    # [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 270
    return-object p0
.end method

.method public bridge synthetic transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lccsancom/bumptech/glide/load/Transformation;

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public videoDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lccsancom/bumptech/glide/BitmapRequestBuilder;, "Lccsancom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    .local p1, "decoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 221
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lccsancom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v0, v1, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 222
    return-object p0
.end method
