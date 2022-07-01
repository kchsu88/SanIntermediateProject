.class Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;->access$000(Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Lccsanandroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 26
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 27
    return-void
.end method
