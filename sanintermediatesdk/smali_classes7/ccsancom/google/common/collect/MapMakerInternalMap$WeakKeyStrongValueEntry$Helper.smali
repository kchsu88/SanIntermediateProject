.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
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
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 790
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 787
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 794
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 787
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 1
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    .local p3, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    invoke-virtual {p2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 823
    const/4 v0, 0x0

    return-object v0

    .line 825
    :cond_0
    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->access$300(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 799
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 787
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p4, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 840
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->access$300(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 787
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;>;II)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 813
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 787
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->setValue(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 831
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    .line 832
    return-void
.end method

.method public valueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 804
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
