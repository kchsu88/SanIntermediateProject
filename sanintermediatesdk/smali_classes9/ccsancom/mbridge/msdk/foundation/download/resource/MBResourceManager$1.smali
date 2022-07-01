.class Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;
.super Ljava/lang/Object;
.source "MBResourceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->executeResourceStrategy(Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

.field final synthetic val$config:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;

.field final synthetic val$queue:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;Ljava/util/Queue;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$queue:Ljava/util/Queue;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$config:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    nop

    .line 126
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;-><init>(Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategy;)V

    .line 128
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->access$000()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$config:Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;

    invoke-virtual {v1, v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->processResource(Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method
