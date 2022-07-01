.class Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;
.super Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .line 744
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;-><init>()V

    .line 745
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->snapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 746
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 747
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 749
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v0

    .line 750
    .local v0, "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;Lccsancom/mbridge/msdk/thrid/okio/Source;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->bodySource:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 756
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .line 764
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    .line 765
    :catch_0
    move-exception v2

    .line 766
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    .locals 1

    .line 759
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->parse(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .locals 1

    .line 771
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->bodySource:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    return-object v0
.end method
