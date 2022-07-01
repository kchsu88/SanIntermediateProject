.class final Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;
.super Lccsancom/google/common/collect/AbstractMapEntry;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractMapEntry<",
        "Lccsancom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field private final range:Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .local p1, "lowerBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TK;>;"
    .local p2, "upperBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TK;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lccsancom/google/common/collect/Range;->create(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 75
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lccsancom/google/common/collect/Range;

    .line 76
    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 90
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public getKey()Lccsancom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lccsancom/google/common/collect/Range;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 65
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lccsancom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method getLowerBound()Lccsancom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lccsancom/google/common/collect/Range;

    iget-object v0, v0, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    return-object v0
.end method

.method getUpperBound()Lccsancom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lccsancom/google/common/collect/Range;

    iget-object v0, v0, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
