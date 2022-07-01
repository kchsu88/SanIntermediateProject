.class public abstract Lccsancom/google/common/collect/ImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;,
        Lccsancom/google/common/collect/ImmutableCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lccsancom/google/common/collect/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 165
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 326
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 327
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    aput-object v1, p1, p2

    .line 328
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    move p2, v2

    goto :goto_0

    .line 329
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_0
    return p2
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 199
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 215
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 207
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract isPartialView()Z
.end method

.method public abstract iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 159
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "oldElements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "elementsToKeep":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    sget-object v0, Lccsancom/google/common/collect/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    .line 184
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->internalArray()[Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "internal":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->internalArrayStart()I

    move-result v2

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->internalArrayEnd()I

    move-result v3

    invoke-static {v1, v2, v3, p1}, Lccsancom/google/common/collect/Platform;->copy([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 189
    :cond_0
    invoke-static {p1, v0}, Lccsancom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 190
    .end local v1    # "internal":[Ljava/lang/Object;
    :cond_1
    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 191
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 193
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lccsancom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    .line 194
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 334
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
