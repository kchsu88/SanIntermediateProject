.class public Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;


# instance fields
.field private volatile database:Lccsanandroid/database/sqlite/SQLiteDatabase;

.field private databaseOpenHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

.field private final handler:Lccsanandroid/os/Handler;

.field object:Ljava/lang/Object;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->object:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    .line 25
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->databaseOpenHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    .line 26
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->tableName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 15
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static synthetic access$002(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;
    .locals 0

    .line 15
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->databaseOpenHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    return-object p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->tableName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 278
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$9;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$9;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public findAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    nop

    .line 255
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->databaseOpenHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 258
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {p0, v2, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_1

    .line 261
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v2

    .line 263
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    goto :goto_0

    .line 269
    :cond_1
    if-eqz v1, :cond_2

    .line 270
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 272
    :cond_2
    return-object v0

    .line 269
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 270
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 272
    :cond_3
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    nop

    .line 269
    nop

    .line 272
    return-object v0
.end method

.method public findByDownloadUrl(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public getUnwantedModels(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    nop

    .line 195
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->databaseOpenHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 198
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 199
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->tableName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WHERE "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "last_modified_time"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " <= "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    :cond_1
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 208
    :cond_2
    if-eqz v1, :cond_3

    .line 209
    goto :goto_0

    .line 208
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 205
    :catch_0
    move-exception p1

    .line 206
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    if-eqz v1, :cond_3

    .line 209
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 212
    :cond_3
    return-object v0

    .line 208
    :goto_1
    if-eqz v1, :cond_4

    .line 209
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 211
    :cond_4
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public insert(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$3;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 1

    .line 235
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->databaseOpenHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 238
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 239
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 240
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    nop

    .line 245
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 241
    return-object p1

    .line 245
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    throw p1

    .line 242
    :catch_0
    move-exception p1

    .line 243
    const/4 p1, 0x0

    .line 245
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->database:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 243
    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$7;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$7;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$6;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public update(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$4;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public updateProgress(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$5;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public updateUnzipResource(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 218
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;->handler:Lccsanandroid/os/Handler;

    new-instance p3, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;

    invoke-direct {p3, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper$8;-><init>(Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method
