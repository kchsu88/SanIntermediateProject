.class Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->updateUnzipResource(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 221
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$100(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$002(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 224
    :cond_0
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 225
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->val$id:Ljava/lang/String;

    const-string v2, "download_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->this$0:Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$200(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;->val$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    return-void
.end method
