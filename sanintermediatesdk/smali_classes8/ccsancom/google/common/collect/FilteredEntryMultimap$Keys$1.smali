.class Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;
.super Lccsancom/google/common/collect/Multisets$EntrySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Multisets$EntrySet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;

    .line 376
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;

    invoke-direct {p0}, Lccsancom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method

.method private removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TK;>;>;)Z"
        }
    .end annotation

    .line 394
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Lccsancom/google/common/collect/Multiset$Entry<TK;>;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;

    iget-object v0, v0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    new-instance v1, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1$1;

    invoke-direct {v1, p0, p1}, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1$1;-><init>(Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;Lccsancom/google/common/base/Predicate;)V

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;

    invoke-virtual {v0}, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lccsancom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 406
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 411
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 390
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;, "Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;

    iget-object v0, v0, Lccsancom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/FilteredEntryMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
