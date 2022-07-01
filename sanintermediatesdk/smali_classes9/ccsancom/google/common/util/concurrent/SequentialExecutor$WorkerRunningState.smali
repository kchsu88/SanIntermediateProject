.class final enum Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
.super Ljava/lang/Enum;
.source "SequentialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WorkerRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum IDLE:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUED:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUING:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

.field public static final enum RUNNING:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 54
    new-instance v0, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 56
    new-instance v1, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v3, "QUEUING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 58
    new-instance v3, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v5, "QUEUED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 59
    new-instance v5, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-string v7, "RUNNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 52
    const/4 v7, 0x4

    new-array v7, v7, [Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$VALUES:[Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 1

    .line 52
    sget-object v0, Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->$VALUES:[Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-virtual {v0}, [Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method
