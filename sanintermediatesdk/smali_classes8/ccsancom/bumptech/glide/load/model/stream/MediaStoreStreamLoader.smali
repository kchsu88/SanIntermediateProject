.class public Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;
.super Ljava/lang/Object;
.source "MediaStoreStreamLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "Lccsanandroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
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
            "Lccsanandroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->context:Lccsanandroid/content/Context;

    .line 26
    iput-object p2, p0, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lccsanandroid/net/Uri;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 7
    .param p1, "model"    # Lccsanandroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "II)",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v6, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->context:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v3

    move-object v0, v6

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;-><init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/bumptech/glide/load/data/DataFetcher;II)V

    return-object v6
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 20
    move-object v0, p1

    check-cast v0, Lccsanandroid/net/Uri;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;->getResourceFetcher(Lccsanandroid/net/Uri;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
