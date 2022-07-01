.class Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;
.super Ljava/lang/Object;
.source "SDKExecutors.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/utility/SDKExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedThreadFactory"
.end annotation


# instance fields
.field private atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final name:Ljava/lang/String;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    iput-object p1, p0, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->name:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 213
    iget-object v0, p0, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 214
    .local v0, "t":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-th-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 215
    return-object v0
.end method
