.class public Lccsancom/bumptech/glide/GenericRequestBuilder;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final context:Lccsanandroid/content/Context;

.field private diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Lccsanandroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private fallbackResource:I

.field protected final glide:Lccsancom/bumptech/glide/Glide;

.field private isCacheable:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private isTransformationSet:Z

.field protected final lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

.field private loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/provider/ChildLoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field protected final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModelType;>;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lccsancom/bumptech/glide/Priority;

.field private requestListener:Lccsancom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

.field private signature:Lccsancom/bumptech/glide/load/Key;

.field private sizeMultiplier:Ljava/lang/Float;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transformation:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p5, "glide"    # Lccsancom/bumptech/glide/Glide;
    .param p6, "requestTracker"    # Lccsancom/bumptech/glide/manager/RequestTracker;
    .param p7, "lifecycle"    # Lccsancom/bumptech/glide/manager/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lccsancom/bumptech/glide/Glide;",
            "Lccsancom/bumptech/glide/manager/RequestTracker;",
            "Lccsancom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p3, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p4, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lccsancom/bumptech/glide/signature/EmptySignature;->obtain()Lccsancom/bumptech/glide/signature/EmptySignature;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature:Lccsancom/bumptech/glide/load/Key;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 73
    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 75
    iput v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 76
    sget-object v1, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/UnitTransformation;->get()Lccsancom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 97
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->context:Lccsanandroid/content/Context;

    .line 98
    iput-object p2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    .line 101
    iput-object p6, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    .line 102
    iput-object p7, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    .line 103
    if-eqz p3, :cond_0

    new-instance v0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    invoke-direct {v0, p3}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;)V

    :cond_0
    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    .line 106
    if-eqz p1, :cond_3

    .line 109
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    :goto_0
    return-void

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p3, "other":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    iget-object v1, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->context:Lccsanandroid/content/Context;

    iget-object v2, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    iget-object v5, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v6, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;)V

    .line 87
    iget-object v0, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 88
    iget-boolean v0, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    iput-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 89
    iget-object v0, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature:Lccsancom/bumptech/glide/load/Key;

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature:Lccsancom/bumptech/glide/load/Key;

    .line 90
    iget-object v0, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-boolean v0, p3, Lccsancom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    iput-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 92
    return-void
.end method

.method private buildRequest(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 794
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    if-nez v0, :cond_0

    .line 795
    sget-object v0, Lccsancom/bumptech/glide/Priority;->NORMAL:Lccsancom/bumptech/glide/Priority;

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    .line 797
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lccsancom/bumptech/glide/request/target/Target;Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private buildRequestRecursive(Lccsancom/bumptech/glide/request/target/Target;Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lccsancom/bumptech/glide/request/Request;
    .locals 4
    .param p2, "parentCoordinator"    # Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            ")",
            "Lccsancom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 801
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    if-eqz v0, :cond_4

    .line 802
    iget-boolean v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    if-nez v1, :cond_3

    .line 807
    iget-object v0, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    iput-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 811
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    if-nez v1, :cond_1

    .line 812
    invoke-direct {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lccsancom/bumptech/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    .line 815
    :cond_1
    iget v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v0, v1}, Lccsancom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    iget v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v0, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v1, v0}, Lccsancom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-virtual {v0, v1, v2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 821
    :cond_2
    new-instance v0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lccsancom/bumptech/glide/request/RequestCoordinator;)V

    .line 822
    .local v0, "coordinator":Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lccsancom/bumptech/glide/request/target/Target;FLccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/RequestCoordinator;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v1

    .line 824
    .local v1, "fullRequest":Lccsancom/bumptech/glide/request/Request;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 826
    iget-object v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {v2, p1, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lccsancom/bumptech/glide/request/target/Target;Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v2

    .line 827
    .local v2, "thumbRequest":Lccsancom/bumptech/glide/request/Request;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 828
    invoke-virtual {v0, v1, v2}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lccsancom/bumptech/glide/request/Request;Lccsancom/bumptech/glide/request/Request;)V

    .line 829
    return-object v0

    .line 803
    .end local v0    # "coordinator":Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v1    # "fullRequest":Lccsancom/bumptech/glide/request/Request;
    .end local v2    # "thumbRequest":Lccsancom/bumptech/glide/request/Request;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_4
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 832
    new-instance v0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lccsancom/bumptech/glide/request/RequestCoordinator;)V

    .line 833
    .restart local v0    # "coordinator":Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lccsancom/bumptech/glide/request/target/Target;FLccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/RequestCoordinator;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v1

    .line 834
    .restart local v1    # "fullRequest":Lccsancom/bumptech/glide/request/Request;
    iget-object v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lccsancom/bumptech/glide/Priority;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lccsancom/bumptech/glide/request/target/Target;FLccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/RequestCoordinator;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v2

    .line 835
    .local v2, "thumbnailRequest":Lccsancom/bumptech/glide/request/Request;
    invoke-virtual {v0, v1, v2}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lccsancom/bumptech/glide/request/Request;Lccsancom/bumptech/glide/request/Request;)V

    .line 836
    return-object v0

    .line 839
    .end local v0    # "coordinator":Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;
    .end local v1    # "fullRequest":Lccsancom/bumptech/glide/request/Request;
    .end local v2    # "thumbnailRequest":Lccsancom/bumptech/glide/request/Request;
    :cond_5
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lccsancom/bumptech/glide/request/target/Target;FLccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/RequestCoordinator;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailPriority()Lccsancom/bumptech/glide/Priority;
    .locals 2

    .line 783
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    sget-object v1, Lccsancom/bumptech/glide/Priority;->LOW:Lccsancom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_0

    .line 784
    sget-object v0, Lccsancom/bumptech/glide/Priority;->NORMAL:Lccsancom/bumptech/glide/Priority;

    .local v0, "result":Lccsancom/bumptech/glide/Priority;
    goto :goto_0

    .line 785
    .end local v0    # "result":Lccsancom/bumptech/glide/Priority;
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    sget-object v1, Lccsancom/bumptech/glide/Priority;->NORMAL:Lccsancom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_1

    .line 786
    sget-object v0, Lccsancom/bumptech/glide/Priority;->HIGH:Lccsancom/bumptech/glide/Priority;

    .restart local v0    # "result":Lccsancom/bumptech/glide/Priority;
    goto :goto_0

    .line 788
    .end local v0    # "result":Lccsancom/bumptech/glide/Priority;
    :cond_1
    sget-object v0, Lccsancom/bumptech/glide/Priority;->IMMEDIATE:Lccsancom/bumptech/glide/Priority;

    .line 790
    .restart local v0    # "result":Lccsancom/bumptech/glide/Priority;
    :goto_0
    return-object v0
.end method

.method private obtainRequest(Lccsancom/bumptech/glide/request/target/Target;FLccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/RequestCoordinator;)Lccsancom/bumptech/glide/request/Request;
    .locals 25
    .param p2, "sizeMultiplier"    # F
    .param p3, "priority"    # Lccsancom/bumptech/glide/Priority;
    .param p4, "requestCoordinator"    # Lccsancom/bumptech/glide/request/RequestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;F",
            "Lccsancom/bumptech/glide/Priority;",
            "Lccsancom/bumptech/glide/request/RequestCoordinator;",
            ")",
            "Lccsancom/bumptech/glide/request/Request;"
        }
    .end annotation

    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<TTranscodeType;>;"
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    .line 845
    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    iget-object v2, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iget-object v3, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature:Lccsancom/bumptech/glide/load/Key;

    iget-object v4, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->context:Lccsanandroid/content/Context;

    iget-object v8, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget v9, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    iget-object v10, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Lccsanandroid/graphics/drawable/Drawable;

    iget v11, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->errorId:I

    iget-object v12, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget v13, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    iget-object v14, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->requestListener:Lccsancom/bumptech/glide/request/RequestListener;

    move-object/from16 v24, v1

    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getEngine()Lccsancom/bumptech/glide/load/engine/Engine;

    move-result-object v16

    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    move-object/from16 v17, v1

    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    move/from16 v19, v1

    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-object/from16 v20, v1

    iget v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move/from16 v21, v1

    iget v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    move/from16 v22, v1

    iget-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v1

    move-object/from16 v1, v24

    invoke-static/range {v1 .. v23}, Lccsancom/bumptech/glide/request/GenericRequest;->obtain(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lccsancom/bumptech/glide/load/Key;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/target/Target;FLccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsancom/bumptech/glide/request/RequestListener;Lccsancom/bumptech/glide/request/RequestCoordinator;Lccsancom/bumptech/glide/load/engine/Engine;Lccsancom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLccsancom/bumptech/glide/request/animation/GlideAnimationFactory;IILccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public animate(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsanandroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public animate(Lccsanandroid/view/animation/Animation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/animation/Animation;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsanandroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "animationFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"
    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 429
    return-object p0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public animate(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "animator"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method applyCenterCrop()V
    .locals 0

    .line 775
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 779
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-void
.end method

.method public cacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TResourceType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "cacheDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TResourceType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->setCacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    .line 232
    :cond_0
    return-object p0
.end method

.method public clone()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 631
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 633
    .local v0, "clone":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->clone()Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return-object v0

    .line 635
    .end local v0    # "clone":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->clone()Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "TDataType;TResourceType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "decoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<TDataType;TResourceType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->setSourceDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 273
    return-object p0
.end method

.method public dontAnimate()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v0

    .line 368
    .local v0, "animation":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->animate(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    return-object v1
.end method

.method public dontTransform()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/UnitTransformation;->get()Lccsancom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v0

    .line 340
    .local v0, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TResourceType;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    return-object v1
.end method

.method public encoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "TResourceType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "encoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<TResourceType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->setEncoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)V

    .line 297
    :cond_0
    return-object p0
.end method

.method public error(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->errorId:I

    .line 512
    return-object p0
.end method

.method public error(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Lccsanandroid/graphics/drawable/Drawable;

    .line 525
    return-object p0
.end method

.method public fallback(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    .line 499
    return-object p0
.end method

.method public fallback(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 478
    return-object p0
.end method

.method public into(II)Lccsancom/bumptech/glide/request/FutureTarget;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 721
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getMainHandler()Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lccsancom/bumptech/glide/request/RequestFutureTarget;-><init>(Lccsanandroid/os/Handler;II)V

    .line 725
    .local v0, "target":Lccsancom/bumptech/glide/request/RequestFutureTarget;, "Lccsancom/bumptech/glide/request/RequestFutureTarget<TModelType;TTranscodeType;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/Glide;->getMainHandler()Lccsanandroid/os/Handler;

    move-result-object v1

    new-instance v2, Lccsancom/bumptech/glide/GenericRequestBuilder$1;

    invoke-direct {v2, p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder$1;-><init>(Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    return-object v0
.end method

.method public into(Lccsanandroid/widget/ImageView;)Lccsancom/bumptech/glide/request/target/Target;
    .locals 2
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

    .line 683
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 684
    if-eqz p1, :cond_1

    .line 688
    iget-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getScaleType()Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lccsancom/bumptech/glide/GenericRequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getScaleType()Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 696
    :pswitch_0
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->applyFitCenter()V

    .line 697
    goto :goto_0

    .line 691
    :pswitch_1
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->applyCenterCrop()V

    .line 704
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lccsancom/bumptech/glide/Glide;->buildImageViewTarget(Lccsanandroid/widget/ImageView;Ljava/lang/Class;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0

    .line 685
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public into(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 649
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lccsancom/bumptech/glide/request/target/Target;, "TY;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 650
    if-eqz p1, :cond_2

    .line 653
    iget-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_1

    .line 657
    invoke-interface {p1}, Lccsancom/bumptech/glide/request/target/Target;->getRequest()Lccsancom/bumptech/glide/request/Request;

    move-result-object v0

    .line 659
    .local v0, "previous":Lccsancom/bumptech/glide/request/Request;
    if-eqz v0, :cond_0

    .line 660
    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->clear()V

    .line 661
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/manager/RequestTracker;->removeRequest(Lccsancom/bumptech/glide/request/Request;)V

    .line 662
    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->recycle()V

    .line 665
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->buildRequest(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/Request;

    move-result-object v1

    .line 666
    .local v1, "request":Lccsancom/bumptech/glide/request/Request;
    invoke-interface {p1, v1}, Lccsancom/bumptech/glide/request/target/Target;->setRequest(Lccsancom/bumptech/glide/request/Request;)V

    .line 667
    iget-object v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v2, p1}, Lccsancom/bumptech/glide/manager/Lifecycle;->addListener(Lccsancom/bumptech/glide/manager/LifecycleListener;)V

    .line 668
    iget-object v2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v2, v1}, Lccsancom/bumptech/glide/manager/RequestTracker;->runRequest(Lccsancom/bumptech/glide/request/Request;)V

    .line 670
    return-object p1

    .line 654
    .end local v0    # "previous":Lccsancom/bumptech/glide/request/Request;
    .end local v1    # "request":Lccsancom/bumptech/glide/request/Request;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TModelType;TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "requestListener":Lccsancom/bumptech/glide/request/RequestListener;, "Lccsancom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->requestListener:Lccsancom/bumptech/glide/request/RequestListener;

    .line 540
    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 615
    return-object p0
.end method

.method public override(II)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {p1, p2}, Lccsancom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iput p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 574
    iput p2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 576
    return-object p0

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public placeholder(I)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    .line 443
    return-object p0
.end method

.method public placeholder(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 456
    return-object p0
.end method

.method public preload()Lccsancom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 770
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->preload(II)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lccsancom/bumptech/glide/request/target/Target;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 756
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {p1, p2}, Lccsancom/bumptech/glide/request/target/PreloadTarget;->obtain(II)Lccsancom/bumptech/glide/request/target/PreloadTarget;

    move-result-object v0

    .line 757
    .local v0, "target":Lccsancom/bumptech/glide/request/target/PreloadTarget;, "Lccsancom/bumptech/glide/request/target/PreloadTarget<TTranscodeType;>;"
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v1

    return-object v1
.end method

.method public priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 0
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/Priority;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority:Lccsancom/bumptech/glide/Priority;

    .line 310
    return-object p0
.end method

.method public signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    if-eqz p1, :cond_0

    .line 597
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->signature:Lccsancom/bumptech/glide/load/Key;

    .line 598
    return-object p0

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sizeMultiplier(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 188
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    .line 190
    return-object p0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 557
    return-object p0
.end method

.method public sourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TDataType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "sourceEncoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<TDataType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->setSourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)V

    .line 250
    :cond_0
    return-object p0
.end method

.method public thumbnail(F)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 170
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 172
    return-object p0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public thumbnail(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 137
    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transcoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TResourceType;TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TResourceType;TTranscodeType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->setTranscoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 359
    :cond_0
    return-object p0
.end method

.method public varargs transform([Lccsancom/bumptech/glide/load/Transformation;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TResourceType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "transformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<TResourceType;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    .line 323
    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Lccsancom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/load/MultiTransformation;-><init>([Lccsancom/bumptech/glide/load/Transformation;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 329
    :goto_0
    return-object p0
.end method
