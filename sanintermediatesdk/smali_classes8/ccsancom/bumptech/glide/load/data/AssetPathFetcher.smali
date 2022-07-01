.class public abstract Lccsancom/bumptech/glide/load/data/AssetPathFetcher;
.super Ljava/lang/Object;
.source "AssetPathFetcher.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/data/DataFetcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetUriFetcher"


# instance fields
.field private final assetManager:Lccsanandroid/content/res/AssetManager;

.field private final assetPath:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "assetManager"    # Lccsanandroid/content/res/AssetManager;
    .param p2, "assetPath"    # Ljava/lang/String;

    .line 21
    .local p0, "this":Lccsancom/bumptech/glide/load/data/AssetPathFetcher;, "Lccsancom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Lccsanandroid/content/res/AssetManager;

    .line 23
    iput-object p2, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 55
    .local p0, "this":Lccsancom/bumptech/glide/load/data/AssetPathFetcher;, "Lccsancom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    return-void
.end method

.method public cleanup()V
    .locals 3

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/load/data/AssetPathFetcher;, "Lccsancom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    const-string v2, "AssetUriFetcher"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "Failed to close data"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/load/data/AssetPathFetcher;, "Lccsancom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 2
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    .local p0, "this":Lccsancom/bumptech/glide/load/data/AssetPathFetcher;, "Lccsancom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Lccsanandroid/content/res/AssetManager;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->loadResource(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    .line 29
    return-object v0
.end method

.method protected abstract loadResource(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
