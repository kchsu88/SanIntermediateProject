.class final Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;
.super Lccsancom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongWriteEntry"
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
.field nextWrite:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


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

    .line 1025
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V

    .line 1030
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1043
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1056
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1026
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1047
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1060
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1034
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1052
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1053
    return-void
.end method

.method public setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1065
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1066
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1039
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;, "Lccsancom/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1040
    return-void
.end method
