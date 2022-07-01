.class public Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
.super Lccsancom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient keys:[Ljava/lang/Object;

.field private transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 412
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;I)V

    .line 413
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 416
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 417
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    .line 418
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    .line 419
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .line 422
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 423
    array-length v0, v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 424
    .local v0, "newCapacity":I
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    .line 427
    .end local v0    # "newCapacity":I
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1

    .line 401
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->build()Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 517
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 518
    .local v0, "sortedKeys":[Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 519
    iget v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 525
    .local v1, "sortedValues":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_0

    .line 515
    .end local v0    # "sortedKeys":[Ljava/lang/Object;
    .end local v1    # "sortedValues":[Ljava/lang/Object;
    .end local v2    # "i":I
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 513
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 525
    .restart local v0    # "sortedKeys":[Ljava/lang/Object;
    .restart local v1    # "sortedValues":[Ljava/lang/Object;
    .restart local v2    # "i":I
    :goto_0
    iget v3, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    if-ge v2, v3, :cond_2

    .line 526
    if-lez v2, :cond_1

    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v0, v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 527
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keys required to be distinct but compared as equal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 533
    :cond_1
    :goto_1
    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 534
    .local v3, "index":I
    iget-object v4, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    .line 525
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lccsancom/google/common/collect/ImmutableSortedMap;

    new-instance v3, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 538
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    iget-object v5, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v3, v4, v5}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 539
    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    .line 536
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not available on ImmutableSortedMap.Builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 401
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 401
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->ensureCapacity(I)V

    .line 438
    invoke-static {p1, p2}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    aput-object p1, v0, v1

    .line 440
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    aput-object p2, v0, v1

    .line 441
    iget v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    .line 442
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 456
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 401
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 401
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 486
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$Builder;, "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 470
    return-object p0
.end method
