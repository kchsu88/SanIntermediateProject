.class public Lccsancom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/Glide$ClearTarget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lccsancom/bumptech/glide/Glide;

.field private static modulesEnabled:Z


# instance fields
.field private final bitmapCenterCrop:Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

.field private final bitmapFitCenter:Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;

.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final dataLoadProviderRegistry:Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;

.field private final decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

.field private final drawableCenterCrop:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final drawableFitCenter:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final engine:Lccsancom/bumptech/glide/load/engine/Engine;

.field private final imageViewTargetFactory:Lccsancom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final loaderFactory:Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

.field private final mainHandler:Lccsanandroid/os/Handler;

.field private final memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final transcoderRegistry:Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/bumptech/glide/Glide;->modulesEnabled:Z

    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/engine/Engine;Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 10
    .param p1, "engine"    # Lccsancom/bumptech/glide/load/engine/Engine;
    .param p2, "memoryCache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p3, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "context"    # Lccsanandroid/content/Context;
    .param p5, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lccsancom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/Glide;->imageViewTargetFactory:Lccsancom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 95
    new-instance v0, Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/Glide;->transcoderRegistry:Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 232
    iput-object p1, p0, Lccsancom/bumptech/glide/Glide;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    .line 233
    iput-object p3, p0, Lccsancom/bumptech/glide/Glide;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 234
    iput-object p2, p0, Lccsancom/bumptech/glide/Glide;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 235
    iput-object p5, p0, Lccsancom/bumptech/glide/Glide;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 236
    new-instance v1, Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-direct {v1, p4}, Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/Glide;->loaderFactory:Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

    .line 237
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/Glide;->mainHandler:Lccsanandroid/os/Handler;

    .line 238
    new-instance v1, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-direct {v1, p2, p3, p5}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/Glide;->bitmapPreFiller:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 240
    new-instance v1, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;

    invoke-direct {v1}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;-><init>()V

    iput-object v1, p0, Lccsancom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;

    .line 242
    new-instance v2, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;

    invoke-direct {v2, p3, p5}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 244
    .local v2, "streamBitmapLoadProvider":Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    const-class v3, Ljava/io/InputStream;

    const-class v4, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4, v2}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 246
    new-instance v3, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;

    invoke-direct {v3, p3, p5}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 248
    .local v3, "fileDescriptorLoadProvider":Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    const-class v4, Lccsanandroid/os/ParcelFileDescriptor;

    const-class v5, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v5, v3}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 250
    new-instance v4, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;

    invoke-direct {v4, v2, v3}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;-><init>(Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 252
    .local v4, "imageVideoDataLoadProvider":Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;
    const-class v5, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v6, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v6, v4}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 254
    new-instance v5, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;

    invoke-direct {v5, p4, p3}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 256
    .local v5, "gifDrawableLoadProvider":Lccsancom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    const-class v6, Ljava/io/InputStream;

    const-class v7, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1, v6, v7, v5}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 258
    const-class v6, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v7, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    new-instance v8, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;

    invoke-direct {v8, v4, v5, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;-><init>(Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {v1, v6, v7, v8}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 261
    const-class v6, Ljava/io/InputStream;

    const-class v7, Ljava/io/File;

    new-instance v8, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;

    invoke-direct {v8}, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;-><init>()V

    invoke-virtual {v1, v6, v7, v8}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V

    .line 263
    const-class v1, Ljava/io/File;

    const-class v6, Lccsanandroid/os/ParcelFileDescriptor;

    new-instance v7, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 264
    const-class v1, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 265
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Lccsanandroid/os/ParcelFileDescriptor;

    new-instance v7, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 266
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 267
    const-class v1, Ljava/lang/Integer;

    const-class v6, Lccsanandroid/os/ParcelFileDescriptor;

    new-instance v7, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 268
    const-class v1, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 269
    const-class v1, Ljava/lang/String;

    const-class v6, Lccsanandroid/os/ParcelFileDescriptor;

    new-instance v7, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 270
    const-class v1, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 271
    const-class v1, Lccsanandroid/net/Uri;

    const-class v6, Lccsanandroid/os/ParcelFileDescriptor;

    new-instance v7, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 272
    const-class v1, Lccsanandroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 273
    const-class v1, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 274
    const-class v1, Lccsancom/bumptech/glide/load/model/GlideUrl;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 275
    const-class v1, [B

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;

    invoke-direct {v7}, Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;-><init>()V

    invoke-virtual {p0, v1, v6, v7}, Lccsancom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 277
    const-class v1, Lccsanandroid/graphics/Bitmap;

    const-class v6, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    new-instance v7, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, p3}, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {v0, v1, v6, v7}, Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 279
    const-class v1, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v6, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    new-instance v7, Lccsancom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;

    new-instance v8, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, p3}, Lccsancom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v7, v8}, Lccsancom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;-><init>(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    invoke-virtual {v0, v1, v6, v7}, Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 283
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapCenterCrop:Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 284
    new-instance v1, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    invoke-direct {v1, p3, v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/Transformation;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/Glide;->drawableCenterCrop:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 286
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v0, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapFitCenter:Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;

    .line 287
    new-instance v1, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    invoke-direct {v1, p3, v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/Transformation;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/Glide;->drawableFitCenter:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 288
    return-void
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 616
    .local p0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lccsanandroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lccsancom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Object;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 626
    .local p0, "model":Ljava/lang/Object;, "TT;"
    const-class v0, Lccsanandroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lccsancom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .param p2, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    .line 561
    .local p0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    if-nez p0, :cond_1

    .line 562
    const/4 v0, 0x3

    const-string v1, "Glide"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "Unable to load null model, setting placeholder only"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 567
    :cond_1
    invoke-static {p2}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-direct {v0}, Lccsancom/bumptech/glide/Glide;->getLoaderFactory()Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p2, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    .line 585
    .local p0, "model":Ljava/lang/Object;, "TT;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lccsancom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static buildStreamModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 595
    .local p0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lccsancom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static buildStreamModelLoader(Ljava/lang/Object;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 605
    .local p0, "model":Ljava/lang/Object;, "TT;"
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lccsancom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public static clear(Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 487
    new-instance v0, Lccsancom/bumptech/glide/Glide$ClearTarget;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/Glide$ClearTarget;-><init>(Lccsanandroid/view/View;)V

    .line 488
    .local v0, "viewTarget":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<*>;"
    invoke-static {v0}, Lccsancom/bumptech/glide/Glide;->clear(Lccsancom/bumptech/glide/request/target/Target;)V

    .line 489
    return-void
.end method

.method public static clear(Lccsancom/bumptech/glide/request/FutureTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/FutureTarget<",
            "*>;)V"
        }
    .end annotation

    .line 470
    .local p0, "target":Lccsancom/bumptech/glide/request/FutureTarget;, "Lccsancom/bumptech/glide/request/FutureTarget<*>;"
    invoke-interface {p0}, Lccsancom/bumptech/glide/request/FutureTarget;->clear()V

    .line 471
    return-void
.end method

.method public static clear(Lccsancom/bumptech/glide/request/target/Target;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    .line 455
    .local p0, "target":Lccsancom/bumptech/glide/request/target/Target;, "Lccsancom/bumptech/glide/request/target/Target<*>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 456
    invoke-interface {p0}, Lccsancom/bumptech/glide/request/target/Target;->getRequest()Lccsancom/bumptech/glide/request/Request;

    move-result-object v0

    .line 457
    .local v0, "request":Lccsancom/bumptech/glide/request/Request;
    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->clear()V

    .line 459
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lccsancom/bumptech/glide/request/target/Target;->setRequest(Lccsancom/bumptech/glide/request/Request;)V

    .line 461
    :cond_0
    return-void
.end method

.method public static get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 161
    sget-object v0, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    if-nez v0, :cond_2

    .line 162
    const-class v0, Lccsancom/bumptech/glide/Glide;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 165
    .local v1, "applicationContext":Lccsanandroid/content/Context;
    new-instance v2, Lccsancom/bumptech/glide/GlideBuilder;

    invoke-direct {v2, v1}, Lccsancom/bumptech/glide/GlideBuilder;-><init>(Lccsanandroid/content/Context;)V

    .line 166
    .local v2, "builder":Lccsancom/bumptech/glide/GlideBuilder;
    invoke-static {v1}, Lccsancom/bumptech/glide/Glide;->parseGlideModules(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "modules":Ljava/util/List;, "Ljava/util/List<Lccsancom/bumptech/glide/module/GlideModule;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/bumptech/glide/module/GlideModule;

    .line 168
    .local v5, "module":Lccsancom/bumptech/glide/module/GlideModule;
    invoke-interface {v5, v1, v2}, Lccsancom/bumptech/glide/module/GlideModule;->applyOptions(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/GlideBuilder;)V

    .line 169
    .end local v5    # "module":Lccsancom/bumptech/glide/module/GlideModule;
    goto :goto_0

    .line 170
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Lccsancom/bumptech/glide/GlideBuilder;->createGlide()Lccsancom/bumptech/glide/Glide;

    move-result-object v4

    sput-object v4, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    .line 171
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/bumptech/glide/module/GlideModule;

    .line 172
    .restart local v5    # "module":Lccsancom/bumptech/glide/module/GlideModule;
    sget-object v6, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-interface {v5, v1, v6}, Lccsancom/bumptech/glide/module/GlideModule;->registerComponents(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;)V

    .line 173
    .end local v5    # "module":Lccsancom/bumptech/glide/module/GlideModule;
    goto :goto_1

    .line 175
    .end local v1    # "applicationContext":Lccsanandroid/content/Context;
    .end local v2    # "builder":Lccsancom/bumptech/glide/GlideBuilder;
    .end local v3    # "modules":Ljava/util/List;, "Ljava/util/List<Lccsancom/bumptech/glide/module/GlideModule;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 178
    :cond_2
    :goto_2
    sget-object v0, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    return-object v0
.end method

.method private getLoaderFactory()Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;
    .locals 1

    .line 357
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->loaderFactory:Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

    return-object v0
.end method

.method public static getPhotoCacheDir(Lccsanandroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 113
    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lccsancom/bumptech/glide/Glide;->getPhotoCacheDir(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoCacheDir(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 128
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v2, "result":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    :cond_0
    return-object v1

    .line 133
    :cond_1
    return-object v2

    .line 135
    .end local v2    # "result":Ljava/io/File;
    :cond_2
    const/4 v2, 0x6

    const-string v3, "Glide"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const-string v2, "default disk cache dir is null"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    return-object v1
.end method

.method public static isSetup()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    sget-object v0, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseGlideModules(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "applicationContext"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/module/GlideModule;",
            ">;"
        }
    .end annotation

    .line 186
    sget-boolean v0, Lccsancom/bumptech/glide/Glide;->modulesEnabled:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lccsancom/bumptech/glide/module/ManifestParser;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/module/ManifestParser;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0}, Lccsancom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setModulesEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .line 146
    const-class v0, Lccsancom/bumptech/glide/Glide;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    if-nez v1, :cond_0

    .line 151
    sput-boolean p0, Lccsancom/bumptech/glide/Glide;->modulesEnabled:Z

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Glide singleton already exists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "enabled":Z
    throw v1

    .line 152
    .restart local p0    # "enabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setup(Lccsancom/bumptech/glide/GlideBuilder;)V
    .locals 2
    .param p0, "builder"    # Lccsancom/bumptech/glide/GlideBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    invoke-static {}, Lccsancom/bumptech/glide/Glide;->isSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lccsancom/bumptech/glide/GlideBuilder;->createGlide()Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    .line 223
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Glide is already setup, check with isSetup() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static tearDown()V
    .locals 1

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lccsancom/bumptech/glide/Glide;->glide:Lccsancom/bumptech/glide/Glide;

    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/bumptech/glide/Glide;->modulesEnabled:Z

    .line 229
    return-void
.end method

.method public static with(Lccsanandroid/app/Activity;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;

    .line 668
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 669
    .local v0, "retriever":Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
    invoke-virtual {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/app/Activity;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public static with(Lccsanandroid/app/Fragment;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p0, "fragment"    # Lccsanandroid/app/Fragment;

    .line 693
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 694
    .local v0, "retriever":Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
    invoke-virtual {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/app/Fragment;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public static with(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 656
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 657
    .local v0, "retriever":Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
    invoke-virtual {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public static with(Lccsanandroidx/fragment/app/Fragment;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p0, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 705
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 706
    .local v0, "retriever":Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
    invoke-virtual {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroidx/fragment/app/Fragment;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public static with(Lccsanandroidx/fragment/app/FragmentActivity;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p0, "activity"    # Lccsanandroidx/fragment/app/FragmentActivity;

    .line 680
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 681
    .local v0, "retriever":Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
    invoke-virtual {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroidx/fragment/app/FragmentActivity;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 321
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    return-object v0
.end method

.method buildImageViewTarget(Lccsanandroid/widget/ImageView;Ljava/lang/Class;)Lccsancom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1, "imageView"    # Lccsanandroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation

    .line 325
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->imageViewTargetFactory:Lccsancom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Lccsanandroid/widget/ImageView;Ljava/lang/Class;)Lccsancom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 317
    .local p1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->transcoderRegistry:Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    return-object v0
.end method

.method public clearDiskCache()V
    .locals 1

    .line 425
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 426
    invoke-virtual {p0}, Lccsancom/bumptech/glide/Glide;->getEngine()Lccsancom/bumptech/glide/load/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/Engine;->clearDiskCache()V

    .line 427
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 398
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 400
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 401
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 402
    return-void
.end method

.method getBitmapCenterCrop()Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;
    .locals 1

    .line 333
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapCenterCrop:Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

    return-object v0
.end method

.method getBitmapFitCenter()Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;
    .locals 1

    .line 337
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapFitCenter:Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;

    return-object v0
.end method

.method public getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    .line 313
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getDecodeFormat()Lccsancom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .line 353
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method getDrawableCenterCrop()Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 1

    .line 341
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->drawableCenterCrop:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-object v0
.end method

.method getDrawableFitCenter()Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 1

    .line 345
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->drawableFitCenter:Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-object v0
.end method

.method getEngine()Lccsancom/bumptech/glide/load/engine/Engine;
    .locals 1

    .line 329
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    return-object v0
.end method

.method getMainHandler()Lccsanandroid/os/Handler;
    .locals 1

    .line 349
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->mainHandler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method public varargs preFillBitmapPool([Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1
    .param p1, "bitmapAttributeBuilders"    # [Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 387
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapPreFiller:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    .line 388
    return-void
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lccsancom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 520
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    .local p3, "factory":Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;, "Lccsancom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->loaderFactory:Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;->register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;)Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    .line 521
    .local v0, "removed":Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;, "Lccsancom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;->teardown()V

    .line 524
    :cond_0
    return-void
.end method

.method public setMemoryCategory(Lccsancom/bumptech/glide/MemoryCategory;)V
    .locals 2
    .param p1, "memoryCategory"    # Lccsancom/bumptech/glide/MemoryCategory;

    .line 442
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 444
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lccsancom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 445
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lccsancom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 446
    return-void
.end method

.method public trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 411
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 413
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 414
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 415
    return-void
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 539
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/Glide;->loaderFactory:Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;->unregister(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v0

    .line 540
    .local v0, "removed":Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;, "Lccsancom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;->teardown()V

    .line 543
    :cond_0
    return-void
.end method
