.class Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;
.super Lccsancom/google/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lccsancom/google/common/collect/ImmutableMultimap;
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

    .line 527
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;, "Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableCollection;-><init>()V

    .line 528
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    .line 529
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 548
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;, "Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 549
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 550
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/google/common/collect/ImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 552
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 538
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;, "Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;, "Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 524
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;, "Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 543
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;, "Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
