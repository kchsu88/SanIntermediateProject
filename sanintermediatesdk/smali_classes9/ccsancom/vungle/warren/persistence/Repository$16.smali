.class Lccsancom/vungle/warren/persistence/Repository$16;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->loadValidPlacements()Lccsancom/vungle/warren/persistence/FutureResult;
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
        "Lccsancom/vungle/warren/model/Placement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 682
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$16;->this$0:Lccsancom/vungle/warren/persistence/Repository;

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

    .line 682
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$16;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$16;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 686
    :try_start_0
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    const-string v2, "placement"

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 687
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "is_valid = ?"

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 688
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 690
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$16;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 692
    .local v2, "cursor":Lccsanandroid/database/Cursor;
    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$16;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    const-class v4, Lccsancom/vungle/warren/model/Placement;

    invoke-static {v3, v4, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$700(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 693
    .end local v1    # "query":Lccsancom/vungle/warren/persistence/Query;
    .end local v2    # "cursor":Lccsanandroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
