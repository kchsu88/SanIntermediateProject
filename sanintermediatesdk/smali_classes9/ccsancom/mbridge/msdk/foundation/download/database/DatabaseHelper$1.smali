.class Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->find(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

.field final synthetic val$databaseListener:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

.field final synthetic val$directoryPath:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$directoryPath:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$databaseListener:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 35
    const-string v0, " = \'"

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$100(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$002(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 38
    :cond_0
    nop

    .line 39
    nop

    .line 41
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$200(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "director_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 50
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 52
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$databaseListener:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    if-eqz v0, :cond_4

    .line 53
    goto :goto_2

    .line 49
    :catchall_0
    move-exception v2

    move-object v0, v1

    goto :goto_3

    .line 46
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 47
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    if-eqz v0, :cond_3

    .line 50
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 52
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$databaseListener:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    if-eqz v0, :cond_4

    .line 53
    :goto_2
    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;->onDatabase(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 56
    :cond_4
    return-void

    .line 49
    :catchall_1
    move-exception v2

    :goto_3
    if-eqz v0, :cond_5

    .line 50
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 52
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;->val$databaseListener:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    if-eqz v0, :cond_6

    .line 53
    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;->onDatabase(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 55
    :cond_6
    throw v2
.end method
