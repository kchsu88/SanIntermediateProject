.class public final Lccsancom/google/common/collect/ImmutableBiMap$Builder;
.super Lccsancom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 166
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 167
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 170
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 171
    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ImmutableBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->size:I

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lccsancom/google/common/collect/ImmutableBiMap;->of()Lccsancom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->sortEntries()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->entriesUsed:Z

    .line 257
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableBiMap;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->size:I

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularImmutableBiMap;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public bridge synthetic build()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->build()Lccsancom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 240
    return-object p0
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 181
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 194
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 222
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 207
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 160
    .local p0, "this":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method
