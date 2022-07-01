.class public final Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
.super Lccsancom/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableListMultimap;
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
        "Lccsancom/google/common/collect/ImmutableMultimap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 201
    return-object p0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 213
    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 143
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 155
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 189
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 168
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 175
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;

    .line 182
    return-object p0
.end method

.method public bridge synthetic putAll(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 132
    .local p0, "this":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
