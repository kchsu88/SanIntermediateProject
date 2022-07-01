.class Lccsancom/google/common/collect/Maps$FilteredKeyMap;
.super Lccsancom/google/common/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredKeyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Maps$AbstractFilteredMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final keyPredicate:Lccsancom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Predicate<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TK;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2679
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredKeyMap;, "Lccsancom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    .local p1, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TK;>;"
    .local p3, "entryPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p3}, Lccsancom/google/common/collect/Maps$AbstractFilteredMap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Predicate;)V

    .line 2680
    iput-object p2, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lccsancom/google/common/base/Predicate;

    .line 2681
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2698
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredKeyMap;, "Lccsancom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2685
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredKeyMap;, "Lccsancom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Sets;->filter(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2690
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredKeyMap;, "Lccsancom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Sets;->filter(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
