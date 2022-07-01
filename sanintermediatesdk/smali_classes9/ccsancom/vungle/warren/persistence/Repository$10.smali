.class Lccsancom/vungle/warren/persistence/Repository$10;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->loadAllReportToSend()Lccsancom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lccsancom/vungle/warren/model/Report;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 539
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$10;->this$0:Lccsancom/vungle/warren/persistence/Repository;

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

    .line 539
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$10;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Report;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$10;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/Report;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->access$600(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "sendReports":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Report;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Report;

    .line 544
    .local v2, "report":Lccsancom/vungle/warren/model/Report;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Report;->setStatus(I)V

    .line 546
    :try_start_0
    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$10;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    nop

    .line 550
    .end local v2    # "report":Lccsancom/vungle/warren/model/Report;
    goto :goto_0

    .line 547
    .restart local v2    # "report":Lccsancom/vungle/warren/model/Report;
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v3, 0x0

    return-object v3

    .line 551
    .end local v1    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v2    # "report":Lccsancom/vungle/warren/model/Report;
    :cond_0
    return-object v0
.end method
