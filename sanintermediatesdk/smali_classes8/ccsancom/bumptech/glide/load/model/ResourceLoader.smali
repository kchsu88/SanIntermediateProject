.class public Lccsancom/bumptech/glide/load/model/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

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
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceLoader"


# instance fields
.field private final resources:Lccsanandroid/content/res/Resources;

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
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lccsancom/bumptech/glide/load/model/ResourceLoader;, "Lccsancom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    .local p2, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;TT;>;"
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/bumptech/glide/load/model/ResourceLoader;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/res/Resources;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lccsancom/bumptech/glide/load/model/ResourceLoader;, "Lccsancom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    .local p2, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/ResourceLoader;->resources:Lccsanandroid/content/res/Resources;

    .line 29
    iput-object p2, p0, Lccsancom/bumptech/glide/load/model/ResourceLoader;->uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 30
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Integer;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 5
    .param p1, "model"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/load/model/ResourceLoader;, "Lccsancom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "uri":Lccsanandroid/net/Uri;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/model/ResourceLoader;->resources:Lccsanandroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/model/ResourceLoader;->resources:Lccsanandroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lccsanandroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/model/ResourceLoader;->resources:Lccsanandroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 44
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lccsanandroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x5

    const-string v3, "ResourceLoader"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received invalid resource id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v1    # "e":Lccsanandroid/content/res/Resources$NotFoundException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/ResourceLoader;->uriLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v1, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    return-object v1

    .line 49
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 17
    .local p0, "this":Lccsancom/bumptech/glide/load/model/ResourceLoader;, "Lccsancom/bumptech/glide/load/model/ResourceLoader<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/ResourceLoader;->getResourceFetcher(Ljava/lang/Integer;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
