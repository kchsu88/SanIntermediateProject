.class public abstract Lccsancom/google/common/collect/ForwardingSetMultimap;
.super Lccsancom/google/common/collect/ForwardingMultimap;
.source "ForwardingSetMultimap.java"

# interfaces
.implements Lccsancom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMultimap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 37
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lccsancom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 37
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 37
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 37
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 37
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 37
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ForwardingSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSetMultimap;, "Lccsancom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
