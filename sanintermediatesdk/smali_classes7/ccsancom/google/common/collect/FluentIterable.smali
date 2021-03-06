.class public abstract Lccsancom/google/common/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/FluentIterable$FromIterableFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterableDelegate:Lccsancom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 121
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/FluentIterable;->iterableDelegate:Lccsancom/google/common/base/Optional;

    .line 123
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    if-eq p0, p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/FluentIterable;->iterableDelegate:Lccsancom/google/common/base/Optional;

    .line 128
    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 276
    .local p0, "inputs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lccsancom/google/common/collect/FluentIterable$2;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/FluentIterable$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 194
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 213
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 236
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p3, "d":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 256
    .local p0, "inputs":[Ljava/lang/Iterable;, "[Ljava/lang/Iterable<+TT;>;"
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Iterable;

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method private static varargs concatNoDefensiveCopy([Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 288
    .local p0, "inputs":[Ljava/lang/Iterable;, "[Ljava/lang/Iterable<+TT;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 289
    .local v2, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {v2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v2    # "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/FluentIterable$3;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/FluentIterable$3;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static from(Lccsancom/google/common/collect/FluentIterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    .local p0, "iterable":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/FluentIterable;

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 142
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/FluentIterable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FluentIterable;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/collect/FluentIterable$1;

    invoke-direct {v0, p0, p0}, Lccsancom/google/common/collect/FluentIterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    :goto_0
    return-object v0
.end method

.method public static from([Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 164
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method private getDelegate()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FluentIterable;->iterableDelegate:Lccsancom/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lccsancom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static of()Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 315
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 328
    .local p0, "element":Ljava/lang/Object;, "TE;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final allMatch(Lccsancom/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 456
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Lccsancom/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 446
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final append(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final varargs append([Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 359
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final copyInto(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TE;>;>(TC;)TC;"
        }
    .end annotation

    .line 799
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "TC;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    .line 801
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 802
    invoke-static {v0}, Lccsancom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 804
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 805
    .local v2, "item":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 806
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 808
    :cond_1
    :goto_1
    return-object p1
.end method

.method public final cycle()Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/lang/Class;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lccsancom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final firstMatch(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lccsancom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 840
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final index(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TE;TK;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "TK;TE;>;"
        }
    .end annotation

    .line 730
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TE;TK;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->index(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 606
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final join(Lccsancom/google/common/base/Joiner;)Ljava/lang/String;
    .locals 1
    .param p1, "joiner"    # Lccsancom/google/common/base/Joiner;

    .line 823
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-virtual {p1, p0}, Lccsancom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lccsancom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    .line 535
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 536
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 537
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 540
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 542
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 551
    :cond_2
    instance-of v2, v0, Ljava/util/SortedSet;

    if-eqz v2, :cond_3

    .line 552
    move-object v2, v0

    check-cast v2, Ljava/util/SortedSet;

    .line 553
    .local v2, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v3

    return-object v3

    .line 557
    .end local v2    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 558
    .local v2, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 559
    invoke-static {v2}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v3

    return-object v3

    .line 561
    .end local v2    # "current":Ljava/lang/Object;, "TE;"
    :cond_4
    goto :goto_0
.end method

.method public final limit(I)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 349
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final skip(I)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .param p1, "numberToSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .line 783
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TE;TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TE;TV;>;"
        }
    .end annotation

    .line 708
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "valueFunction":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TE;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Maps;->toMap(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final toMultiset()Lccsancom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 686
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final toSet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 654
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedSet(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 672
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 340
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TE;TT;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TE;TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public transformAndConcat(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TE;+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TE;+Ljava/lang/Iterable<+TT;>;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/FluentIterable;->transform(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final uniqueIndex(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TE;TK;>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TE;>;"
        }
    .end annotation

    .line 766
    .local p0, "this":Lccsancom/google/common/collect/FluentIterable;, "Lccsancom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TE;TK;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Maps;->uniqueIndex(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
