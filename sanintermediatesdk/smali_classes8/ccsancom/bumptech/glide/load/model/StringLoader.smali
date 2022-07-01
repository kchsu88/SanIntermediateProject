.class public Lccsancom/bumptech/glide/load/model/StringLoader;
.super Ljava/lang/Object;
.source "StringLoader.java"

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
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lccsancom/bumptech/glide/load/model/StringLoader;, "Lccsancom/bumptech/glide/load/model/StringLoader<TT;>;"
    .local p1, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/StringLoader;->uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 21
    return-void
.end method

.method private static toFileUri(Ljava/lang/String;)Lccsanandroid/net/Uri;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lccsanandroid/net/Uri;->fromFile(Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 16
    .local p0, "this":Lccsancom/bumptech/glide/load/model/StringLoader;, "Lccsancom/bumptech/glide/load/model/StringLoader<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/StringLoader;->getResourceFetcher(Ljava/lang/String;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method

.method public getResourceFetcher(Ljava/lang/String;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 2
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lccsancom/bumptech/glide/load/model/StringLoader;, "Lccsancom/bumptech/glide/load/model/StringLoader<TT;>;"
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-static {p1}, Lccsancom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Lccsanandroid/net/Uri;
    goto :goto_0

    .line 31
    .end local v0    # "uri":Lccsanandroid/net/Uri;
    :cond_1
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 32
    .restart local v0    # "uri":Lccsanandroid/net/Uri;
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 34
    invoke-static {p1}, Lccsancom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 38
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/StringLoader;->uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v1, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    return-object v1
.end method
