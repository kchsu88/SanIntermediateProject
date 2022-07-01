.class public Lccsancom/bumptech/glide/BitmapTypeRequest;
.super Lccsancom/bumptech/glide/BitmapRequestBuilder;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
        "TModelType;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
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

.field private final glide:Lccsancom/bumptech/glide/Glide;

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
.method constructor <init>(Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 3
    .param p4, "optionsApplier"    # Lccsancom/bumptech/glide/RequestManager$OptionsApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;",
            "Lccsancom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lccsancom/bumptech/glide/BitmapTypeRequest;, "Lccsancom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    .local p1, "other":Lccsancom/bumptech/glide/GenericRequestBuilder;, "Lccsancom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    .local p2, "streamModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"
    .local p3, "fileDescriptorModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TModelType;Lccsanandroid/os/ParcelFileDescriptor;>;"
    iget-object v0, p1, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    const-class v1, Lccsanandroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lccsancom/bumptech/glide/BitmapTypeRequest;->buildProvider(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v0

    const-class v1, Lccsanandroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lccsancom/bumptech/glide/BitmapRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    .line 54
    iput-object p2, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 55
    iput-object p3, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->fileDescriptorModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 56
    iget-object v0, p1, Lccsancom/bumptech/glide/GenericRequestBuilder;->glide:Lccsancom/bumptech/glide/Glide;

    iput-object v0, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->glide:Lccsancom/bumptech/glide/Glide;

    .line 57
    iput-object p4, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    .line 58
    return-void
.end method

.method private static buildProvider(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/FixedLoadProvider;
    .locals 3
    .param p0, "glide"    # Lccsancom/bumptech/glide/Glide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
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
            "TR;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsanandroid/graphics/Bitmap;",
            "TR;>;)",
            "Lccsancom/bumptech/glide/provider/FixedLoadProvider<",
            "TA;",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    .line 33
    .local p1, "streamModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;"
    .local p2, "fileDescriptorModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;Lccsanandroid/os/ParcelFileDescriptor;>;"
    .local p3, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p4, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lccsanandroid/graphics/Bitmap;TR;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class v0, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3}, Lccsancom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p4

    .line 40
    :cond_1
    const-class v0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v1, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lccsancom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    .line 42
    .local v0, "loadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsanandroid/graphics/Bitmap;>;"
    new-instance v1, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;

    invoke-direct {v1, p1, p2}, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 45
    .local v1, "modelLoader":Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;, "Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader<TA;>;"
    new-instance v2, Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v2, v1, p4, v0}, Lccsancom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    return-object v2
.end method


# virtual methods
.method public toBytes()Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;[B>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lccsancom/bumptech/glide/BitmapTypeRequest;, "Lccsancom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lccsancom/bumptech/glide/BitmapTypeRequest;->transcode(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toBytes(Lccsanandroid/graphics/Bitmap$CompressFormat;I)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .param p1, "compressFormat"    # Lccsanandroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/Bitmap$CompressFormat;",
            "I)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;[B>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/bumptech/glide/BitmapTypeRequest;, "Lccsancom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    new-instance v0, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>(Lccsanandroid/graphics/Bitmap$CompressFormat;I)V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lccsancom/bumptech/glide/BitmapTypeRequest;->transcode(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lccsancom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lccsancom/bumptech/glide/BitmapRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsanandroid/graphics/Bitmap;",
            "TR;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lccsancom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TR;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lccsancom/bumptech/glide/BitmapTypeRequest;, "Lccsancom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lccsanandroid/graphics/Bitmap;TR;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lccsancom/bumptech/glide/BitmapRequestBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v3, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->streamModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    iget-object v4, p0, Lccsancom/bumptech/glide/BitmapTypeRequest;->fileDescriptorModelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-static {v2, v3, v4, p2, p1}, Lccsancom/bumptech/glide/BitmapTypeRequest;->buildProvider(Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lccsancom/bumptech/glide/provider/FixedLoadProvider;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0}, Lccsancom/bumptech/glide/BitmapRequestBuilder;-><init>(Lccsancom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/BitmapRequestBuilder;

    return-object v0
.end method
