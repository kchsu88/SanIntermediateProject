.class Lccsancom/google/common/collect/RegularContiguousSet$3;
.super Lccsancom/google/common/collect/ImmutableAsList;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/RegularContiguousSet;->createAsList()Lccsancom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableAsList<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/RegularContiguousSet;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/RegularContiguousSet;

    .line 125
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$3;, "Lccsancom/google/common/collect/RegularContiguousSet$3;"
    iput-object p1, p0, Lccsancom/google/common/collect/RegularContiguousSet$3;->this$0:Lccsancom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic delegateCollection()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 125
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$3;, "Lccsancom/google/common/collect/RegularContiguousSet$3;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularContiguousSet$3;->delegateCollection()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$3;, "Lccsancom/google/common/collect/RegularContiguousSet$3;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularContiguousSet$3;->this$0:Lccsancom/google/common/collect/RegularContiguousSet;

    return-object v0
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$3;, "Lccsancom/google/common/collect/RegularContiguousSet$3;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularContiguousSet$3;->size()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 134
    iget-object v0, p0, Lccsancom/google/common/collect/RegularContiguousSet$3;->this$0:Lccsancom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lccsancom/google/common/collect/RegularContiguousSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    iget-object v1, p0, Lccsancom/google/common/collect/RegularContiguousSet$3;->this$0:Lccsancom/google/common/collect/RegularContiguousSet;

    invoke-virtual {v1}, Lccsancom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/common/collect/DiscreteDomain;->offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 125
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$3;, "Lccsancom/google/common/collect/RegularContiguousSet$3;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/RegularContiguousSet$3;->get(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
