.class abstract Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field entryIndex:I

.field expectedModCount:I

.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

.field toRemove:I


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    .line 163
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset<TE;>.Itr<TT;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iget-object v0, p1, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->toRemove:I

    .line 166
    iget-object v0, p1, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    iget v0, v0, Lccsancom/google/common/collect/ObjectCountHashMap;->modCount:I

    iput v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->expectedModCount:I

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 171
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset<TE;>.Itr<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    iget v0, v0, Lccsancom/google/common/collect/ObjectCountHashMap;->modCount:I

    iget v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 178
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset<TE;>.Itr<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->checkForConcurrentModification()V

    .line 179
    iget v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset<TE;>.Itr<TT;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->result(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    iput v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->toRemove:I

    .line 189
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, v1, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    iget v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v1

    iput v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    .line 190
    return-object v0

    .line 185
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 195
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset<TE;>.Itr<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->checkForConcurrentModification()V

    .line 196
    iget v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->toRemove:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 197
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-wide v2, v0, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->size:J

    iget-object v4, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v4, v4, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    iget v5, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->toRemove:I

    invoke-virtual {v4, v5}, Lccsancom/google/common/collect/ObjectCountHashMap;->removeEntry(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 198
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    iget v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    iget v3, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->toRemove:I

    invoke-virtual {v0, v2, v3}, Lccsancom/google/common/collect/ObjectCountHashMap;->nextIndexAfterRemove(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->entryIndex:I

    .line 199
    iput v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->toRemove:I

    .line 200
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    iget v0, v0, Lccsancom/google/common/collect/ObjectCountHashMap;->modCount:I

    iput v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;->expectedModCount:I

    .line 201
    return-void
.end method

.method abstract result(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method