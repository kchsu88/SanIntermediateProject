.class Lccsancom/vungle/warren/persistence/Repository$11;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->loadReadyOrFailedReportToSend()Lccsancom/vungle/warren/persistence/FutureResult;
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

    .line 560
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$11;->this$0:Lccsancom/vungle/warren/persistence/Repository;

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

    .line 560
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Report;",
            ">;"
        }
    .end annotation

    .line 563
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "report"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v1, "status = ?  OR status = ? "

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 567
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 568
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$11;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 569
    .local v2, "cursor":Lccsanandroid/database/Cursor;
    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$11;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    const-class v4, Lccsancom/vungle/warren/model/Report;

    invoke-static {v3, v4, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$700(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 570
    .local v3, "sendReports":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Report;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Report;

    .line 571
    .local v5, "report":Lccsancom/vungle/warren/model/Report;
    invoke-virtual {v5, v1}, Lccsancom/vungle/warren/model/Report;->setStatus(I)V

    .line 573
    :try_start_0
    iget-object v6, p0, Lccsancom/vungle/warren/persistence/Repository$11;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v6, v5}, Lccsancom/vungle/warren/persistence/Repository;->access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    nop

    .line 577
    .end local v5    # "report":Lccsancom/vungle/warren/model/Report;
    goto :goto_0

    .line 574
    .restart local v5    # "report":Lccsancom/vungle/warren/model/Report;
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v4, 0x0

    return-object v4

    .line 578
    .end local v1    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v5    # "report":Lccsancom/vungle/warren/model/Report;
    :cond_0
    return-object v3
.end method
