.class abstract Lccsancom/google/common/cache/LocalCache$HashIterator;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
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
.field currentSegment:Lccsancom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field lastReturned:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextEntry:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextExternal:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache;

    .line 4191
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4192
    iget-object v0, p1, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    .line 4193
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4194
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4195
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .line 4201
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4203
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4204
    return-void

    .line 4207
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4208
    return-void

    .line 4211
    :cond_1
    iget v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_2

    .line 4212
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    iget-object v0, v0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lccsancom/google/common/cache/LocalCache$Segment;

    .line 4213
    iget v0, v0, Lccsancom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 4214
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lccsancom/google/common/cache/LocalCache$Segment;

    iget-object v0, v0, Lccsancom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4215
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4216
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4217
    return-void

    .line 4221
    :cond_2
    return-void
.end method

.method advanceTo(Lccsancom/google/common/cache/ReferenceEntry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4253
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    iget-object v0, v0, Lccsancom/google/common/cache/LocalCache;->ticker:Lccsancom/google/common/base/Ticker;

    invoke-virtual {v0}, Lccsancom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 4254
    .local v0, "now":J
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4255
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lccsancom/google/common/cache/LocalCache;->getLiveValue(Lccsancom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v3

    .line 4256
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 4257
    new-instance v4, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {v4, v5, v2, v3}, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;-><init>(Lccsancom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4258
    const/4 v4, 0x1

    .line 4264
    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lccsancom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v5}, Lccsancom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4258
    return v4

    .line 4261
    :cond_0
    const/4 v4, 0x0

    .line 4264
    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lccsancom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v5}, Lccsancom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4261
    return v4

    .line 4264
    .end local v0    # "now":J
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lccsancom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v1}, Lccsancom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4265
    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 4270
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .line 4274
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 4277
    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4278
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4279
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    return-object v0

    .line 4275
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .locals 1

    .line 4225
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lccsancom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4226
    nop

    :goto_0
    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNext()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lccsancom/google/common/cache/ReferenceEntry;

    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lccsancom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4227
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lccsancom/google/common/cache/ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4228
    const/4 v0, 0x1

    return v0

    .line 4226
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lccsancom/google/common/cache/ReferenceEntry;

    goto :goto_0

    .line 4232
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .locals 3

    .line 4237
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    :cond_0
    iget v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 4238
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/ReferenceEntry;

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lccsancom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4239
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lccsancom/google/common/cache/ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4240
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4244
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 4284
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$HashIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 4285
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    invoke-virtual {v1}, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4286
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4287
    return-void
.end method
