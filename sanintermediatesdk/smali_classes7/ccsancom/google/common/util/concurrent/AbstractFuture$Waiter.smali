.class final Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Waiter"
.end annotation


# static fields
.field static final TOMBSTONE:Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;


# instance fields
.field volatile next:Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field volatile thread:Ljava/lang/Thread;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 178
    new-instance v0, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>(Z)V

    sput-object v0, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$200()Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->putThread(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V

    .line 192
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "unused"    # Z

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setNext(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 1
    .param p1, "next"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 197
    invoke-static {}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$200()Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->putNext(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 198
    return-void
.end method

.method unpark()V
    .locals 2

    .line 204
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 205
    .local v0, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 207
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 209
    :cond_0
    return-void
.end method
