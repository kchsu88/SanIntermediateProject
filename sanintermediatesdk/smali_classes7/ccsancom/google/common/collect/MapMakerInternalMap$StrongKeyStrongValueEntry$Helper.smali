.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
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
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 417
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 424
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 417
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 1
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p3, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    invoke-virtual {p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 429
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 417
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p4, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 417
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;>;II)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 417
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->setValue(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public valueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 434
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
