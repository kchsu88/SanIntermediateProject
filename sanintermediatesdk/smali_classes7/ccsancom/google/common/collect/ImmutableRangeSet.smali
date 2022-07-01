.class public final Lccsancom/google/common/collect/ImmutableRangeSet;
.super Lccsancom/google/common/collect/AbstractRangeSet;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;,
        Lccsancom/google/common/collect/ImmutableRangeSet$Builder;,
        Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;,
        Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;,
        Lccsancom/google/common/collect/ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lccsancom/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lccsancom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lccsancom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lccsancom/google/common/collect/ImmutableRangeSet;
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final transient ranges:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 53
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    sput-object v0, Lccsancom/google/common/collect/ImmutableRangeSet;->EMPTY:Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 55
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 56
    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    sput-object v0, Lccsancom/google/common/collect/ImmutableRangeSet;->ALL:Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 55
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "ranges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 128
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 129
    return-void
.end method

.method private constructor <init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "ranges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TC;>;>;"
    .local p2, "complement":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 132
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 133
    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->complement:Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/collect/ImmutableRangeSet;)Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 49
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static all()Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 82
    sget-object v0, Lccsancom/google/common/collect/ImmutableRangeSet;->ALL:Lccsancom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lccsancom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lccsancom/google/common/collect/ImmutableRangeSet$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 696
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 87
    .local p0, "rangeSet":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {p0}, Lccsancom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->of()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p0, v0}, Lccsancom/google/common/collect/RangeSet;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->all()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_2

    .line 95
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 96
    .local v0, "immutableRangeSet":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    return-object v0

    .line 100
    .end local v0    # "immutableRangeSet":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_2
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-interface {p0}, Lccsancom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 112
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/collect/Range<TC;>;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lccsancom/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableRangeSet$Builder;->build()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method private intersectRanges(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 410
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->span()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    return-object v0

    .line 415
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 419
    invoke-static {}, Lccsancom/google/common/collect/Range;->upperBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    sget-object v3, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 417
    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Comparable;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .local v0, "fromIndex":I
    goto :goto_0

    .line 424
    .end local v0    # "fromIndex":I
    :cond_2
    const/4 v0, 0x0

    .line 428
    .restart local v0    # "fromIndex":I
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 432
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 430
    invoke-static {v1, v2, v3, v4, v5}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Comparable;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    .local v1, "toIndex":I
    goto :goto_1

    .line 437
    .end local v1    # "toIndex":I
    :cond_3
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 439
    .restart local v1    # "toIndex":I
    :goto_1
    sub-int v2, v1, v0

    .line 440
    .local v2, "length":I
    if-nez v2, :cond_4

    .line 441
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3

    .line 443
    :cond_4
    new-instance v3, Lccsancom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v3, p0, v2, v0, p1}, Lccsancom/google/common/collect/ImmutableRangeSet$1;-><init>(Lccsancom/google/common/collect/ImmutableRangeSet;IILccsancom/google/common/collect/Range;)V

    return-object v3

    .line 409
    .end local v0    # "fromIndex":I
    .end local v1    # "toIndex":I
    .end local v2    # "length":I
    :cond_5
    :goto_2
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lccsancom/google/common/collect/ImmutableRangeSet;->EMPTY:Lccsancom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 69
    .local p0, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->of()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->all()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 124
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/collect/Range<TC;>;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/TreeRangeSet;->create(Ljava/lang/Iterable;)Lccsancom/google/common/collect/TreeRangeSet;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->copyOf(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lccsancom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/collect/Range<TC;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asDescendingSetOfRanges()Lccsancom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->reverse()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/Range;->rangeLexOrdering()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->asDescendingSetOfRanges()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lccsancom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-static {}, Lccsancom/google/common/collect/Range;->rangeLexOrdering()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->asRanges()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asSet(Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "domain":Lccsancom/google/common/collect/DiscreteDomain;, "Lccsancom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSortedSet;->of()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->span()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->canonical(Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 506
    .local v0, "span":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    :try_start_0
    invoke-virtual {p1}, Lccsancom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    :goto_0
    new-instance v1, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {v1, p0, p1}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;-><init>(Lccsancom/google/common/collect/ImmutableRangeSet;Lccsancom/google/common/collect/DiscreteDomain;)V

    return-object v1

    .line 509
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->complement:Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 349
    .local v0, "result":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    if-eqz v0, :cond_0

    .line 350
    return-object v0

    .line 351
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->all()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->complement:Lccsancom/google/common/collect/ImmutableRangeSet;

    return-object v1

    .line 353
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->of()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->complement:Lccsancom/google/common/collect/ImmutableRangeSet;

    return-object v1

    .line 356
    :cond_2
    new-instance v1, Lccsancom/google/common/collect/ImmutableRangeSet$ComplementRanges;

    invoke-direct {v1, p0}, Lccsancom/google/common/collect/ImmutableRangeSet$ComplementRanges;-><init>(Lccsancom/google/common/collect/ImmutableRangeSet;)V

    .line 357
    .local v1, "complementRanges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TC;>;>;"
    new-instance v2, Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-direct {v2, v1, p0}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableRangeSet;)V

    iput-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->complement:Lccsancom/google/common/collect/ImmutableRangeSet;

    move-object v0, v2

    .line 359
    .end local v1    # "complementRanges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TC;>;>;"
    return-object v0
.end method

.method public bridge synthetic complement()Lccsancom/google/common/collect/RangeSet;
    .locals 1

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->complement()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public difference(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/TreeRangeSet;->create(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 399
    .local v0, "copy":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {v0, p1}, Lccsancom/google/common/collect/RangeSet;->removeAll(Lccsancom/google/common/collect/RangeSet;)V

    .line 400
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->copyOf(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    return-object v1
.end method

.method public encloses(Lccsancom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "otherRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 163
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    .line 165
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 161
    invoke-static/range {v0 .. v5}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 168
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic enclosesAll(Lccsancom/google/common/collect/RangeSet;)Z
    .locals 0

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractRangeSet;->enclosesAll(Lccsancom/google/common/collect/RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic enclosesAll(Ljava/lang/Iterable;)Z
    .locals 0

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractRangeSet;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersection(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/TreeRangeSet;->create(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 385
    .local v0, "copy":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lccsancom/google/common/collect/RangeSet;->complement()Lccsancom/google/common/collect/RangeSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/RangeSet;->removeAll(Lccsancom/google/common/collect/RangeSet;)V

    .line 386
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->copyOf(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    return-object v1
.end method

.method public intersects(Lccsancom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 140
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "otherRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 143
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    .line 145
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 141
    invoke-static/range {v0 .. v5}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 148
    .local v0, "ceilingIndex":I
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 149
    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 150
    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    return v2

    .line 153
    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    add-int/lit8 v3, v0, -0x1

    .line 154
    invoke-virtual {v1, v3}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    add-int/lit8 v3, v0, -0x1

    .line 155
    invoke-virtual {v1, v3}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 153
    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 198
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 691
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 176
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    .line 177
    invoke-static {p1}, Lccsancom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Cut;

    move-result-object v2

    .line 178
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 174
    invoke-static/range {v0 .. v5}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 181
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 182
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    .line 183
    .local v2, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-virtual {v2, p1}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_0
    return-object v1

    .line 185
    .end local v2    # "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    :cond_1
    return-object v1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lccsancom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/collect/Range<TC;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lccsancom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    iget-object v0, v0, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    iget-object v1, v1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Range;->create(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->span()Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 472
    .local v0, "span":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    return-object p0

    .line 474
    :cond_0
    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    new-instance v1, Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    return-object v1

    .line 478
    .end local v0    # "span":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    :cond_1
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->of()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subRangeSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeSet;
    .locals 0

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public union(Lccsancom/google/common/collect/RangeSet;)Lccsancom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lccsancom/google/common/collect/RangeSet;, "Lccsancom/google/common/collect/RangeSet<TC;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet;->asRanges()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->unionOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 809
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
