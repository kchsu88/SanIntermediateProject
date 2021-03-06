.class final Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;
.super Lccsancom/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$WeakEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1267
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V

    .line 1272
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    .line 1285
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1298
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1268
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 1276
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1289
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1302
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1281
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    .line 1282
    return-void
.end method

.method public setNextInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1294
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1295
    return-void
.end method

.method public setPreviousInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1307
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;, "Lccsancom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1308
    return-void
.end method
