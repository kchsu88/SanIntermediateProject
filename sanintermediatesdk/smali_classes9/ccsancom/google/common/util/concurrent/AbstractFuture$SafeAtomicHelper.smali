.class final Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;
.super Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field final waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1264
    .local p1, "waiterThreadUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;>;"
    .local p2, "waiterNextUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;>;"
    .local p3, "waitersUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;>;"
    .local p4, "listenersUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;>;"
    .local p5, "valueUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lccsancom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lccsancom/google/common/util/concurrent/AbstractFuture$1;)V

    .line 1265
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1266
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1267
    iput-object p3, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1268
    iput-object p4, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1269
    iput-object p5, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1270
    return-void
.end method


# virtual methods
.method casListeners(Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;
    .param p3, "update"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1289
    .local p1, "future":Lccsancom/google/common/util/concurrent/AbstractFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casValue(Lccsancom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1294
    .local p1, "future":Lccsancom/google/common/util/concurrent/AbstractFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casWaiters(Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p3, "update"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1284
    .local p1, "future":Lccsancom/google/common/util/concurrent/AbstractFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method putNext(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 1
    .param p1, "waiter"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1279
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1280
    return-void
.end method

.method putThread(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "waiter"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1274
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1275
    return-void
.end method
