.class Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->insert(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

.field final synthetic val$model:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->val$model:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$100(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$002(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 100
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$200(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->val$model:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Lccsanandroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    .line 103
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    nop

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 107
    :goto_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    throw v1

    .line 109
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
