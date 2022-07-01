.class Lccsancom/vungle/warren/OperationSequence;
.super Ljava/lang/Object;
.source "OperationSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/OperationSequence$Entry;
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lccsancom/vungle/warren/OperationSequence$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lccsancom/vungle/warren/OperationSequence$1;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/OperationSequence$1;-><init>(Lccsancom/vungle/warren/OperationSequence;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method offer(Lccsancom/vungle/warren/OperationSequence$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lccsancom/vungle/warren/OperationSequence$Entry;

    .line 63
    iget-object v0, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method poll()Lccsancom/vungle/warren/OperationSequence$Entry;
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/OperationSequence$Entry;

    return-object v0
.end method

.method remove(Lccsancom/vungle/warren/AdRequest;)Lccsancom/vungle/warren/OperationSequence$Entry;
    .locals 4
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "entry":Lccsancom/vungle/warren/OperationSequence$Entry;
    iget-object v1, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/OperationSequence$Entry;

    .line 53
    .local v2, "op":Lccsancom/vungle/warren/OperationSequence$Entry;
    iget-object v3, v2, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v3, p1}, Lccsancom/vungle/warren/AdRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    move-object v0, v2

    .line 55
    goto :goto_1

    .line 57
    .end local v2    # "op":Lccsancom/vungle/warren/OperationSequence$Entry;
    :cond_0
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    iget-object v1, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method removeAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/OperationSequence$Entry;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/vungle/warren/OperationSequence$Entry;>;"
    :goto_0
    iget-object v1, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lccsancom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/OperationSequence$Entry;

    .line 79
    .local v1, "e":Lccsancom/vungle/warren/OperationSequence$Entry;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v1    # "e":Lccsancom/vungle/warren/OperationSequence$Entry;
    :cond_0
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method
