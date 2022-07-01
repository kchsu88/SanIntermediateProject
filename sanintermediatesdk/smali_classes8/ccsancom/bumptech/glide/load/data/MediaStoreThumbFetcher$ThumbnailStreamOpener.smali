.class Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpener"
.end annotation


# static fields
.field private static final DEFAULT_SERVICE:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# instance fields
.field private query:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

.field private final service:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->DEFAULT_SERVICE:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .locals 0
    .param p1, "service"    # Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    .param p2, "query"    # Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    .line 152
    iput-object p2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->query:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    .line 153
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .locals 1
    .param p1, "query"    # Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    .line 147
    sget-object v0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->DEFAULT_SERVICE:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-direct {p0, v0, p1}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    .line 148
    return-void
.end method

.method private parseThumbUri(Lccsanandroid/database/Cursor;)Lccsanandroid/net/Uri;
    .locals 8
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "result":Lccsanandroid/net/Uri;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v2, v1}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 202
    .local v2, "file":Ljava/io/File;
    iget-object v3, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v3, v2}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v3, v2}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->length(Ljava/io/File;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 203
    invoke-static {v2}, Lccsanandroid/net/Uri;->fromFile(Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 206
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getOrientation(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)I
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;

    .line 156
    const-string v0, "MediaStoreThumbFetcher"

    const/4 v1, -0x1

    .line 157
    .local v1, "orientation":I
    const/4 v2, 0x0

    .line 159
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Lccsanandroid/content/ContentResolver;->openInputStream(Lccsanandroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 160
    new-instance v3, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v3, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 166
    if-eqz v2, :cond_1

    .line 168
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :goto_0
    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 161
    :catch_1
    move-exception v3

    .line 162
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    if-eqz v2, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 174
    :cond_1
    :goto_1
    return v1

    .line 166
    :goto_2
    if-eqz v2, :cond_2

    .line 168
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 171
    goto :goto_3

    .line 169
    :catch_2
    move-exception v3

    .line 171
    :cond_2
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public open(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Ljava/io/InputStream;
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "thumbnailUri":Lccsanandroid/net/Uri;
    const/4 v1, 0x0

    .line 181
    .local v1, "inputStream":Ljava/io/InputStream;
    iget-object v2, p0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->query:Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    invoke-interface {v2, p1, p2}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;->queryPath(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 183
    .local v2, "cursor":Lccsanandroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->parseThumbUri(Lccsanandroid/database/Cursor;)Lccsanandroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 187
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 188
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 191
    :cond_2
    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsanandroid/content/ContentResolver;->openInputStream(Lccsanandroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 194
    :cond_3
    return-object v1
.end method
