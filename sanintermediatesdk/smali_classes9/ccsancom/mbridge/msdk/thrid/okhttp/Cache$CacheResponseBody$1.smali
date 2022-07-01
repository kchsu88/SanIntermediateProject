.class Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody$1;
.super Lccsancom/mbridge/msdk/thrid/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;Lccsancom/mbridge/msdk/thrid/okio/Source;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;
    .param p2, "x0"    # Lccsancom/mbridge/msdk/thrid/okio/Source;

    .line 750
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;

    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSource;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 753
    invoke-super {p0}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSource;->close()V

    .line 754
    return-void
.end method
