.class Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;
.super Lccsancom/google/common/collect/Maps$EntrySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    .line 245
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;"
    iput-object p1, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;"
    new-instance v0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl$1;-><init>(Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 275
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 280
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 285
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1EntrySetImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
