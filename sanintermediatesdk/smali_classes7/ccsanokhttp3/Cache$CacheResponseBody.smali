.class Lccsanokhttp3/Cache$CacheResponseBody;
.super Lccsanokhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lccsanokio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .line 741
    invoke-direct {p0}, Lccsanokhttp3/ResponseBody;-><init>()V

    .line 742
    iput-object p1, p0, Lccsanokhttp3/Cache$CacheResponseBody;->snapshot:Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 743
    iput-object p2, p0, Lccsanokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 744
    iput-object p3, p0, Lccsanokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 746
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lccsanokio/Source;

    move-result-object v0

    .line 747
    .local v0, "source":Lccsanokio/Source;
    new-instance v1, Lccsanokhttp3/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lccsanokhttp3/Cache$CacheResponseBody$1;-><init>(Lccsanokhttp3/Cache$CacheResponseBody;Lccsanokio/Source;Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lccsanokio/Okio;->buffer(Lccsanokio/Source;)Lccsanokio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lccsanokhttp3/Cache$CacheResponseBody;->bodySource:Lccsanokio/BufferedSource;

    .line 753
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .line 761
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lccsanokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    .line 762
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1

    .line 756
    iget-object v0, p0, Lccsanokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lccsanokhttp3/MediaType;->parse(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lccsanokio/BufferedSource;
    .locals 1

    .line 768
    iget-object v0, p0, Lccsanokhttp3/Cache$CacheResponseBody;->bodySource:Lccsanokio/BufferedSource;

    return-object v0
.end method
