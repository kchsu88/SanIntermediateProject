.class Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->remove(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

.field final synthetic val$directoryPath:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->val$directoryPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$100(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$002(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 160
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$200(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "director_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;->val$directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_0
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
