.class Lccsancom/google/common/collect/Maps$TransformedEntriesMap;
.super Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedEntriesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final fromMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lccsancom/google/common/collect/Maps$EntryTransformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1885
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    .local p1, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p2, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 1886
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 1887
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Maps$EntryTransformer;

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    .line 1888
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1921
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1922
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1897
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1931
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 1932
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->asEntryToEntryFunction(Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/base/Function;

    move-result-object v1

    .line 1931
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1904
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1905
    .local v0, "value":Ljava/lang/Object;, "TV1;"
    if-nez v0, :cond_1

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1906
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1905
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    .line 1906
    invoke-interface {v1, p1, v0}, Lccsancom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1905
    :goto_1
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1926
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1914
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 1915
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1914
    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1892
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1937
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    new-instance v0, Lccsancom/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method