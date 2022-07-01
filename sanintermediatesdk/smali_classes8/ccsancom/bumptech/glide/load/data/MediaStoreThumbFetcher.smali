.class public Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;,
        Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;,
        Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;,
        Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;,
        Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;,
        Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private static final MINI_HEIGHT:I = 0x180

.field private static final MINI_WIDTH:I = 0x200

.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final defaultFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private final height:I

.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreUri:Lccsanandroid/net/Uri;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/bumptech/glide/load/data/DataFetcher;II)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "mediaStoreUri"    # Lccsanandroid/net/Uri;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/net/Uri;",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    .line 42
    .local p3, "defaultFetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    sget-object v6, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;-><init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/bumptech/glide/load/data/DataFetcher;IILccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/bumptech/glide/load/data/DataFetcher;IILccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "mediaStoreUri"    # Lccsanandroid/net/Uri;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "factory"    # Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/net/Uri;",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;",
            ")V"
        }
    .end annotation

    .line 46
    .local p3, "defaultFetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Lccsanandroid/content/Context;

    .line 48
    iput-object p2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Lccsanandroid/net/Uri;

    .line 49
    iput-object p3, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    .line 50
    iput p4, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    .line 51
    iput p5, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    .line 52
    iput-object p6, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lccsanandroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lccsanandroid/net/Uri;

    .line 26
    invoke-static {p0}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lccsanandroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lccsanandroid/net/Uri;

    .line 26
    invoke-static {p0}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreVideo(Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static isMediaStoreUri(Lccsanandroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Lccsanandroid/net/Uri;

    .line 114
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMediaStoreVideo(Lccsanandroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Lccsanandroid/net/Uri;

    .line 120
    invoke-static {p0}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Lccsanandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openThumbInputStream(Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;
    .locals 4
    .param p1, "fetcher"    # Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Lccsanandroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->open(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x3

    const-string v3, "MediaStoreThumbFetcher"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v2, "Failed to find thumbnail file"

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 81
    .local v1, "orientation":I
    if-eqz v0, :cond_1

    .line 82
    iget-object v2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Lccsanandroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->getOrientation(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)I

    move-result v1

    .line 85
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 86
    new-instance v2, Lccsancom/bumptech/glide/load/data/ExifOrientationStream;

    invoke-direct {v2, v0, v1}, Lccsancom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v2

    .line 88
    :cond_2
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 111
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 93
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 101
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Lccsanandroid/net/Uri;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lccsancom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 4
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Lccsanandroid/net/Uri;

    iget v2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    iget v3, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;->build(Lccsanandroid/net/Uri;II)Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    move-result-object v0

    .line 59
    .local v0, "fetcher":Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->openThumbInputStream(Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 63
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1, p1}, Lccsancom/bumptech/glide/load/data/DataFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 67
    :cond_1
    iget-object v1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public bridge synthetic loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
