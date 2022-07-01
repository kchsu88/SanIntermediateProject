.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 517
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 514
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 521
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 514
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p3, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    invoke-static {p2}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, 0x0

    return-object v0

    .line 551
    :cond_0
    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 526
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 514
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p4, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 514
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 514
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->setValue(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 557
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 558
    return-void
.end method

.method public valueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 531
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
