.class public Lccsancom/bumptech/glide/DrawableTypeRequest;
.super Lccsancom/bumptech/glide/DrawableRequestBuilder;
.source "DrawableTypeRequest.java"

# interfaces
.implements Lccsancom/bumptech/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/DrawableRequestBuilder<",
        "TModelType;>;",
        "Lccsancom/bumptech/glide/DownloadOptions;"
    }
.end annotation


# instance fields
.field private final fileDescriptorModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

.field private final streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 8
    .param p4, "context"    # Lccsanandroid/content/Context;
    .param p5, "glide"    # Lccsancom/bumptech/glide/Glide;
    .param p6, "requestTracker"    # Lccsancom/bumptech/glide/manager/RequestTracker;
    .param p7, "lifecycle"    # Lccsancom/bumptech/glide/manager/Lifecycle;
    .param p8, "optionsApplier"    # Lccsancom/bumptech/glide/RequestManager$OptionsApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/Glide;",
            "Lccsancom/bumptech/glide/manager/RequestTracker;",
            "Lccsancom/bumptech/glide/manager/Lifecycle;",
            "Lccsancom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lccsancom/bumptech/glide/DrawableTypeRequest;, "Lccsancom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p2, "streamModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"
    .local p3, "fileDescriptorModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TModelType;Lccsanandroid/os/ParcelFileDescriptor;>;"
    move-object v7, p0

    const-class v3, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v4, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lccsancom/bumptech/glide/DrawableTypeRequest;->buildProvider(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lccsancom/bumptech/glide/DrawableRequestBuilder;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/LoadProvider;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;)V

    .line 61
    move-object v0, p2

    iput-object v0, v7, Lccsancom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 62
    move-object v1, p3

    iput-object v1, v7, Lccsancom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 63
    move-object/from16 v2, p8

    iput-object v2, v7, Lccsancom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    .line 64
    return-void
.end method

.method private static buildProvider(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/FixedLoadProvider;
    .locals 3
    .param p0, "glide"    # Lccsancom/bumptech/glide/Glide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/Glide;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)",
            "Lccsancom/bumptech/glide/provider/FixedLoadProvider<",
            "TA;",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "TZ;TR;>;"
        }
    .end annotation

    .line 40
    .local p1, "streamModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    .local p2, "fileDescriptorModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;Lccsanandroid/os/ParcelFileDescriptor;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p4, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p5, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    if-nez p5, :cond_1

    .line 45
    invoke-virtual {p0, p3, p4}, Lccsancom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p5

    .line 47
    :cond_1
    const-class v0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, v0, p3}, Lccsancom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    .line 49
    .local v0, "dataLoadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;TZ;>;"
    new-instance v1, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;

    invoke-direct {v1, p1, p2}, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 51
    .local v1, "modelLoader":Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    new-instance v2, Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v2, v1, p5, v0}, Lccsancom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    return-object v2
.end method

.method private getDownloadOnlyRequest()Lccsancom/bumptech/glide/GenericTranscodeRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GenericTranscodeRequest<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lccsancom/bumptech/glide/DrawableTypeRequest;, "Lccsancom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    iget-object v7, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v8, Lccsancom/bumptech/glide/GenericTranscodeRequest;

    const-class v1, Ljava/io/File;

    iget-object v3, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    const-class v4, Ljava/io/InputStream;

    const-class v5, Ljava/io/File;

    move-object v0, v8

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lccsancom/bumptech/glide/GenericTranscodeRequest;-><init>(Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v7, v8}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/GenericTranscodeRequest;

    return-object v0
.end method


# virtual methods
.method public asBitmap()Lccsancom/bumptech/glide/BitmapTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapTypeRequest<",
            "TModelType;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lccsancom/bumptech/glide/DrawableTypeRequest;, "Lccsancom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lccsancom/bumptech/glide/BitmapTypeRequest;

    iget-object v2, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    iget-object v3, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {v1, p0, v2, v3, v0}, Lccsancom/bumptech/glide/BitmapTypeRequest;-><init>(Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/BitmapTypeRequest;

    return-object v0
.end method

.method public asGif()Lccsancom/bumptech/glide/GifTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/GifTypeRequest<",
            "TModelType;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/bumptech/glide/DrawableTypeRequest;, "Lccsancom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lccsancom/bumptech/glide/GifTypeRequest;

    iget-object v2, p0, Lccsancom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {v1, p0, v2, v0}, Lccsancom/bumptech/glide/GifTypeRequest;-><init>(Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/GifTypeRequest;

    return-object v0
.end method

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

    .line 103
    .local p0, "this":Lccsancom/bumptech/glide/DrawableTypeRequest;, "Lccsancom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/DrawableTypeRequest;->getDownloadOnlyRequest()Lccsancom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(II)Lccsancom/bumptech/glide/request/FutureTarget;

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

    .line 96
    .local p0, "this":Lccsancom/bumptech/glide/DrawableTypeRequest;, "Lccsancom/bumptech/glide/DrawableTypeRequest<TModelType;>;"
    .local p1, "target":Lccsancom/bumptech/glide/request/target/Target;, "TY;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/DrawableTypeRequest;->getDownloadOnlyRequest()Lccsancom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method
