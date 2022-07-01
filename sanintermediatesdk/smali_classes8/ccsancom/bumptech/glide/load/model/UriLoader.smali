.class public abstract Lccsancom/bumptech/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/model/ModelLoader<",
        "Lccsanandroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final urlLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lccsancom/bumptech/glide/load/model/UriLoader;, "Lccsancom/bumptech/glide/load/model/UriLoader<TT;>;"
    .local p2, "urlLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsancom/bumptech/glide/load/model/GlideUrl;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/UriLoader;->context:Lccsanandroid/content/Context;

    .line 22
    iput-object p2, p0, Lccsancom/bumptech/glide/load/model/UriLoader;->urlLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 23
    return-void
.end method

.method private static isLocalUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .line 49
    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method protected abstract getAssetPathFetcher(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getLocalUriFetcher(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/net/Uri;",
            ")",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final getResourceFetcher(Lccsanandroid/net/Uri;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 5
    .param p1, "model"    # Lccsanandroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "II)",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lccsancom/bumptech/glide/load/model/UriLoader;, "Lccsancom/bumptech/glide/load/model/UriLoader<TT;>;"
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "result":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<TT;>;"
    invoke-static {v0}, Lccsancom/bumptech/glide/load/model/UriLoader;->isLocalUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-static {p1}, Lccsancom/bumptech/glide/load/model/AssetUriParser;->isAssetUri(Lccsanandroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-static {p1}, Lccsancom/bumptech/glide/load/model/AssetUriParser;->toAssetPath(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lccsancom/bumptech/glide/load/model/UriLoader;->context:Lccsanandroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lccsancom/bumptech/glide/load/model/UriLoader;->getAssetPathFetcher(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    .line 34
    .end local v2    # "path":Ljava/lang/String;
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/model/UriLoader;->context:Lccsanandroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lccsancom/bumptech/glide/load/model/UriLoader;->getLocalUriFetcher(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lccsancom/bumptech/glide/load/model/UriLoader;->urlLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    if-eqz v2, :cond_3

    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    :cond_2
    iget-object v2, p0, Lccsancom/bumptech/glide/load/model/UriLoader;->urlLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    new-instance v3, Lccsancom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsancom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, p2, p3}, Lccsancom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    .line 41
    :cond_3
    :goto_0
    return-object v1
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 16
    .local p0, "this":Lccsancom/bumptech/glide/load/model/UriLoader;, "Lccsancom/bumptech/glide/load/model/UriLoader<TT;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/net/Uri;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/UriLoader;->getResourceFetcher(Lccsanandroid/net/Uri;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
