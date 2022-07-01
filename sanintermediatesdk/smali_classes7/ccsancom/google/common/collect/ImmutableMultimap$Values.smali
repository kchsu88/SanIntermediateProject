.class final Lccsancom/google/common/collect/ImmutableMultimap$Values;
.super Lccsancom/google/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableCollection<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient multimap:Lccsancom/google/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 691
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableCollection;-><init>()V

    .line 692
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultimap$Values;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    .line 693
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 697
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Values;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 2
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 708
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Values;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/ImmutableCollection;

    .line 709
    .local v1, "valueCollection":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TV;>;"
    invoke-virtual {v1, p1, p2}, Lccsancom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    .line 710
    .end local v1    # "valueCollection":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TV;>;"
    goto :goto_0

    .line 711
    :cond_0
    return p2
.end method

.method isPartialView()Z
    .locals 1

    .line 721
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    .line 702
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Values;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->valueIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 688
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap$Values;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 716
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Values;, "Lccsancom/google/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Values;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
