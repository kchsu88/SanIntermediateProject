.class Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->updateProgress(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

.field final synthetic val$directoryPath:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$model:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->val$model:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->val$directoryPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 138
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$100(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$002(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 141
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$200(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->val$model:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Lccsanandroid/content/ContentValues;

    move-result-object v3

    const-string v4, "download_id = ? AND director_path = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->val$id:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;->val$directoryPath:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 144
    :catch_0
    move-exception v1

    .line 145
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :goto_0
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
