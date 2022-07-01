.class Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoThumbnailQuery"
.end annotation


# static fields
.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_SELECTION:Ljava/lang/String; = "kind = 1 AND video_id = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;->PATH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryPath(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroid/database/Cursor;
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;

    .line 240
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "videoId":Ljava/lang/String;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lccsanandroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Lccsanandroid/net/Uri;

    sget-object v3, Lccsancom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const-string v4, "kind = 1 AND video_id = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
