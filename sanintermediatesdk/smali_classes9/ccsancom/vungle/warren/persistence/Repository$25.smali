.class Lccsancom/vungle/warren/persistence/Repository$25;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->getVisionAggregationData(JILjava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
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
        "Lccsancom/vungle/warren/vision/VisionAggregationData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$after:J

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 1058
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$25;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    iput p3, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$limit:I

    iput-wide p4, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$after:J

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

    .line 1058
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$25;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/vision/VisionAggregationData;",
            ">;"
        }
    .end annotation

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/vision/VisionAggregationData;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    const-string v2, "advertiser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    .line 1063
    const-string v2, "campaign"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    .line 1064
    const-string v2, "creative"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1065
    return-object v0

    .line 1066
    :cond_0
    const-string v1, "viewCount"

    .line 1067
    .local v1, "viewCount":Ljava/lang/String;
    const-string v2, "lastTimeStamp"

    .line 1068
    .local v2, "lastTimeStamp":Ljava/lang/String;
    new-instance v3, Lccsancom/vungle/warren/persistence/Query;

    const-string v4, "vision_data"

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v3, "query":Lccsancom/vungle/warren/persistence/Query;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "COUNT ( * ) as viewCount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "MAX ( timestamp ) as lastTimeStamp"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v8, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    aput-object v8, v4, v5

    iput-object v4, v3, Lccsancom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    .line 1073
    const-string v4, "timestamp >= ?"

    iput-object v4, v3, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 1074
    iget-object v4, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    iput-object v4, v3, Lccsancom/vungle/warren/persistence/Query;->groupBy:Ljava/lang/String;

    .line 1075
    const-string v4, "_id DESC"

    iput-object v4, v3, Lccsancom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    .line 1076
    iget v4, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$limit:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lccsancom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    .line 1077
    new-array v4, v7, [Ljava/lang/String;

    iget-wide v7, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$after:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, v3, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 1078
    iget-object v4, p0, Lccsancom/vungle/warren/persistence/Repository$25;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v4, v4, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v4, v3}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v4

    .line 1079
    .local v4, "cursor":Lccsanandroid/database/Cursor;
    if-eqz v4, :cond_2

    .line 1081
    :goto_0
    :try_start_0
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1082
    new-instance v5, Lccsanandroid/content/ContentValues;

    invoke-direct {v5}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 1083
    .local v5, "values":Lccsanandroid/content/ContentValues;
    invoke-static {v4, v5}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 1084
    new-instance v6, Lccsancom/vungle/warren/vision/VisionAggregationData;

    iget-object v7, p0, Lccsancom/vungle/warren/persistence/Repository$25;->val$filter:Ljava/lang/String;

    .line 1085
    invoke-virtual {v5, v7}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "viewCount"

    .line 1086
    invoke-virtual {v5, v8}, Lccsanandroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "lastTimeStamp"

    .line 1087
    invoke-virtual {v5, v9}, Lccsanandroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lccsancom/vungle/warren/vision/VisionAggregationData;-><init>(Ljava/lang/String;IJ)V

    .line 1084
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    nop

    .end local v5    # "values":Lccsanandroid/content/ContentValues;
    goto :goto_0

    .line 1090
    :cond_1
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 1091
    goto :goto_1

    .line 1090
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V

    .line 1091
    throw v5

    .line 1093
    :cond_2
    :goto_1
    return-object v0
.end method
