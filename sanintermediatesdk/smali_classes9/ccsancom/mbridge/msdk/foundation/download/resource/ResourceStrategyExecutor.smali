.class Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;
.super Ljava/lang/Object;
.source "ResourceStrategyExecutor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/resource/IResourceStrategy;


# instance fields
.field private resourceStrategy:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->resourceStrategy:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    .line 10
    return-void
.end method


# virtual methods
.method public getResourceStrategyName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->resourceStrategy:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;->getResourceStrategyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processResource(Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->resourceStrategy:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;->processResource(Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_0
    :goto_0
    return-void
.end method
