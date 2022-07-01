.class public Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader;
.super Lccsancom/bumptech/glide/load/model/UriLoader;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/UriLoader<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;",
        "Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<",
        "Lccsanandroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 39
    const-class v0, Lccsancom/bumptech/glide/load/model/GlideUrl;

    invoke-static {v0, p1}, Lccsancom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "urlLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsancom/bumptech/glide/load/model/GlideUrl;Lccsanandroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/model/UriLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getAssetPathFetcher(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lccsancom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lccsancom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;-><init>(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLocalUriFetcher(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/net/Uri;",
            ")",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lccsancom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;-><init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    return-object v0
.end method
