.class public Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;
.super Ljava/lang/Object;
.source "ExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager$ClassHolder;
    }
.end annotation


# static fields
.field private static instance:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;


# instance fields
.field private final executorSupplier:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->instance:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->executorSupplier:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;
    .locals 1

    .line 13
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager$ClassHolder;->access$000()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    return-object v0
.end method

.method public static shutDown()V
    .locals 1

    .line 25
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->instance:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->instance:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;
    .locals 1

    .line 17
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->executorSupplier:Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    return-object v0
.end method
