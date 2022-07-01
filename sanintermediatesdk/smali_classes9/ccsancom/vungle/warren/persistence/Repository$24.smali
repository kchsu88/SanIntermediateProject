.class Lccsancom/vungle/warren/persistence/Repository$24;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->getVisionAggregationInfo(J)Lccsancom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lccsancom/vungle/warren/vision/VisionAggregationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$after:J


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;J)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 1028
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$24;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-wide p2, p0, Lccsancom/vungle/warren/persistence/Repository$24;->val$after:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsancom/vungle/warren/vision/VisionAggregationInfo;
    .locals 8

    .line 1031
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "vision_data"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v1, "timestamp >= ?"

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 1033
    const-string v1, "_id DESC"

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    .line 1034
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-wide v2, p0, Lccsancom/vungle/warren/persistence/Repository$24;->val$after:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 1035
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$24;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 1036
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$24;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v2}, Lccsancom/vungle/warren/persistence/Repository;->access$400(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/Map;

    move-result-object v2

    const-class v3, Lccsancom/vungle/warren/model/VisionData;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/VisionDataDBAdapter;

    .line 1037
    .local v2, "adapter":Lccsancom/vungle/warren/model/VisionDataDBAdapter;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1039
    :try_start_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1040
    new-instance v3, Lccsanandroid/content/ContentValues;

    invoke-direct {v3}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 1041
    .local v3, "values":Lccsanandroid/content/ContentValues;
    invoke-static {v1, v3}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 1042
    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/VisionDataDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/VisionData;

    move-result-object v4

    .line 1043
    .local v4, "data":Lccsancom/vungle/warren/model/VisionData;
    new-instance v5, Lccsancom/vungle/warren/vision/VisionAggregationInfo;

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, v4, Lccsancom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lccsancom/vungle/warren/vision/VisionAggregationInfo;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1043
    return-object v5

    .line 1046
    .end local v3    # "values":Lccsanandroid/content/ContentValues;
    .end local v4    # "data":Lccsancom/vungle/warren/model/VisionData;
    :cond_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1047
    goto :goto_0

    .line 1046
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1047
    throw v3

    .line 1049
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1028
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$24;->call()Lccsancom/vungle/warren/vision/VisionAggregationInfo;

    move-result-object v0

    return-object v0
.end method
