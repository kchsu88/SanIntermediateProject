.class abstract Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
.super Lccsancom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayBasedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field forceCopy:Z

.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 444
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;, "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 445
    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 446
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 447
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 448
    return-void
.end method

.method private getReadyToExpandTo(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .line 456
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;, "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 457
    array-length v1, v0

    .line 458
    invoke-static {v1, p1}, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 459
    iput-boolean v2, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    goto :goto_0

    .line 460
    :cond_0
    iget-boolean v1, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 462
    iput-boolean v2, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    .line 464
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;, "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 471
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    aput-object p1, v0, v1

    .line 472
    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 439
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;, "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs add([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableCollection$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lccsancom/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;, "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p1}, Lccsancom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 479
    iget v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 480
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 482
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableCollection$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;, "Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 489
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 490
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget v1, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 491
    instance-of v1, v0, Lccsancom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    .line 492
    move-object v1, v0

    check-cast v1, Lccsancom/google/common/collect/ImmutableCollection;

    .line 493
    .local v1, "immutableCollection":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<*>;"
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v3, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-virtual {v1, v2, v3}, Lccsancom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v2

    iput v2, p0, Lccsancom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 494
    return-object p0

    .line 497
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "immutableCollection":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<*>;"
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableCollection$Builder;

    .line 498
    return-object p0
.end method
