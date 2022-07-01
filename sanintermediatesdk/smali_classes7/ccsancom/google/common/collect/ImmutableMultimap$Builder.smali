.class public Lccsancom/google/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultimap;
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
.field builderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

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

    .line 148
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Lccsancom/google/common/collect/Platform;->preservesInsertionOrderOnPutsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 150
    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 286
    .local v0, "mapEntries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 287
    invoke-static {v1}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Ordering;->onKeys()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 289
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/ImmutableListMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method combine(Lccsancom/google/common/collect/ImmutableMultimap$Builder;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "other":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    iget-object v0, p1, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {p0, v2, v3}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 279
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    goto :goto_0

    .line 280
    :cond_0
    return-object p0
.end method

.method newMutableValueCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    .line 261
    return-object p0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 272
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 161
    .local v0, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 162
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->newMutableValueCollection()Ljava/util/Collection;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {p0, v2, v3}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 249
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    goto :goto_0

    .line 250
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 188
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 189
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    if-eqz p1, :cond_4

    .line 203
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 204
    .local v0, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_1

    .line 205
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v2}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 209
    :cond_0
    return-object p0

    .line 211
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, "valuesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    return-object p0

    .line 215
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->newMutableValueCollection()Ljava/util/Collection;

    move-result-object v0

    .line 216
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 218
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v2}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 221
    :cond_3
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object p0

    .line 201
    .end local v0    # "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v1    # "valuesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null key in entry: null="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lccsancom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
