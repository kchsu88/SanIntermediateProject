.class public Lccsancom/bumptech/glide/GifRequestBuilder;
.super Lccsancom/bumptech/glide/GenericRequestBuilder;
.source "GifRequestBuilder.java"

# interfaces
.implements Lccsancom/bumptech/glide/BitmapOptions;
.implements Lccsancom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/GenericRequestBuilder<",
        "TModelType;",
        "Ljava/io/InputStream;",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lccsancom/bumptech/glide/BitmapOptions;",
        "Lccsancom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/lang/Class<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TModelType;Ljava/io/InputStream;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    .local p3, "other":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    .line 43
    return-void
.end method

.method private toGifTransformations([Lccsancom/bumptech/glide/load/Transformation;)[Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)[",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "bitmapTransformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    array-length v0, p1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    .line 199
    .local v0, "transformations":[Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 200
    new-instance v2, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    aget-object v3, p1, v1

    iget-object v4, p0, Lccsancom/bumptech/glide/GifRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v4}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    aput-object v2, v0, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->animate(I)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/view/animation/Animation;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public animate(I)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 281
    return-object p0
.end method

.method public animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 292
    return-object p0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "animationFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 310
    return-object p0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "animator"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 301
    return-object p0
.end method

.method applyCenterCrop()V
    .locals 0

    .line 440
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->centerCrop()Lccsancom/bumptech/glide/GifRequestBuilder;

    .line 441
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 435
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->fitCenter()Lccsancom/bumptech/glide/GifRequestBuilder;

    .line 436
    return-void
.end method

.method public bridge synthetic cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "cacheDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 117
    return-object p0
.end method

.method public bridge synthetic centerCrop()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->centerCrop()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    iget-object v1, p0, Lccsancom/bumptech/glide/GifRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getBitmapCenterCrop()Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GifRequestBuilder;->transformFrame([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->clone()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->clone()Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/GifRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->clone()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->crossFade()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->crossFade(I)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/GifRequestBuilder;->crossFade(II)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/view/animation/Animation;
    .param p2, "x1"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/GifRequestBuilder;->crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public crossFade()Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 235
    return-object p0
.end method

.method public crossFade(I)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 244
    return-object p0
.end method

.method public crossFade(II)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 2
    .param p1, "animationId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/GifRequestBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/content/Context;II)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 263
    return-object p0
.end method

.method public crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            "I)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 254
    return-object p0
.end method

.method public bridge synthetic decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "decoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 107
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 386
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->dontAnimate()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 272
    return-object p0
.end method

.method public bridge synthetic dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->dontTransform()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 413
    return-object p0
.end method

.method public bridge synthetic encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "encoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 127
    return-object p0
.end method

.method public bridge synthetic error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->error(I)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 349
    return-object p0
.end method

.method public error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 358
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->fallback(I)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 340
    return-object p0
.end method

.method public fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 334
    return-object p0
.end method

.method public bridge synthetic fitCenter()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GifRequestBuilder;->fitCenter()Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    iget-object v1, p0, Lccsancom/bumptech/glide/GifRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getBitmapFitCenter()Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GifRequestBuilder;->transformFrame([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/RequestListener;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TModelType;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "requestListener":Lccsancom/bumptech/glide/request/RequestListener;, "Lccsancom/bumptech/glide/request/RequestListener<-TModelType;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 368
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 425
    return-object p0
.end method

.method public bridge synthetic override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/GifRequestBuilder;->override(II)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1, p2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 395
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 319
    return-object p0
.end method

.method public placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 328
    return-object p0
.end method

.method public bridge synthetic priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/Priority;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/Priority;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 136
    return-object p0
.end method

.method public bridge synthetic signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Key;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 419
    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # F

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->sizeMultiplier(F)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sizeMultiplier(F)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 97
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Z

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 377
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Encoder;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "sourceEncoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 404
    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # F

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->thumbnail(F)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 88
    return-object p0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "***",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<***Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 51
    return-object p0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/GifRequestBuilder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "*>;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<*>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 79
    return-object p0
.end method

.method public bridge synthetic transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 226
    return-object p0
.end method

.method public bridge synthetic transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lccsancom/bumptech/glide/load/Transformation;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "transformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 217
    return-object p0
.end method

.method public varargs transformFrame([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "bitmapTransformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lccsancom/bumptech/glide/load/Transformation;)[Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GifRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transformFrame([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .param p1, "bitmapTransformations"    # [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lccsancom/bumptech/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lccsancom/bumptech/glide/GifRequestBuilder;, "Lccsancom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lccsancom/bumptech/glide/load/Transformation;)[Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GifRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method
