.class public Lccsansan/dr/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:Z

.field private static deleteDownItem:I

.field private static getDownloadedRecordByUrl:Z

.field private static getDownloadingList:[C

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field public static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsansan/dr/addDownloadListener;->addDownloadListener()V

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v0, 0xb0

    sput v0, Lccsansan/dr/addDownloadListener;->unifiedDownload:I

    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x3ft
        0x3et
        0x33t
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        -0x6t
        0xbt
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x17t
        0x2et
        0x1t
        0x8t
        -0xdt
        0x15t
        -0x2t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x44t
        -0x1t
        -0x3dt
        0x24t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 2

    .line 9
    sget v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v1, 0x4

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_3
    :try_start_2
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V

    goto :goto_4

    :cond_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 9
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    :cond_2
    move-object p0, v0

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    .line 7
    :catch_0
    move-exception p0

    .line 9
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V

    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dh/getDownloadingList;",
            ">;)V"
        }
    .end annotation

    .line 63
    nop

    .line 52
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-static {}, Lccsansan/dr/getDownloadingList;->addDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 63
    const/16 v2, 0x40

    goto :goto_0

    :cond_1
    const/16 v2, 0x2c

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget v2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 56
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    sget v4, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 57
    :cond_4
    :goto_2
    :pswitch_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/dh/getDownloadingList;

    .line 58
    invoke-virtual {v4}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 59
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lccsansan/dh/getDownloadingList;->removeDownloadListener(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 63
    const-string v0, "ALHelper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsanorg/json/JSONArray;)V
    .locals 20

    .line 51
    const-string v0, "last_obb_modify"

    const-string v1, "obb_size"

    const-string v2, "obb_changed_count"

    const-string v3, "data_size"

    const-string v4, "data_changed_count"

    const-string v5, "cache_changed_count"

    const-string v6, "cache_size"

    .line 4
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 51
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v8, Lccsanorg/json/JSONArray;

    invoke-direct {v8, v7}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(Lccsanorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v7

    .line 14
    invoke-static/range {p0 .. p0}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(Lccsanorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v8

    .line 16
    new-instance v9, Ljava/util/HashSet;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    new-instance v10, Ljava/util/HashSet;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 27
    sget v12, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v12, v12, 0x4d

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_1

    .line 51
    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 19
    :goto_0
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    .line 20
    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 27
    const/16 v16, 0x44

    goto :goto_1

    :cond_2
    const/16 v16, 0x33

    :goto_1
    packed-switch v16, :pswitch_data_0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v17, v11

    goto :goto_0

    .line 21
    :pswitch_0
    invoke-interface {v10, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v9, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v13, v13, 0x1

    .line 26
    :cond_3
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_4

    .line 27
    const/16 v2, 0x24

    goto :goto_2

    :cond_4
    const/16 v2, 0x5e

    :goto_2
    packed-switch v2, :pswitch_data_1

    move-object/from16 v19, v3

    goto :goto_3

    .line 51
    :pswitch_1
    sget v2, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v11, v2, 0x80

    sput v11, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    const-string v11, "last_modify"

    if-nez v2, :cond_5

    .line 27
    :try_start_2
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, 0x0

    :try_start_3
    array-length v3, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_6

    goto :goto_3

    .line 51
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_5
    move-object/from16 v19, v3

    .line 27
    :try_start_4
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 29
    :cond_6
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v2, :cond_8

    .line 27
    sget v2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 30
    :cond_7
    :try_start_5
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    add-int/lit8 v15, v15, 0x1

    :cond_9
    move-object/from16 v11, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_0

    .line 19
    :cond_a
    move-object/from16 v18, v2

    .line 34
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v0

    .line 35
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 40
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v6

    rsub-int/lit8 v3, v6, 0x7f

    const-string v6, "\u008c\u008b\u0092\u0085\u0084\u0098\u008e\u008e\u008d\u008c\u0089\u008b\u0097"

    const/4 v7, 0x0

    invoke-static {v7, v3, v7, v6}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x30

    :try_start_6
    invoke-static {v7}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    add-int/lit8 v7, v7, 0x4f

    const/4 v8, 0x0

    invoke-static {v8, v7, v8, v6}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-virtual {v2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v0, ""

    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    const-string v3, "\u008c\u008b\u0092\u0085\u0084\u0098\u008e\u008e\u008d\u008c\u0089\u008b\u0097\u008b\u0092"

    const/4 v6, 0x0

    invoke-static {v6, v0, v6, v3}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_7
    invoke-static {v6}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    shr-int/lit8 v7, v7, 0x6

    add-int/lit8 v7, v7, 0x7f

    const/4 v8, 0x0

    invoke-static {v8, v7, v8, v3}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 46
    invoke-virtual {v2, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v2, v5, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 47
    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v14

    invoke-virtual {v2, v4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 48
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 49
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dr/getDownloadingList;->getDownloadingList(Ljava/lang/String;)V
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    .line 51
    :goto_4
    const-string v1, "ALHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 27
    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    const/4 v12, 0x1

    :goto_6
    packed-switch v12, :pswitch_data_2

    .line 51
    return-void

    :pswitch_2
    const/4 v1, 0x0

    :try_start_8
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    :catch_2
    move-exception v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    .line 31
    nop

    .line 1
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 3
    invoke-static {}, Lccsansan/dr/getDownloadingList;->deleteDownItem()J

    move-result-wide v1

    .line 4
    invoke-static {p0}, Lccsansan/dr/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 31
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 7
    new-instance v7, Lccsanorg/json/JSONArray;

    invoke-direct {v7}, Lccsanorg/json/JSONArray;-><init>()V

    .line 8
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 9
    invoke-static {}, Lccsansan/dr/removeDownloadListener;->removeDownloadListener()Lccsansan/dr/removeDownloadListener;

    move-result-object v8

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-virtual {v7}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, p2}, Lccsansan/dr/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_0

    .line 11
    const/16 v8, 0x32

    goto :goto_1

    :cond_0
    const/16 v8, 0x8

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto :goto_4

    .line 29
    :pswitch_0
    sget v7, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v7, v7, 0x51

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    .line 11
    const/16 v7, 0x46

    goto :goto_2

    :cond_1
    const/16 v7, 0x23

    :goto_2
    packed-switch v7, :pswitch_data_1

    :try_start_1
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x1

    :try_start_2
    div-int/2addr v6, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 29
    :catchall_0
    move-exception p0

    throw p0

    .line 11
    :goto_3
    :try_start_3
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 14
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsansan/cb/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    .line 31
    const/4 v5, 0x1

    .line 14
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v5, 0x1

    goto :goto_6

    :catch_1
    move-exception p0

    .line 19
    :goto_6
    const-string p2, "ALHelper"

    invoke-static {p2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_2
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_4

    .line 11
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 22
    :cond_3
    nop

    .line 23
    const-string p0, ""

    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_7

    .line 25
    :cond_4
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    :goto_7
    if-eqz v5, :cond_7

    .line 28
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 31
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    .line 11
    goto :goto_8

    :cond_5
    const/4 v3, 0x1

    :goto_8
    packed-switch v3, :pswitch_data_2

    .line 29
    invoke-static {p1}, Lccsansan/dr/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_2
    invoke-static {p1}, Lccsansan/dr/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    const/4 p0, 0x0

    :try_start_5
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31
    :goto_a
    goto :goto_b

    :catchall_1
    move-exception p0

    throw p0

    .line 30
    :cond_6
    :goto_b
    invoke-static {v1, v2}, Lccsansan/dr/getDownloadingList;->addDownloadListener(J)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lccsansan/dr/getDownloadingList;->getDownloadingList(J)V

    sget p0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    :cond_7
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONArray;
    .locals 2

    .line 49
    sget v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 47
    :cond_0
    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lccsanorg/json/JSONArray;

    invoke-direct {p0}, Lccsanorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    :cond_2
    move-object p0, v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 49
    new-instance p0, Lccsanorg/json/JSONArray;

    invoke-direct {p0}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_0
    return-object p0
.end method

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x4c

    sput v0, Lccsansan/dr/addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/dr/addDownloadListener;->getDownloadedRecordByUrl:Z

    sput-boolean v0, Lccsansan/dr/addDownloadListener;->addDownloadListener:Z

    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dr/addDownloadListener;->getDownloadingList:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x6fs
        0xbes
        0xb1s
        0xafs
        0xbbs
        0xb0s
        0x8ds
        0xbcs
        0xbfs
        0x95s
        0xbas
        0xc0s
        0xads
        0xb8s
        0x92s
        0xb9s
        0x8fs
        0xc1s
        0x6cs
        0x93s
        0x9cs
        0x86s
        0xb5s
        0xabs
    .end array-data
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsansan/dh/getDownloadingList;",
            ">;)V"
        }
    .end annotation

    .line 64
    nop

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const/16 v4, 0x47

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/dh/getDownloadingList;

    .line 53
    invoke-virtual {v4}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    const-string v5, "unknown"

    invoke-static {v5, v4}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 61
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v3

    .line 62
    invoke-static {v2}, Lccsansan/dr/getDownloadingList;->IncentiveDownloadUtils(I)V

    .line 63
    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->getDownloadingList(I)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    const-string v3, "\u0096\u0095\u0094\u0093\u0093\u008c\u008b\u0092\u0085\u0091\u0090\u0085\u0082\u008f\u008e\u008e\u008d\u008c\u0089\u008b\u008a\u0089\u0088\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v3}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Other:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ALHelper"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    sget v5, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v5, v5, 0x11

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 54
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    :cond_3
    const-string v5, "com.android.vending"

    invoke-static {v5, v4}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v4, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    const/16 v4, 0x35

    goto :goto_4

    :cond_5
    const/16 v4, 0x4f

    :goto_4
    packed-switch v4, :pswitch_data_2

    add-int/lit8 v2, v2, 0x21

    goto/16 :goto_0

    .line 57
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_2
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dh/getDownloadingList;",
            ">;)V"
        }
    .end annotation

    .line 46
    nop

    .line 42
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    invoke-static {}, Lccsansan/dr/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    throw p0

    .line 32
    :cond_0
    :try_start_2
    invoke-static {}, Lccsansan/dr/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_2

    .line 33
    const/16 v2, 0x1d

    goto :goto_1

    :cond_2
    const/16 v2, 0xa

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 46
    sget v2, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 39
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v5, 0x12

    :try_start_4
    div-int/2addr v5, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 46
    :catchall_1
    move-exception p0

    throw p0

    .line 39
    :cond_3
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 33
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsansan/dh/getDownloadingList;

    .line 41
    invoke-virtual {v5}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v6, :cond_4

    .line 40
    sget v6, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v6, v6, 0x3f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 42
    :try_start_6
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lccsansan/dh/getDownloadingList;->removeDownloadListener(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v5, 0x1

    :try_start_7
    div-int/2addr v5, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 40
    :catchall_2
    move-exception p0

    throw p0

    .line 42
    :cond_6
    :try_start_8
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lccsansan/dh/getDownloadingList;->removeDownloadListener(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 46
    const-string v0, "ALHelper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :pswitch_1
    sget p0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 3
    sget v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    const/16 v1, 0x17

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v1, 0x5f

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lccsansan/dr/removeDownloadListener;->removeDownloadListener()Lccsansan/dr/removeDownloadListener;

    move-result-object v1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p2}, Lccsansan/dr/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-static {}, Lccsansan/dr/removeDownloadListener;->removeDownloadListener()Lccsansan/dr/removeDownloadListener;

    move-result-object v1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p2}, Lccsansan/dr/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    :try_start_0
    array-length p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/16 p2, 0x56

    goto :goto_1

    :cond_1
    const/16 p2, 0x35

    :goto_1
    packed-switch p2, :pswitch_data_1

    goto :goto_3

    .line 3
    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    sget p2, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x23

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    :cond_2
    invoke-static {p1}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    :cond_3
    :goto_3
    sget p1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 1
    const/16 p1, 0x40

    goto :goto_4

    :cond_4
    const/16 p1, 0x26

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 3
    return p0

    :pswitch_2
    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;)J
    .locals 14

    .line 84
    nop

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    :try_start_0
    sget-object v2, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v3, 0x1a

    aget-byte v4, v2, v3

    int-to-byte v4, v4

    const/16 v5, 0x18

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    const/16 v7, 0x9

    aget-byte v7, v2, v7

    sub-int/2addr v7, v6

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lccsansan/dr/addDownloadListener;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x4

    aget-byte v7, v2, v5

    int-to-byte v7, v7

    int-to-byte v8, v7

    const/16 v9, 0x16

    aget-byte v9, v2, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lccsansan/dr/addDownloadListener;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v9, 0x0

    const/4 v4, 0x2

    :try_start_1
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v6

    aput-object p0, v7, v11

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    sget v12, Lccsansan/dr/addDownloadListener;->unifiedDownload:I

    and-int/lit8 v12, v12, 0x68

    int-to-byte v12, v12

    const/4 v13, 0x7

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v3, v12, v13}, Lccsansan/dr/addDownloadListener;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v12, v2, v5

    int-to-byte v12, v12

    or-int/lit8 v13, v12, 0x43

    int-to-byte v13, v13

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    invoke-static {v12, v13, v2}, Lccsansan/dr/addDownloadListener;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v5, v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    iget-object p0, v1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p0, v2, :cond_3

    .line 84
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v4

    if-nez p0, :cond_0

    .line 76
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    iget-object p0, v1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object p0, v1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :try_start_2
    array-length v1, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    const/16 v1, 0x1b

    goto :goto_1

    :cond_1
    const/16 v1, 0x63

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 84
    :catchall_0
    move-exception p0

    throw p0

    .line 76
    :goto_2
    const/4 v6, 0x0

    :cond_2
    packed-switch v6, :pswitch_data_2

    :goto_3
    goto :goto_4

    .line 77
    :pswitch_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_4
    nop

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 84
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_4

    .line 80
    :cond_4
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v9, v0

    .line 84
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/2addr v0, v4

    goto :goto_5

    .line 83
    :cond_5
    return-wide v9

    .line 66
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    throw v1

    :cond_6
    throw v0
    :try_end_3
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ALHelper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v9

    .line 66
    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    throw v0

    :cond_7
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(BBS)Ljava/lang/String;
    .locals 8

    sget v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 p2, p2, 0xe

    sget-object v0, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils:[B

    rsub-int/lit8 p1, p1, 0x47

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x67

    new-array v2, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    move-object v1, v0

    const/4 v5, 0x0

    move v0, p2

    move p2, p1

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    int-to-byte v5, p0

    aput-byte v5, v2, v1

    add-int/lit8 v5, v1, 0x1

    if-ne v1, p2, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte v1, v0, p1

    move v7, p2

    move p2, p1

    move p1, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x2

    add-int/lit8 p1, p2, 0x1

    sget p2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 v6, p2, 0x80

    sput v6, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    const/16 p2, 0x22

    goto :goto_4

    :cond_3
    const/16 p2, 0x2d

    :goto_4
    packed-switch p2, :pswitch_data_2

    :pswitch_2
    move p2, v0

    move-object v0, v1

    move v1, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 1163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    sget-object v1, Lccsansan/dr/addDownloadListener;->getDownloadingList:[C

    .line 1166
    sget v2, Lccsansan/dr/addDownloadListener;->removeDownloadListener:I

    .line 1168
    sget-boolean v3, Lccsansan/dr/addDownloadListener;->getDownloadedRecordByUrl:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1170
    nop

    .line 1171
    array-length p0, p3

    .line 1172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 1176
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    .line 1174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 1179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 1182
    :cond_3
    sget-boolean p3, Lccsansan/dr/addDownloadListener;->addDownloadListener:Z

    if-eqz p3, :cond_5

    .line 1184
    nop

    .line 1185
    array-length p2, p0

    .line 1186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 1188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 1190
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-char v3, p0, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 1188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 1193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 1198
    :cond_5
    nop

    .line 1199
    array-length p0, p2

    .line 1200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 1204
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget v3, p2, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 1202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 1207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 6
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/dr/removeDownloadListener;->removeDownloadListener()Lccsansan/dr/removeDownloadListener;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p0, p2}, Lccsansan/dr/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/dr/removeDownloadListener;->removeDownloadListener()Lccsansan/dr/removeDownloadListener;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p0, p2}, Lccsansan/dr/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x31

    goto :goto_1

    :cond_1
    const/16 p0, 0x58

    :goto_1
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    const/16 p0, 0x26

    goto :goto_3

    :cond_2
    const/16 p0, 0x1a

    :goto_3
    packed-switch p0, :pswitch_data_2

    goto :goto_5

    .line 3
    :goto_4
    invoke-static {p1}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lccsansan/dr/getDownloadingList;->unifiedDownload(Z)V

    goto :goto_6

    :goto_5
    :pswitch_2
    nop

    .line 6
    invoke-static {v2}, Lccsansan/dr/getDownloadingList;->unifiedDownload(Z)V

    :goto_6
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    const/16 p0, 0x34

    :try_start_1
    div-int/2addr p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(ZZ)V
    .locals 9

    .line 47
    nop

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    .line 16
    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v4, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 12
    :cond_1
    if-nez p1, :cond_4

    .line 14
    invoke-static {}, Lccsansan/dr/getDownloadingList;->removeDownloadListener()J

    move-result-wide v4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lccsansan/bw/AdFormat;->getDownloadingList(JJ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 16
    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/16 v6, 0x26

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_5

    .line 47
    :pswitch_0
    sget v6, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v6, v6, 0x4d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 16
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_2
    packed-switch v6, :pswitch_data_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {}, Lccsansan/dr/getDownloadedList;->IncentiveDownloadUtils()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    :goto_3
    goto :goto_4

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {}, Lccsansan/dr/getDownloadedList;->IncentiveDownloadUtils()J

    move-result-wide v4

    cmp-long v8, v6, v4

    if-gez v8, :cond_4

    goto :goto_3

    :goto_4
    return-void

    :cond_4
    :goto_5
    :pswitch_2
    nop

    .line 20
    const-string v4, "AppInfos"

    invoke-static {v0, v2, v4}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 16
    const/4 v5, 0x1

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_3

    goto/16 :goto_a

    .line 21
    :pswitch_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_a

    .line 24
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 47
    sget v5, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v5, v5, 0x69

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    .line 24
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/content/pm/PackageInfo;

    .line 25
    sget-object v6, Lccsansan/dh/addDownloadListener;->AZ:Lccsansan/dh/addDownloadListener;

    invoke-static {v5, v6}, Lccsansan/dr/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/pm/PackageInfo;Lccsansan/dh/addDownloadListener;)Lccsansan/dh/getDownloadingList;

    move-result-object v5

    .line 26
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#recordAppsInfo packages size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ALHelper"

    invoke-static {v5, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v1}, Lccsansan/dr/addDownloadListener;->addDownloadListener(Ljava/util/List;)V

    .line 31
    invoke-static {v1}, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 32
    invoke-static {v1}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(Ljava/util/List;)V

    .line 34
    invoke-static {v0, v1}, Lccsansan/dr/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/util/List;)V

    .line 36
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 38
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    sget v4, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x69

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 38
    :cond_9
    :goto_8
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 16
    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    const/4 v4, 0x1

    :goto_9
    packed-switch v4, :pswitch_data_4

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/dh/getDownloadingList;

    .line 39
    invoke-virtual {v4, v3}, Lccsansan/dh/getDownloadingList;->removeDownloadListener(Z)Lccsanorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v1

    .line 41
    invoke-static {v5, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :pswitch_4
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v3, :cond_b

    return-void

    .line 47
    :cond_b
    invoke-static {p0, p1, v0}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(ZZLccsanorg/json/JSONArray;)V

    return-void

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanorg/json/JSONArray;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 107
    const-string v0, "obb_create_time"

    const-string v1, "cache_create_time"

    const-string v2, "last_obb_modify"

    const-string v3, "obb_size"

    const-string v4, "last_modify"

    const-string v5, "data_size"

    const-string v6, "cache_size"

    .line 90
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 107
    sget v9, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v9, v9, 0x69

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_0

    const/16 v9, 0x45

    goto :goto_0

    :cond_0
    const/16 v9, 0x61

    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 91
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 93
    :try_start_0
    invoke-virtual {p0, v8}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v9

    const-string v10, "id"

    .line 94
    invoke-virtual {v9, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_3

    .line 97
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-virtual {v9, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v9, v5}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v9, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v9, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v9, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v9, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    sget v9, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v9, v9, 0x51

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    const/16 v9, 0x13

    goto :goto_2

    :cond_2
    const/16 v9, 0x17

    :goto_2
    packed-switch v9, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    .line 105
    :catch_0
    move-exception v9

    .line 107
    const-string v10, "ALHelper"

    invoke-static {v10, v9}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    sget p0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-object v7

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 6
    sget v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/16 v0, 0x3d

    goto :goto_1

    :cond_1
    const/16 v0, 0x13

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 6
    :catchall_0
    move-exception p0

    throw p0

    .line 2
    :goto_2
    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    .line 1
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    .line 3
    :cond_2
    :goto_3
    invoke-static {}, Lccsansan/dr/getDownloadingList;->deleteDownItem()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    invoke-static {v0, v1}, Lccsansan/dr/getDownloadingList;->addDownloadListener(J)V

    .line 5
    const-string p0, ""

    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsansan/dr/getDownloadingList;->getDownloadingList(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dh/getDownloadingList;",
            ">;)V"
        }
    .end annotation

    .line 112
    nop

    .line 109
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    throw p0

    .line 108
    :cond_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    .line 112
    :pswitch_0
    sget v0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 108
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v2, :pswitch_data_1

    :try_start_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 112
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dh/getDownloadingList;

    .line 109
    invoke-virtual {v0}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsansan/dh/getDownloadingList;->getDownloadingRecordByUrl(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 112
    :catchall_1
    move-exception p0

    throw p0

    .line 108
    :goto_3
    :try_start_5
    check-cast v0, Lccsansan/dh/getDownloadingList;

    .line 109
    invoke-virtual {v0}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsansan/dh/getDownloadingList;->getDownloadingRecordByUrl(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :goto_4
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 112
    const-string v0, "ALHelper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(ZZLccsanorg/json/JSONArray;)V
    .locals 7

    .line 89
    nop

    .line 65
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lccsansan/dr/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 70
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v4, "timestamp"

    .line 71
    invoke-virtual {v3, v4, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    .line 80
    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 89
    :pswitch_0
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 v6, p0, 0x80

    sput v6, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    const-string v6, "is_first_start"

    if-nez p0, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {v3, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    goto :goto_1

    .line 71
    :cond_1
    nop

    .line 73
    invoke-virtual {v3, v6, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    :goto_1
    const-string p0, "data"

    .line 75
    invoke-virtual {v3, p0, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 76
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 78
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_3

    .line 73
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    .line 80
    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_1

    :try_start_2
    invoke-static {v1, v2}, Lccsansan/dr/getDownloadingList;->removeDownloadListener(J)V

    goto :goto_3

    :pswitch_1
    invoke-static {v1, v2}, Lccsansan/dr/getDownloadingList;->removeDownloadListener(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    const/16 p0, 0x52

    :try_start_3
    div-int/2addr p0, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :goto_4
    sget p0, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    goto :goto_5

    .line 73
    :catchall_0
    move-exception p0

    throw p0

    .line 83
    :cond_3
    :goto_5
    :try_start_4
    invoke-static {p2}, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils(Lccsanorg/json/JSONArray;)V

    .line 84
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->getDownloadStatusByUrl(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    .line 86
    invoke-static {p0, p1}, Lccsansan/dr/getDownloadingList;->IncentiveDownloadUtils(J)V

    const-string p0, ""

    .line 87
    invoke-static {p0}, Lccsansan/dr/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 89
    const-string p1, "ALHelper"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 10
    nop

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/dr/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10
    sget v0, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1, p2}, Lccsansan/dr/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 8
    sget p1, Lccsansan/dr/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dr/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x31

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :cond_1
    return p0

    .line 8
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {p0, p1, p2}, Lccsansan/dr/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    packed-switch v0, :pswitch_data_1

    return p0

    :pswitch_1
    const/16 p1, 0x1b

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    .line 10
    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
