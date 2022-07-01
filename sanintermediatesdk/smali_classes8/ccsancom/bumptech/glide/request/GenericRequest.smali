.class public final Lccsancom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/Request;
.implements Lccsancom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lccsancom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/Request;",
        "Lccsancom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lccsancom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lccsancom/bumptech/glide/request/GenericRequest<",
            "****>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GenericRequest"

.field private static final TO_MEGABYTE:D = 9.5367431640625E-7


# instance fields
.field private animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;"
        }
    .end annotation
.end field

.field private context:Lccsanandroid/content/Context;

.field private diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private engine:Lccsancom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private errorResourceId:I

.field private fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private fallbackResourceId:I

.field private isMemoryCacheable:Z

.field private loadProvider:Lccsancom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private loadStatus:Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private loadedFromMemoryCache:Z

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private placeholderResourceId:I

.field private priority:Lccsancom/bumptech/glide/Priority;

.field private requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

.field private requestListener:Lccsancom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TA;TR;>;"
        }
    .end annotation
.end field

.field private resource:Lccsancom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lccsancom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private startTime:J

.field private status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

.field private final tag:Ljava/lang/String;

.field private target:Lccsancom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transformation:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 147
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private canNotifyStatusChanged()Z
    .locals 1

    .line 462
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lccsancom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canSetResource()Z
    .locals 1

    .line 458
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lccsancom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "suggestion"    # Ljava/lang/String;

    .line 246
    if-nez p1, :cond_1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    if-eqz p2, :cond_0

    .line 250
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getErrorDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 408
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->errorDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->errorDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 411
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->errorDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFallbackDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 386
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 415
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 418
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private init(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lccsancom/bumptech/glide/load/Key;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/target/Target;FLccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsancom/bumptech/glide/request/RequestListener;Lccsancom/bumptech/glide/request/RequestCoordinator;Lccsancom/bumptech/glide/load/engine/Engine;Lccsancom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLccsancom/bumptech/glide/request/animation/GlideAnimationFactory;IILccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 16
    .param p3, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .param p4, "context"    # Lccsanandroid/content/Context;
    .param p5, "priority"    # Lccsancom/bumptech/glide/Priority;
    .param p7, "sizeMultiplier"    # F
    .param p8, "placeholderDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p9, "placeholderResourceId"    # I
    .param p10, "errorDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p11, "errorResourceId"    # I
    .param p12, "fallbackDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p13, "fallbackResourceId"    # I
    .param p15, "requestCoordinator"    # Lccsancom/bumptech/glide/request/RequestCoordinator;
    .param p16, "engine"    # Lccsancom/bumptech/glide/load/engine/Engine;
    .param p19, "isMemoryCacheable"    # Z
    .param p21, "overrideWidth"    # I
    .param p22, "overrideHeight"    # I
    .param p23, "diskCacheStrategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;TA;",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/Priority;",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TR;>;F",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "I",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "I",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "I",
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TA;TR;>;",
            "Lccsancom/bumptech/glide/request/RequestCoordinator;",
            "Lccsancom/bumptech/glide/load/engine/Engine;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;II",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .line 193
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p2, "model":Ljava/lang/Object;, "TA;"
    .local p6, "target":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<TR;>;"
    .local p14, "requestListener":Lccsancom/bumptech/glide/request/RequestListener;, "Lccsancom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p17, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TZ;>;"
    .local p18, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p20, "animationFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p17

    move-object/from16 v3, p1

    iput-object v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->loadProvider:Lccsancom/bumptech/glide/provider/LoadProvider;

    .line 194
    iput-object v1, v0, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 195
    move-object/from16 v4, p3

    iput-object v4, v0, Lccsancom/bumptech/glide/request/GenericRequest;->signature:Lccsancom/bumptech/glide/load/Key;

    .line 196
    move-object/from16 v5, p12

    iput-object v5, v0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 197
    move/from16 v6, p13

    iput v6, v0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    .line 198
    invoke-virtual/range {p4 .. p4}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v7

    iput-object v7, v0, Lccsancom/bumptech/glide/request/GenericRequest;->context:Lccsanandroid/content/Context;

    .line 199
    move-object/from16 v7, p5

    iput-object v7, v0, Lccsancom/bumptech/glide/request/GenericRequest;->priority:Lccsancom/bumptech/glide/Priority;

    .line 200
    move-object/from16 v8, p6

    iput-object v8, v0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    .line 201
    move/from16 v9, p7

    iput v9, v0, Lccsancom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    .line 202
    move-object/from16 v10, p8

    iput-object v10, v0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 203
    move/from16 v11, p9

    iput v11, v0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    .line 204
    move-object/from16 v12, p10

    iput-object v12, v0, Lccsancom/bumptech/glide/request/GenericRequest;->errorDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 205
    move/from16 v13, p11

    iput v13, v0, Lccsancom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    .line 206
    move-object/from16 v14, p14

    iput-object v14, v0, Lccsancom/bumptech/glide/request/GenericRequest;->requestListener:Lccsancom/bumptech/glide/request/RequestListener;

    .line 207
    move-object/from16 v15, p15

    iput-object v15, v0, Lccsancom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    .line 208
    move-object/from16 v3, p16

    iput-object v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    .line 209
    iput-object v2, v0, Lccsancom/bumptech/glide/request/GenericRequest;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 210
    move-object/from16 v3, p18

    iput-object v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    .line 211
    move/from16 v3, p19

    iput-boolean v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    .line 212
    move-object/from16 v3, p20

    iput-object v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 213
    move/from16 v3, p21

    iput v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    .line 214
    move/from16 v3, p22

    iput v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    .line 215
    move-object/from16 v3, p23

    iput-object v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    sget-object v3, Lccsancom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v3, v0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 220
    if-eqz v1, :cond_3

    .line 221
    invoke-interface/range {p1 .. p1}, Lccsancom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    const-string v0, "ModelLoader"

    const-string/jumbo v1, "try .using(ModelLoader)"

    invoke-static {v0, v3, v1}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-interface/range {p1 .. p1}, Lccsancom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    const-string v1, "Transcoder"

    const-string/jumbo v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v0, v3}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string v0, "Transformation"

    const-string/jumbo v1, "try .transform(UnitTransformation.get())"

    invoke-static {v0, v2, v1}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p23 .. p23}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-interface/range {p1 .. p1}, Lccsancom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v0

    const-string v1, "SourceEncoder"

    const-string/jumbo v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v0, v3}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface/range {p1 .. p1}, Lccsancom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    const-string v1, "SourceDecoder"

    const-string/jumbo v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v0, v3}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-virtual/range {p23 .. p23}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p23 .. p23}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    :cond_1
    invoke-interface/range {p1 .. p1}, Lccsancom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    const-string v1, "CacheDecoder"

    const-string/jumbo v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v0, v3}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_2
    invoke-virtual/range {p23 .. p23}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-interface/range {p1 .. p1}, Lccsancom/bumptech/glide/provider/LoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    const-string v1, "Encoder"

    const-string/jumbo v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v0, v3}, Lccsancom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    :cond_3
    return-void
.end method

.method private isFirstReadyResource()Z
    .locals 1

    .line 466
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private logV(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 553
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericRequest"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 1

    .line 470
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lccsancom/bumptech/glide/request/Request;)V

    .line 473
    :cond_0
    return-void
.end method

.method public static obtain(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lccsancom/bumptech/glide/load/Key;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/target/Target;FLccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsancom/bumptech/glide/request/RequestListener;Lccsancom/bumptech/glide/request/RequestCoordinator;Lccsancom/bumptech/glide/load/engine/Engine;Lccsancom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLccsancom/bumptech/glide/request/animation/GlideAnimationFactory;IILccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/request/GenericRequest;
    .locals 25
    .param p2, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p4, "priority"    # Lccsancom/bumptech/glide/Priority;
    .param p6, "sizeMultiplier"    # F
    .param p7, "placeholderDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p8, "placeholderResourceId"    # I
    .param p9, "errorDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p10, "errorResourceId"    # I
    .param p11, "fallbackDrawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p12, "fallbackResourceId"    # I
    .param p14, "requestCoordinator"    # Lccsancom/bumptech/glide/request/RequestCoordinator;
    .param p15, "engine"    # Lccsancom/bumptech/glide/load/engine/Engine;
    .param p18, "isMemoryCacheable"    # Z
    .param p20, "overrideWidth"    # I
    .param p21, "overrideHeight"    # I
    .param p22, "diskCacheStrategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;TA;",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/Priority;",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TR;>;F",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "I",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "I",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "I",
            "Lccsancom/bumptech/glide/request/RequestListener<",
            "-TA;TR;>;",
            "Lccsancom/bumptech/glide/request/RequestCoordinator;",
            "Lccsancom/bumptech/glide/load/engine/Engine;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;II",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lccsancom/bumptech/glide/request/GenericRequest<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 117
    .local p0, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    .local p5, "target":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<TR;>;"
    .local p13, "requestListener":Lccsancom/bumptech/glide/request/RequestListener;, "Lccsancom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p16, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TZ;>;"
    .local p17, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p19, "animationFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/request/GenericRequest;

    .line 118
    .local v0, "request":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    if-nez v0, :cond_0

    .line 119
    new-instance v1, Lccsancom/bumptech/glide/request/GenericRequest;

    invoke-direct {v1}, Lccsancom/bumptech/glide/request/GenericRequest;-><init>()V

    move-object v0, v1

    .line 121
    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    invoke-direct/range {v1 .. v24}, Lccsancom/bumptech/glide/request/GenericRequest;->init(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lccsancom/bumptech/glide/load/Key;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/request/target/Target;FLccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/drawable/Drawable;ILccsancom/bumptech/glide/request/RequestListener;Lccsancom/bumptech/glide/request/RequestCoordinator;Lccsancom/bumptech/glide/load/engine/Engine;Lccsancom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLccsancom/bumptech/glide/request/animation/GlideAnimationFactory;IILccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 144
    return-object v0
.end method

.method private onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;TR;)V"
        }
    .end annotation

    .line 518
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v6

    .line 519
    .local v6, "isFirstResource":Z
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 520
    iput-object p1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    .line 522
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestListener:Lccsancom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    iget-boolean v4, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    move-object v1, p2

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lccsancom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    iget-boolean v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-interface {v0, v1, v6}, Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 525
    .local v0, "animation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p2, v0}, Lccsancom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 528
    .end local v0    # "animation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->notifyLoadSuccess()V

    .line 530
    const/4 v0, 0x2

    const-string v1, "GenericRequest"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3eb0000000000000L    # 9.5367431640625E-7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 534
    :cond_2
    return-void
.end method

.method private releaseResource(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .param p1, "resource"    # Lccsancom/bumptech/glide/load/engine/Resource;

    .line 341
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/Engine;->release(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    .line 343
    return-void
.end method

.method private setErrorPlaceholder(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 393
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->getFallbackDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 398
    .local v0, "error":Lccsanandroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_2

    .line 399
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->getErrorDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    :cond_2
    if-nez v0, :cond_3

    .line 402
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 404
    :cond_3
    iget-object v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p1, v0}, Lccsancom/bumptech/glide/request/target/Target;->onLoadFailed(Ljava/lang/Exception;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 405
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 262
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->startTime:J

    .line 263
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 265
    return-void

    .line 268
    :cond_0
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 269
    iget v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-static {v0, v1}, Lccsancom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-virtual {p0, v0, v1}, Lccsancom/bumptech/glide/request/GenericRequest;->onSizeReady(II)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/target/Target;->getSize(Lccsancom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->isFailed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/request/target/Target;->onLoadStarted(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_2
    const/4 v0, 0x2

    const-string v1, "GenericRequest"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 281
    :cond_3
    return-void
.end method

.method cancel()V
    .locals 1

    .line 294
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 295
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadStatus:Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadStatus:Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 299
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 313
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 314
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->cancel()V

    .line 319
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->releaseResource(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/request/target/Target;->onLoadCleared(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 327
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .line 374
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 358
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 382
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 331
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResourceSet()Z
    .locals 1

    .line 366
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 350
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 541
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    const-string v1, "load failed"

    invoke-static {v0, v1, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :cond_0
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 547
    iget-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestListener:Lccsancom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lccsancom/bumptech/glide/request/RequestListener;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lccsancom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/GenericRequest;->setErrorPlaceholder(Ljava/lang/Exception;)V

    .line 550
    :cond_2
    return-void
.end method

.method public onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 481
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 484
    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "received":Ljava/lang/Object;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->canSetResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/GenericRequest;->releaseResource(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 503
    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 504
    return-void

    .line 507
    :cond_2
    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V

    .line 508
    return-void

    .line 489
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/GenericRequest;->releaseResource(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 490
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside Resource{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lccsancom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 497
    return-void
.end method

.method public onSizeReady(II)V
    .locals 21
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 426
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object/from16 v12, p0

    const-string v13, "GenericRequest"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lccsancom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lccsancom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_1

    .line 430
    return-void

    .line 432
    :cond_1
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 434
    iget v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move/from16 v1, p1

    int-to-float v2, v1

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 435
    .end local p1    # "width":I
    .local v15, "width":I
    iget v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move/from16 v1, p2

    int-to-float v2, v1

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 437
    .end local p2    # "height":I
    .local v11, "height":I
    iget-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->loadProvider:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v10

    .line 438
    .local v10, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    iget-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-interface {v10, v0, v15, v11}, Lccsancom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v16

    .line 440
    .local v16, "dataFetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<TT;>;"
    if-nez v16, :cond_2

    .line 441
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 442
    return-void

    .line 444
    :cond_2
    iget-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->loadProvider:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v17

    .line 445
    .local v17, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    invoke-static {v13, v14}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lccsancom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 448
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v12, Lccsancom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 449
    iget-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    iget-object v1, v12, Lccsancom/bumptech/glide/request/GenericRequest;->signature:Lccsancom/bumptech/glide/load/Key;

    iget-object v5, v12, Lccsancom/bumptech/glide/request/GenericRequest;->loadProvider:Lccsancom/bumptech/glide/provider/LoadProvider;

    iget-object v6, v12, Lccsancom/bumptech/glide/request/GenericRequest;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    iget-object v8, v12, Lccsancom/bumptech/glide/request/GenericRequest;->priority:Lccsancom/bumptech/glide/Priority;

    iget-boolean v7, v12, Lccsancom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    iget-object v4, v12, Lccsancom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    move v2, v15

    move v3, v11

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move/from16 v19, v7

    move-object/from16 v7, v17

    const/16 v20, 0x1

    move/from16 v9, v19

    move-object/from16 v19, v10

    .end local v10    # "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local v19, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    move-object/from16 v10, v18

    move/from16 v18, v11

    .end local v11    # "height":I
    .local v18, "height":I
    move-object/from16 v11, p0

    invoke-virtual/range {v0 .. v11}, Lccsancom/bumptech/glide/load/engine/Engine;->load(Lccsancom/bumptech/glide/load/Key;IILccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/Priority;ZLccsancom/bumptech/glide/load/engine/DiskCacheStrategy;Lccsancom/bumptech/glide/request/ResourceCallback;)Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    iput-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->loadStatus:Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 451
    iget-object v0, v12, Lccsancom/bumptech/glide/request/GenericRequest;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, v12, Lccsancom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 452
    invoke-static {v13, v14}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lccsancom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lccsancom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 455
    :cond_5
    return-void
.end method

.method public pause()V
    .locals 1

    .line 336
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/GenericRequest;->clear()V

    .line 337
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->status:Lccsancom/bumptech/glide/request/GenericRequest$Status;

    .line 338
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 153
    .local p0, "this":Lccsancom/bumptech/glide/request/GenericRequest;, "Lccsancom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadProvider:Lccsancom/bumptech/glide/provider/LoadProvider;

    .line 154
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 155
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->context:Lccsanandroid/content/Context;

    .line 156
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->target:Lccsancom/bumptech/glide/request/target/Target;

    .line 157
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 158
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->errorDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 159
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 160
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestListener:Lccsancom/bumptech/glide/request/RequestListener;

    .line 161
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    .line 162
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 163
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->animationFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 165
    iput-object v0, p0, Lccsancom/bumptech/glide/request/GenericRequest;->loadStatus:Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 166
    sget-object v0, Lccsancom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
