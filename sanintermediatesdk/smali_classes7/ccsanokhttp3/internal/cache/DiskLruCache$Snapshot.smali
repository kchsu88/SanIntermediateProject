.class public final Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lccsanokio/Source;

.field final synthetic this$0:Lccsanokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lccsanokio/Source;[J)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/cache/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lccsanokio/Source;
    .param p6, "lengths"    # [J

    .line 789
    iput-object p1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 791
    iput-wide p3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 792
    iput-object p5, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lccsanokio/Source;

    .line 793
    iput-object p6, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    .line 794
    return-void
.end method

.method static synthetic access$000(Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 783
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 819
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lccsanokio/Source;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 820
    .local v3, "in":Lccsanokio/Source;
    invoke-static {v3}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 819
    .end local v3    # "in":Lccsanokio/Source;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method

.method public edit()Lccsanokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 805
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getLength(I)J
    .locals 3
    .param p1, "index"    # I

    .line 815
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSource(I)Lccsanokio/Source;
    .locals 1
    .param p1, "index"    # I

    .line 810
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lccsanokio/Source;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method
