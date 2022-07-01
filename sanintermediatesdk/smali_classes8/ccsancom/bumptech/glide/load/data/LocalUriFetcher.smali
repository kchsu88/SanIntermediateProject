.class public abstract Lccsancom/bumptech/glide/load/data/LocalUriFetcher;
.super Ljava/lang/Object;
.source "LocalUriFetcher.java"

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
.field private static final TAG:Ljava/lang/String; = "LocalUriFetcher"


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;

    .line 36
    .local p0, "this":Lccsancom/bumptech/glide/load/data/LocalUriFetcher;, "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->context:Lccsanandroid/content/Context;

    .line 38
    iput-object p2, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->uri:Lccsanandroid/net/Uri;

    .line 39
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 65
    .local p0, "this":Lccsancom/bumptech/glide/load/data/LocalUriFetcher;, "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    return-void
.end method

.method public cleanup()V
    .locals 3

    .line 50
    .local p0, "this":Lccsancom/bumptech/glide/load/data/LocalUriFetcher;, "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    const-string v2, "LocalUriFetcher"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "failed to close data"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
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

    .line 69
    .local p0, "this":Lccsancom/bumptech/glide/load/data/LocalUriFetcher;, "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;
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

    .line 43
    .local p0, "this":Lccsancom/bumptech/glide/load/data/LocalUriFetcher;, "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    .line 44
    .local v0, "contentResolver":Lccsanandroid/content/ContentResolver;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    .line 45
    return-object v1
.end method

.method protected abstract loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "Lccsanandroid/content/ContentResolver;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
