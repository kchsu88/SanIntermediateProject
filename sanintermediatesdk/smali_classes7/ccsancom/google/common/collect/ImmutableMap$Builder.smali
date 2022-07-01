.class public Lccsancom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMap;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field alternatingKeysAndValues:[Ljava/lang/Object;

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 223
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 226
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 229
    iput-boolean v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 230
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .line 233
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 234
    array-length v0, v1

    mul-int/lit8 v2, p1, 0x2

    .line 237
    invoke-static {v0, v2}, Lccsancom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 235
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->sortEntries()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 339
    iget v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;)Lccsancom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "valueComparator was already set"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 312
    const-string v0, "valueComparator"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 313
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 250
    invoke-static {p1, p2}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    .line 252
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    .line 253
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 254
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 290
    iget v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 292
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 294
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 295
    :cond_1
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method sortEntries()V
    .locals 6

    .line 343
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 344
    iget-boolean v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 347
    :cond_0
    iget v0, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 348
    .local v0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    if-ge v1, v2, :cond_1

    .line 349
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v4, v1, 0x2

    aget-object v4, v3, v4

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v3, v5

    invoke-direct {v2, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 354
    invoke-static {v3}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v3

    invoke-static {}, Lccsancom/google/common/collect/Maps;->valueFunction()Lccsancom/google/common/base/Function;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/common/collect/Ordering;->onResultOf(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Ordering;

    move-result-object v3

    .line 353
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 355
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->size:I

    if-ge v1, v2, :cond_2

    .line 356
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 357
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 360
    .end local v0    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
