.class abstract Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
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
.field expectedModCount:I

.field lastReturned:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lccsancom/google/gson/internal/LinkedHashTreeMap;)V
    .locals 1

    .line 765
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;, "Lccsancom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iput-object p1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object v0, p1, Lccsancom/google/gson/internal/LinkedHashTreeMap;->header:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 763
    iget p1, p1, Lccsancom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    .line 766
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 769
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;, "Lccsancom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lccsancom/google/gson/internal/LinkedHashTreeMap;->header:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final nextNode()Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 773
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;, "Lccsancom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 774
    .local v0, "e":Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;, "Lccsancom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lccsancom/google/gson/internal/LinkedHashTreeMap;->header:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lccsancom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_0

    .line 780
    iget-object v1, v0, Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 781
    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    return-object v0

    .line 778
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 775
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public final remove()V
    .locals 3

    .line 785
    .local p0, "this":Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;, "Lccsancom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lccsancom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lccsancom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 790
    iget-object v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lccsancom/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lccsancom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lccsancom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    .line 791
    return-void

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
