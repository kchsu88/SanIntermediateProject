.class Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;
.super Lccsancom/google/common/collect/AbstractMapEntry;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;->computeNext()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapEntry<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$2"    # Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 514
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;, "Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->this$2:Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iput-object p2, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;, "Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;, "Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->this$2:Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lccsancom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;, "Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->this$2:Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lccsancom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
