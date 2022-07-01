.class final Lccsancom/google/common/collect/TreeRangeSet$Complement;
.super Lccsancom/google/common/collect/TreeRangeSet;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Complement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TreeRangeSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeSet;)V
    .locals 1

    .line 653
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$Complement;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.Complement;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeSet$Complement;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    .line 654
    new-instance v0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iget-object p1, p1, Lccsancom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lccsancom/google/common/collect/TreeRangeSet$1;)V

    .line 655
    return-void
.end method


# virtual methods
.method public add(Lccsancom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 659
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$Complement;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.Complement;"
    .local p1, "rangeToAdd":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$Complement;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->remove(Lccsancom/google/common/collect/Range;)V

    .line 660
    return-void
.end method

.method public complement()Lccsancom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$Complement;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.Complement;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$Complement;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    return-object v0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 669
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$Complement;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.Complement;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$Complement;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public remove(Lccsancom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 664
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$Complement;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.Complement;"
    .local p1, "rangeToRemove":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$Complement;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->add(Lccsancom/google/common/collect/Range;)V

    .line 665
    return-void
.end method
