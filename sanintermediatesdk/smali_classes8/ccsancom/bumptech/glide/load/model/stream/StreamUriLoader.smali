.class public Lccsancom/bumptech/glide/load/model/stream/StreamUriLoader;
.super Lccsancom/bumptech/glide/load/model/UriLoader;
.source "StreamUriLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/UriLoader<",
        "Ljava/io/InputStream;",
        ">;",
        "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "Lccsanandroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 42
    const-class v0, Lccsancom/bumptech/glide/load/model/GlideUrl;

    invoke-static {v0, p1}, Lccsancom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/stream/StreamUriLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 43
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
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "urlLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsancom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/model/UriLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 47
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
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lccsancom/bumptech/glide/load/data/StreamAssetPathFetcher;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lccsancom/bumptech/glide/load/data/StreamAssetPathFetcher;-><init>(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)V

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
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/data/StreamLocalUriFetcher;-><init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    return-object v0
.end method
