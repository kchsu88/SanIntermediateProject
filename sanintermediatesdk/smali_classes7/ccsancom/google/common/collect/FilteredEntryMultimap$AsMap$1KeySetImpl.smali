.class Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;
.super Lccsancom/google/common/collect/Maps$KeySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$KeySet<",
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

    .line 220
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;"
    iput-object p1, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    .line 221
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 222
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 236
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 226
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->keyPredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

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

    .line 231
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;, "Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lccsancom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->keyPredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
