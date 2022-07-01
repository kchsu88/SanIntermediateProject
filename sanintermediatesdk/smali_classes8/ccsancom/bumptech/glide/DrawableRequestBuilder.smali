.class public Lccsancom/bumptech/glide/DrawableRequestBuilder;
.super Lccsancom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"

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
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;",
        "Lccsancom/bumptech/glide/BitmapOptions;",
        "Lccsancom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/LoadProvider;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p4, "glide"    # Lccsancom/bumptech/glide/Glide;
    .param p5, "requestTracker"    # Lccsancom/bumptech/glide/manager/RequestTracker;
    .param p6, "lifecycle"    # Lccsancom/bumptech/glide/manager/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TModelType;",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lccsancom/bumptech/glide/Glide;",
            "Lccsancom/bumptech/glide/manager/RequestTracker;",
            "Lccsancom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p3, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TModelType;Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const-class v4, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;)V

    .line 51
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    .line 52
    return-void
.end method


# virtual methods
.method public animate(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 309
    return-object p0
.end method

.method public animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 320
    return-object p0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "animationFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 300
    return-object p0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "animator"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 291
    return-object p0
.end method

.method public bridge synthetic animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->animate(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/view/animation/Animation;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method applyCenterCrop()V
    .locals 0

    .line 467
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    .line 468
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 462
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    .line 463
    return-void
.end method

.method public varargs bitmapTransform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "bitmapTransformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    array-length v0, p1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 212
    .local v0, "transformations":[Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 213
    new-instance v2, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v3, p0, Lccsancom/bumptech/glide/DrawableRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v3}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/Transformation;)V

    aput-object v2, v0, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    return-object v1
.end method

.method public cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "cacheDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 126
    return-object p0
.end method

.method public bridge synthetic cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/Transformation;

    iget-object v1, p0, Lccsancom/bumptech/glide/DrawableRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getDrawableCenterCrop()Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 440
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->clone()Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->clone()Lccsancom/bumptech/glide/DrawableRequestBuilder;

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

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->clone()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 248
    return-object p0
.end method

.method public crossFade(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 256
    return-object p0
.end method

.method public crossFade(II)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 2
    .param p1, "animationId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/DrawableRequestBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/content/Context;II)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 273
    return-object p0
.end method

.method public crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            "I)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 265
    return-object p0
.end method

.method public bridge synthetic crossFade()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->crossFade(II)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/view/animation/Animation;
    .param p2, "x1"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->crossFade(Lccsanandroid/view/animation/Animation;I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "decoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 117
    return-object p0
.end method

.method public bridge synthetic decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 387
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 282
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 423
    return-object p0
.end method

.method public bridge synthetic dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "encoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 135
    return-object p0
.end method

.method public bridge synthetic encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 359
    return-object p0
.end method

.method public error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 368
    return-object p0
.end method

.method public bridge synthetic error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->error(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 350
    return-object p0
.end method

.method public fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 344
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/Transformation;

    iget-object v1, p0, Lccsancom/bumptech/glide/DrawableRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getDrawableFitCenter()Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
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
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsanandroid/widget/ImageView;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TModelType;",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "requestListener":Lccsancom/bumptech/glide/request/RequestListener;, "Lccsancom/bumptech/glide/request/RequestListener<-TModelType;Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 378
    return-object p0
.end method

.method public bridge synthetic listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/request/RequestListener;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 435
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1, p2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 405
    return-object p0
.end method

.method public bridge synthetic override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->override(II)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 329
    return-object p0
.end method

.method public placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 338
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/Priority;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 144
    return-object p0
.end method

.method public bridge synthetic priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/Priority;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 429
    return-object p0
.end method

.method public bridge synthetic signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Key;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sizeMultiplier(F)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 108
    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # F

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->sizeMultiplier(F)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 396
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Z

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "sourceEncoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 414
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Encoder;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 99
    return-object p0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/DrawableRequestBuilder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "*>;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<*>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 80
    return-object p0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "***",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<***Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 90
    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # F

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->thumbnail(F)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 240
    return-object p0
.end method

.method public bridge synthetic transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    .local p1, "transformation":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 230
    return-object p0
.end method

.method public varargs transform([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .param p1, "transformations"    # [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lccsancom/bumptech/glide/load/Transformation;

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/DrawableRequestBuilder;, "Lccsancom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method
