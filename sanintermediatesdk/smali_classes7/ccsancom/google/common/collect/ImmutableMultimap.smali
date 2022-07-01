.class public abstract Lccsancom/google/common/collect/ImmutableMultimap;
.super Lccsancom/google/common/collect/BaseImmutableMultimap;
.source "ImmutableMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableMultimap$Values;,
        Lccsancom/google/common/collect/ImmutableMultimap$KeysSerializedForm;,
        Lccsancom/google/common/collect/ImmutableMultimap$Keys;,
        Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;,
        Lccsancom/google/common/collect/ImmutableMultimap$FieldSettersHolder;,
        Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/BaseImmutableMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient map:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;+",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final transient size:I


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;+",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 342
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;+Lccsancom/google/common/collect/ImmutableCollection<TV;>;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;-><init>()V

    .line 343
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    .line 344
    iput p2, p0, Lccsancom/google/common/collect/ImmutableMultimap;->size:I

    .line 345
    return-void
.end method

.method public static builder()Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 304
    .local p0, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_0

    .line 306
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ImmutableMultimap;

    .line 307
    .local v0, "kvMultimap":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    return-object v0

    .line 311
    .end local v0    # "kvMultimap":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableListMultimap;->copyOf(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 325
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableListMultimap;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->of()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 77
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1, p2, p3}, Lccsancom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 90
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    invoke-static/range {p0 .. p5}, Lccsancom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    invoke-static/range {p0 .. p7}, Lccsancom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 107
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    invoke-static/range {p0 .. p9}, Lccsancom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asMap()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->asMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/BaseImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 469
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 474
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lccsancom/google/common/collect/BaseImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createEntries()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;-><init>(Lccsancom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->createEntries()Lccsancom/google/common/collect/ImmutableCollection;

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

    .line 495
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createKeys()Lccsancom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultiset<",
            "TK;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMultimap$Keys;-><init>(Lccsancom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createKeys()Lccsancom/google/common/collect/Multiset;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->createKeys()Lccsancom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method createValues()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$Values;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMultimap$Values;-><init>(Lccsancom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->createValues()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->entries()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMultimap$1;-><init>(Lccsancom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic entryIterator()Ljava/util/Iterator;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/BaseImmutableMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract get(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap;->get(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inverse()Lccsancom/google/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 462
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public keySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lccsancom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultiset<",
            "TK;>;"
        }
    .end annotation

    .line 590
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;->keys()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableMultiset;

    return-object v0
.end method

.method public bridge synthetic keys()Lccsancom/google/common/collect/Multiset;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->keys()Lccsancom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lccsancom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap;->removeAll(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 479
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;->size:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$2;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMultimap$2;-><init>(Lccsancom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic valueIterator()Ljava/util/Iterator;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->valueIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 659
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/BaseImmutableMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
