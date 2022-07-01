.class Lccsanokhttp3/Cache$CacheResponseBody$1;
.super Lccsanokio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/Cache$CacheResponseBody;-><init>(Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lccsanokhttp3/Cache$CacheResponseBody;Lccsanokio/Source;Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/Cache$CacheResponseBody;
    .param p2, "x0"    # Lccsanokio/Source;

    .line 747
    iput-object p1, p0, Lccsanokhttp3/Cache$CacheResponseBody$1;->this$0:Lccsanokhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lccsanokhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lccsanokio/ForwardingSource;-><init>(Lccsanokio/Source;)V

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

    .line 749
    iget-object v0, p0, Lccsanokhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 750
    invoke-super {p0}, Lccsanokio/ForwardingSource;->close()V

    .line 751
    return-void
.end method
