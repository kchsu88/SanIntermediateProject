.class final Lccsancom/google/common/util/concurrent/Striped$WeakSafeCondition;
.super Lccsancom/google/common/util/concurrent/ForwardingCondition;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakSafeCondition"
.end annotation


# instance fields
.field private final delegate:Ljava/util/concurrent/locks/Condition;

.field private final strongReference:Lccsancom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Condition;Lccsancom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;)V
    .locals 0
    .param p1, "delegate"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "strongReference"    # Lccsancom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;

    .line 369
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ForwardingCondition;-><init>()V

    .line 370
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/Striped$WeakSafeCondition;->delegate:Ljava/util/concurrent/locks/Condition;

    .line 371
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/Striped$WeakSafeCondition;->strongReference:Lccsancom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;

    .line 372
    return-void
.end method


# virtual methods
.method delegate()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 376
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Striped$WeakSafeCondition;->delegate:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method
