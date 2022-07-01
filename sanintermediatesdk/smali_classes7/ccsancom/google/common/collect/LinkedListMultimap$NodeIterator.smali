.class Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field current:Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field expectedModCount:I

.field next:Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextIndex:I

.field previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/LinkedListMultimap;I)V
    .locals 2
    .param p2, "index"    # I

    .line 314
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    invoke-static {p1}, Lccsancom/google/common/collect/LinkedListMultimap;->access$000(Lccsancom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 315
    invoke-virtual {p1}, Lccsancom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    .line 316
    .local v0, "size":I
    invoke-static {p2, v0}, Lccsancom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 317
    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    .line 318
    invoke-static {p1}, Lccsancom/google/common/collect/LinkedListMultimap;->access$100(Lccsancom/google/common/collect/LinkedListMultimap;)Lccsancom/google/common/collect/LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 319
    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 320
    :goto_0
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "index":I
    .local p1, "index":I
    if-ge p2, v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lccsancom/google/common/collect/LinkedListMultimap$Node;

    move p2, p1

    goto :goto_0

    .line 324
    .end local p1    # "index":I
    .restart local p2    # "index":I
    :cond_0
    invoke-static {p1}, Lccsancom/google/common/collect/LinkedListMultimap;->access$200(Lccsancom/google/common/collect/LinkedListMultimap;)Lccsancom/google/common/collect/LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 325
    :goto_1
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "index":I
    .restart local p1    # "index":I
    if-lez p2, :cond_1

    .line 326
    invoke-virtual {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lccsancom/google/common/collect/LinkedListMultimap$Node;

    move p2, p1

    goto :goto_1

    .line 329
    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 330
    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 333
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedListMultimap;->access$000(Lccsancom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 336
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 307
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->add(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public add(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 404
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 340
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 341
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 372
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 373
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 348
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 350
    iget-object v0, v0, Lccsancom/google/common/collect/LinkedListMultimap$Node;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 351
    iget v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 352
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 307
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lccsancom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 389
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    return v0
.end method

.method public previous()Lccsancom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 380
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 382
    iget-object v0, v0, Lccsancom/google/common/collect/LinkedListMultimap$Node;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 383
    iget v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 384
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 307
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lccsancom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 394
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 357
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 358
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 359
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v2, :cond_1

    .line 360
    iget-object v0, v0, Lccsancom/google/common/collect/LinkedListMultimap$Node;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 361
    iget v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    goto :goto_1

    .line 363
    :cond_1
    iget-object v0, v0, Lccsancom/google/common/collect/LinkedListMultimap$Node;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 365
    :goto_1
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/LinkedListMultimap;->access$400(Lccsancom/google/common/collect/LinkedListMultimap;Lccsancom/google/common/collect/LinkedListMultimap$Node;)V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    .line 367
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedListMultimap;->access$000(Lccsancom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 368
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 307
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->set(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public set(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 399
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 408
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 409
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lccsancom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lccsancom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 410
    return-void
.end method
