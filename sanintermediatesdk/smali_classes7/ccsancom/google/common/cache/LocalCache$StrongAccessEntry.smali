.class final Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;
.super Lccsancom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$StrongEntry<",
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
.method constructor <init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 979
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V

    .line 984
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 997
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1010
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 980
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 988
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

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

    .line 1001
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

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

    .line 1014
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 993
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 994
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

    .line 1006
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1007
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

    .line 1019
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;, "Lccsancom/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1020
    return-void
.end method
