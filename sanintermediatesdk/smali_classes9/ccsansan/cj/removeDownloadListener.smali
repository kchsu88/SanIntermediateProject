.class public Lccsansan/cj/removeDownloadListener;
.super Lccsansan/ai/removeDownloadListener;
.source ""


# instance fields
.field public unifiedDownload:Lccsanorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLccsanorg/json/JSONObject;)V
    .locals 12

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lccsansan/ai/removeDownloadListener;-><init>(Ljava/lang/String;JLccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 3
    move-object/from16 v1, p11

    iput-object v1, v0, Lccsansan/cj/removeDownloadListener;->unifiedDownload:Lccsanorg/json/JSONObject;

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/cj/removeDownloadListener;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    const-string v1, "time"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2
    const-string v1, "commit_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    const-string v1, "sn"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 5
    const-string v1, "type"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 6
    const-string v2, "name"

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7
    const-string v6, "label"

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 8
    const-string v6, "value"

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 10
    new-instance v13, Lccsanorg/json/JSONObject;

    invoke-direct {v13}, Lccsanorg/json/JSONObject;-><init>()V

    const/4 v14, 0x1

    :goto_0
    const/16 v15, 0x20

    if-gt v14, v15, :cond_1

    .line 12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 13
    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v15}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v13, v15, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lccsansan/cj/removeDownloadListener;

    invoke-static {v1}, Lccsansan/ai/removeDownloadListener$getDownloadingList;->fromInt(I)Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v6

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lccsansan/cj/removeDownloadListener;-><init>(Ljava/lang/String;JLccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLccsanorg/json/JSONObject;)V

    return-object v0
.end method
