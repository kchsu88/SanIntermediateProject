.class abstract Lccsancom/google/common/collect/IndexedImmutableSet;
.super Lccsancom/google/common/collect/ImmutableSet;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet;, "Lccsancom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 34
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet;, "Lccsancom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/IndexedImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet;, "Lccsancom/google/common/collect/IndexedImmutableSet<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/IndexedImmutableSet$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/IndexedImmutableSet$1;-><init>(Lccsancom/google/common/collect/IndexedImmutableSet;)V

    return-object v0
.end method

.method abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet;, "Lccsancom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/IndexedImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 22
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet;, "Lccsancom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/IndexedImmutableSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
