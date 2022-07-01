.class Lccsancom/vungle/warren/persistence/Repository$18;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->getValidPlacementIds()Lccsancom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 733
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$18;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$18;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$18;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$18;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lccsancom/vungle/warren/persistence/Repository;->access$1200(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
