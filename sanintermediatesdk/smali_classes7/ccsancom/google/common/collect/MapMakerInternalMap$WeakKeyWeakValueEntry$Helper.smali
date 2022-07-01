.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
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
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 892
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 889
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 896
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 889
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 2
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 922
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p3, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    invoke-virtual {p2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 924
    return-object v1

    .line 926
    :cond_0
    invoke-static {p2}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    return-object v1

    .line 929
    :cond_1
    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$400(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$500(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 901
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 889
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p4, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 944
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$400(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 889
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;>;II)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 914
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 889
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->setValue(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 935
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$500(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 936
    return-void
.end method

.method public valueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 906
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
