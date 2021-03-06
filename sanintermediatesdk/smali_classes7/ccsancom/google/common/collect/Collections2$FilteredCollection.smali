.class Lccsancom/google/common/collect/Collections2$FilteredCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteredCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lccsancom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lccsancom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "unfiltered":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 125
    iput-object p1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 126
    iput-object p2, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    .line 127
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 136
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 137
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v2, v1}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 144
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 150
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Z

    .line 151
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 155
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    move-object v0, p1

    .line 158
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 160
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Collections2;->containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method createCombined(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Collections2$FilteredCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lccsancom/google/common/collect/Collections2$FilteredCollection<",
            "TE;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "newPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    new-instance v0, Lccsancom/google/common/collect/Collections2$FilteredCollection;

    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v2, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 170
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 180
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Collections2$FilteredCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 185
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "changed":Z
    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 191
    const/4 v0, 0x1

    .line 193
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 199
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 200
    .local v0, "changed":Z
    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 203
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 205
    const/4 v0, 0x1

    .line 207
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    return v0
.end method

.method public size()I
    .locals 4

    .line 213
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lccsancom/google/common/collect/Collections2$FilteredCollection;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 218
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 225
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lccsancom/google/common/collect/Collections2$FilteredCollection;, "Lccsancom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
