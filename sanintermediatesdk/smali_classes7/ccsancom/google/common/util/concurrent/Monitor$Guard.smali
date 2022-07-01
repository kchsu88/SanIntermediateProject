.class public abstract Lccsancom/google/common/util/concurrent/Monitor$Guard;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Guard"
.end annotation


# instance fields
.field final condition:Ljava/util/concurrent/locks/Condition;

.field final monitor:Lccsancom/google/common/util/concurrent/Monitor;

.field next:Lccsancom/google/common/util/concurrent/Monitor$Guard;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field waiterCount:I


# direct methods
.method protected constructor <init>(Lccsancom/google/common/util/concurrent/Monitor;)V
    .locals 1
    .param p1, "monitor"    # Lccsancom/google/common/util/concurrent/Monitor;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 317
    const-string v0, "monitor"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/Monitor;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Monitor$Guard;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    .line 318
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/Monitor;->access$000(Lccsancom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    .line 319
    return-void
.end method


# virtual methods
.method public abstract isSatisfied()Z
.end method
