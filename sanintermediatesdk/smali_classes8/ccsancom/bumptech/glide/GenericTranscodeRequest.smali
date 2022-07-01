.class public Lccsancom/bumptech/glide/GenericTranscodeRequest;
.super Lccsancom/bumptech/glide/GenericRequestBuilder;
.source "GenericTranscodeRequest.java"

# interfaces
.implements Lccsancom/bumptech/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/GenericRequestBuilder<",
        "TModelType;TDataType;TResourceType;TResourceType;>;",
        "Lccsancom/bumptech/glide/DownloadOptions;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

.field private final resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 13
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "glide"    # Lccsancom/bumptech/glide/Glide;
    .param p7, "requestTracker"    # Lccsancom/bumptech/glide/manager/RequestTracker;
    .param p8, "lifecycle"    # Lccsancom/bumptech/glide/manager/Lifecycle;
    .param p9, "optionsApplier"    # Lccsancom/bumptech/glide/RequestManager$OptionsApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/Glide;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lccsancom/bumptech/glide/manager/RequestTracker;",
            "Lccsancom/bumptech/glide/manager/Lifecycle;",
            "Lccsancom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    .local p3, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p4, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;"
    .local p5, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    .local p6, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    move-object v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static {}, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    move-object v12, p2

    invoke-static {p2, v9, v10, v11, v0}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->build(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/LoadProvider;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p6

    move-object v5, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;)V

    .line 62
    iput-object v9, v8, Lccsancom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 63
    iput-object v10, v8, Lccsancom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 64
    iput-object v11, v8, Lccsancom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, v8, Lccsancom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 2
    .param p6, "optionsApplier"    # Lccsancom/bumptech/glide/RequestManager$OptionsApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lccsancom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    .local p1, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    .local p2, "other":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    .local p3, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;"
    .local p4, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    .local p5, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    iget-object v0, p2, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-static {}, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->build(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/LoadProvider;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    .line 51
    iput-object p3, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 52
    iput-object p4, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 53
    iput-object p5, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    .line 54
    iput-object p6, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    .line 55
    return-void
.end method

.method private static build(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/LoadProvider;
    .locals 2
    .param p0, "glide"    # Lccsancom/bumptech/glide/Glide;
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
            "Lccsancom/bumptech/glide/Glide;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 41
    .local p1, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p4, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    invoke-virtual {p0, p2, p3}, Lccsancom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    .line 42
    .local v0, "dataLoadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    new-instance v1, Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v1, p1, p4, v0}, Lccsancom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    return-object v1
.end method

.method private getDownloadOnlyRequest()Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    .line 101
    .local v0, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Ljava/io/File;Ljava/io/File;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v2, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lccsancom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v1

    .line 102
    .local v1, "dataLoadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TDataType;Ljava/io/File;>;"
    new-instance v2, Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    iget-object v3, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {v2, v3, v0, v1}, Lccsancom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 104
    .local v2, "fixedLoadProvider":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TModelType;TDataType;Ljava/io/File;Ljava/io/File;>;"
    iget-object v3, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v4, Lccsancom/bumptech/glide/GenericRequestBuilder;

    const-class v5, Ljava/io/File;

    invoke-direct {v4, v2, v5, p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    sget-object v4, Lccsancom/bumptech/glide/Priority;->LOW:Lccsancom/bumptech/glide/Priority;

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/GenericRequestBuilder;->priority(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    sget-object v4, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public downloadOnly(II)Lccsancom/bumptech/glide/request/FutureTarget;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->getDownloadOnlyRequest()Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(II)Lccsancom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    .local p1, "target":Lccsancom/bumptech/glide/request/target/Target;, "TY;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->getDownloadOnlyRequest()Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TResourceType;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    iget-object v2, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    iget-object v3, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3, p1}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->build(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/LoadProvider;

    move-result-object v0

    .line 81
    .local v0, "loadProvider":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v2, Lccsancom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {v2, v0, p2, p0}, Lccsancom/bumptech/glide/GenericRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v1, v2}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    return-object v1
.end method
