.class final enum Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;
.super Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;-><init>(Ljava/lang/String;ILccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    return-void
.end method


# virtual methods
.method public handlePotentialDeadlock(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V
    .locals 0
    .param p1, "e"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 230
    return-void
.end method
