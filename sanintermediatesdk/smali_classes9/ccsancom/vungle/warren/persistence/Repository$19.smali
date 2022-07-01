.class Lccsancom/vungle/warren/persistence/Repository$19;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->getAvailableBidTokens(II)Lccsancom/vungle/warren/persistence/FutureResult;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$commaDelimiterBytePadding:I

.field final synthetic val$maxNumberOfBytes:I


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;II)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 752
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$19;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput p2, p0, Lccsancom/vungle/warren/persistence/Repository$19;->val$maxNumberOfBytes:I

    iput p3, p0, Lccsancom/vungle/warren/persistence/Repository$19;->val$commaDelimiterBytePadding:I

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

    .line 752
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$19;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$19;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 756
    :try_start_0
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    const-string v2, "advertisement"

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "bid_token != \'\' AND ( state = ? OR state = ? ) AND expire_time > ?"

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 761
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bid_token"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iput-object v3, v1, Lccsancom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    .line 762
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 763
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 765
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$19;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 766
    .local v2, "cursor":Lccsanandroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 767
    .local v3, "bidTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 769
    .local v4, "sizeOfTokens":I
    if-eqz v2, :cond_2

    .line 771
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lccsancom/vungle/warren/persistence/Repository$19;->val$maxNumberOfBytes:I

    if-ge v4, v5, :cond_1

    .line 772
    const-string v5, "bid_token"

    invoke-interface {v2, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 773
    .local v5, "bidTokenColumnIndex":I
    invoke-interface {v2, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 775
    .local v6, "bidToken":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v7, v4

    iget v8, p0, Lccsancom/vungle/warren/persistence/Repository$19;->val$maxNumberOfBytes:I

    if-gt v7, v8, :cond_0

    .line 776
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    iget v8, p0, Lccsancom/vungle/warren/persistence/Repository$19;->val$commaDelimiterBytePadding:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 777
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    .end local v5    # "bidTokenColumnIndex":I
    .end local v6    # "bidToken":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 781
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 782
    goto :goto_1

    .line 781
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 782
    throw v5

    .line 784
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v3

    .line 785
    .end local v1    # "query":Lccsancom/vungle/warren/persistence/Query;
    .end local v2    # "cursor":Lccsanandroid/database/Cursor;
    .end local v3    # "bidTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sizeOfTokens":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
