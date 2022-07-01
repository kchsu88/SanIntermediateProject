.class final enum Lccsancom/google/common/cache/LocalCache$EntryFactory$3;
.super Lccsancom/google/common/cache/LocalCache$EntryFactory;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILccsancom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Lccsancom/google/common/cache/LocalCache$Segment;Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    .local p1, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "original":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lccsancom/google/common/cache/LocalCache$Segment;Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 470
    .local v0, "newEntry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2, v0}, Lccsancom/google/common/cache/LocalCache$EntryFactory$3;->copyWriteEntry(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 471
    return-object v0
.end method

.method newEntry(Lccsancom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 463
    .local p1, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;

    invoke-direct {v0, p2, p3, p4}, Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method
