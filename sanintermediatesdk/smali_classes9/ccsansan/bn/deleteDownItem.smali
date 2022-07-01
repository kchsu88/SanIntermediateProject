.class public Lccsansan/bn/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:C

.field private static getDownloadingList:J

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    sput v1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    const-wide v1, 0x7c188edf631bceb8L    # 5.9831589546296225E289

    sput-wide v1, Lccsansan/bn/deleteDownItem;->getDownloadingList:J

    sput-char v0, Lccsansan/bn/deleteDownItem;->addDownloadListener:C

    sput v0, Lccsansan/bn/deleteDownItem;->unifiedDownload:I

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V
    .locals 2

    .line 18
    sget v0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x45

    goto :goto_0

    :cond_1
    const/16 p0, 0x15

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V
    .locals 5

    .line 16
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 16
    sget p0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x60

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :cond_1
    iget-object v2, p0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 16
    sget v2, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "true"

    const-string v4, "hasObb"

    if-nez v2, :cond_2

    invoke-virtual {p0, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    :try_start_1
    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p0

    throw p0

    .line 10
    :cond_2
    invoke-virtual {p0, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    const/16 v2, 0x59

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    :goto_1
    packed-switch v2, :pswitch_data_1

    :cond_4
    goto :goto_3

    .line 10
    :goto_2
    :pswitch_1
    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 12
    :goto_4
    iget-object v1, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 15
    :cond_6
    const-string v0, "real_time"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Lccsansan/m/getDownloadedList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V
    .locals 12

    .line 73
    nop

    .line 20
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "portal"

    .line 22
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pkg"

    .line 23
    :try_start_1
    iget-object v3, p0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v3, p0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    const-string v3, "ad"

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 64
    const/16 p1, 0x53

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v5, "cpiparam"

    const-string v6, "sub_portal"

    const-string v7, "downid"

    const/4 v8, 0x1

    const-string v9, "sourcetype"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_0

    .line 56
    if-eqz v2, :cond_b

    goto/16 :goto_8

    .line 27
    :pswitch_0
    :try_start_2
    iget-object p1, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_1

    const-string p1, "placement_id"

    .line 28
    :try_start_3
    iget-object v11, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    iget-object p1, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p1, :cond_3

    .line 73
    sget p1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v11, p1, 0x80

    sput v11, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/2addr p1, v3

    const-string v11, "ad_id"

    if-eqz p1, :cond_2

    .line 31
    :try_start_4
    iget-object p1, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    array-length p1, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    throw p0

    .line 30
    :cond_2
    nop

    .line 31
    :try_start_6
    iget-object p1, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 73
    :goto_1
    sget p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v11, p1, 0x80

    sput v11, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_3

    .line 31
    :cond_3
    nop

    .line 33
    :try_start_7
    iget-object p1, p0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "did"

    .line 34
    :try_start_8
    iget-object v7, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v1, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string p1, "pid"

    .line 37
    :try_start_9
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p1, "creative_id"

    .line 38
    :try_start_a
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p1, "formatid"

    .line 39
    :try_start_b
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string p1, "adnet"

    .line 40
    :try_start_c
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p0, p0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    const/16 p1, 0x49

    goto :goto_2

    :cond_4
    const/16 p1, 0x62

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 42
    :pswitch_1
    if-eqz v2, :cond_5

    .line 43
    invoke-virtual {v2, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_3
    nop

    .line 45
    invoke-virtual {v1, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v2, :cond_6

    .line 64
    const/16 p0, 0x31

    goto :goto_4

    :cond_6
    const/16 p0, 0x5c

    :goto_4
    const-string p1, "2"

    const-string v5, "book"

    packed-switch p0, :pswitch_data_2

    .line 54
    goto :goto_6

    .line 48
    :pswitch_2
    :try_start_d
    iget-object p0, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    if-nez p0, :cond_8

    .line 31
    sget p0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v7, p0, 0x80

    sput v7, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_7

    .line 49
    :try_start_e
    iget-object p0, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    array-length p0, v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_5

    .line 31
    :catchall_1
    move-exception p0

    throw p0

    .line 48
    :cond_7
    nop

    .line 49
    :try_start_10
    iget-object p0, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_8
    :goto_5
    iget-object p0, v2, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 52
    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_9
    const-string p0, "is_book"

    .line 54
    invoke-virtual {v2, p0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 31
    sget p0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_a

    goto :goto_7

    .line 56
    :goto_6
    :try_start_11
    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 73
    :cond_a
    :goto_7
    goto/16 :goto_f

    .line 64
    :goto_8
    const/4 p1, 0x0

    goto :goto_9

    :cond_b
    const/4 p1, 0x1

    :goto_9
    packed-switch p1, :pswitch_data_3

    .line 73
    sget p1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/2addr p1, v3

    if-eqz p1, :cond_c

    .line 60
    :cond_c
    :try_start_12
    iget-object p1, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 64
    const/4 p1, 0x1

    goto :goto_a

    :cond_d
    const/4 p1, 0x0

    :goto_a
    packed-switch p1, :pswitch_data_4

    goto :goto_b

    .line 60
    :pswitch_3
    nop

    .line 61
    iget-object p1, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_b
    iget-object p1, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    if-nez p1, :cond_e

    .line 64
    const/16 p1, 0x4e

    goto :goto_c

    :cond_e
    const/16 p1, 0x29

    :goto_c
    packed-switch p1, :pswitch_data_5

    :goto_d
    goto :goto_e

    .line 49
    :pswitch_4
    sget p1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/2addr p1, v3

    if-eqz p1, :cond_f

    .line 64
    :try_start_13
    iget-object p1, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const/16 p1, 0x32

    :try_start_14
    div-int/2addr p1, v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_d

    .line 49
    :catchall_2
    move-exception p0

    throw p0

    .line 63
    :cond_f
    nop

    .line 64
    :try_start_15
    iget-object p1, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 66
    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_f
    nop

    .line 67
    :pswitch_5
    const-string p0, "AD_DenyOpenApp"

    .line 71
    invoke-static {v0, p0, v1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    .line 49
    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/2addr p0, v3

    if-eqz p0, :cond_10

    .line 64
    const/4 v8, 0x0

    goto :goto_10

    :cond_10
    nop

    :goto_10
    packed-switch v8, :pswitch_data_6

    .line 73
    goto :goto_11

    .line 49
    :pswitch_6
    goto :goto_11

    .line 71
    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collectAdDenyOpenApp error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.OperateStats"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4e
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 2

    .line 9
    sget v0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bn/deleteDownItem$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/bn/deleteDownItem$addDownloadListener;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0, p1}, Lccsansan/bn/deleteDownItem;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :goto_2
    const/4 p0, 0x6

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 10

    .line 39
    const-string v0, "open_success"

    const-string v1, "is_background"

    const-string v2, "need_permission"

    const-string v3, "url"

    const-string v4, "portal"

    .line 1
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    .line 2
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-virtual {p0, v4}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v3}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "pkg"

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "ver"

    .line 6
    :try_start_2
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->unifiedDownload()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "status"

    .line 7
    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v2, v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "true"

    const-string v9, "false"

    if-eqz p1, :cond_0

    move-object p1, v8

    goto :goto_0

    :cond_0
    move-object p1, v9

    :goto_0
    :try_start_3
    invoke-virtual {v7, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v1, v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v8

    goto :goto_1

    :cond_1
    move-object p1, v9

    :goto_1
    invoke-virtual {v7, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0, v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    move-object p1, v8

    goto :goto_2

    .line 10
    :cond_2
    move-object p1, v9

    :goto_2
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 30
    const/16 v0, 0x56

    goto :goto_3

    :cond_3
    const/16 v0, 0x15

    :goto_3
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 13
    iget-object v0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v0, :cond_4

    .line 30
    const/16 v0, 0x27

    goto :goto_4

    :cond_4
    const/16 v0, 0x42

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 39
    :pswitch_0
    sget v0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 14
    :try_start_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 39
    :catchall_0
    move-exception p0

    throw p0

    .line 14
    :cond_5
    :try_start_6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v2, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    goto :goto_6

    .line 16
    :goto_5
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 14
    :goto_6
    nop

    .line 39
    sget v2, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 16
    :cond_6
    const-string v2, "ad"

    .line 19
    :try_start_7
    invoke-virtual {p0, v4}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v2, :cond_c

    .line 39
    sget v2, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "ad_id"

    if-eqz v2, :cond_7

    :try_start_8
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_9

    goto :goto_7

    :catchall_1
    move-exception p0

    throw p0

    .line 19
    :cond_7
    if-eqz v0, :cond_9

    .line 21
    :goto_7
    :try_start_9
    iget-object p1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 30
    const/4 p1, 0x0

    goto :goto_8

    :cond_8
    const/4 p1, 0x1

    :goto_8
    packed-switch p1, :pswitch_data_2

    goto :goto_9

    .line 21
    :pswitch_2
    nop

    .line 22
    iget-object p1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v7, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    const-string p1, "cpiparam"

    .line 24
    :try_start_a
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p1, "pid"

    .line 25
    :try_start_b
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string p1, "adnet"

    .line 26
    :try_start_c
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string p1, "downid"

    .line 27
    :try_start_d
    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_e

    :cond_9
    if-eqz p1, :cond_b

    .line 14
    sget v0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 30
    const/16 v0, 0x3d

    goto :goto_a

    :cond_a
    const/16 v0, 0x62

    :goto_a
    packed-switch v0, :pswitch_data_3

    :try_start_e
    iget-object v0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_c

    :pswitch_3
    iget-object v0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    goto :goto_d

    :goto_c
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    array-length v1, v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v0, :cond_c

    goto :goto_b

    .line 31
    :goto_d
    :try_start_10
    iget-object p1, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v7, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 39
    goto :goto_e

    .line 14
    :catchall_2
    move-exception p0

    throw p0

    .line 27
    :cond_b
    :goto_e
    nop

    .line 31
    :cond_c
    const-string p1, "is_sapk"

    .line 36
    :try_start_11
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadedList()Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    if-eqz p0, :cond_e

    .line 39
    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_d

    .line 36
    :cond_d
    goto :goto_f

    :cond_e
    move-object v8, v9

    :goto_f
    :try_start_12
    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\uc86c\uf95f\u24d0\u5eef\uec1a\uf7b6\u712b\uf490\u642a\ubf16\u16a3\u013b\u55b2\u3679\uc47d\u9539\u9d14\u75e7\u76ab\u01c8\u34db\u479b\u98c7\ucaa2"

    const-string p1, "\uceb8\u631b\u8edf\u7c18"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    invoke-static {v5, v5}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const-string v2, "\uf5d2\uac0a\uca07\uf7c6"

    invoke-static {p0, p1, v0, v1, v2}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {v6, p0, v7}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_10

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doCollectOperateStatus error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.OperateStats"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    nop

    .line 14
    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    const/16 p0, 0x60

    :try_start_13
    div-int/2addr p0, v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    throw p0

    .line 39
    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x62
        :pswitch_3
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;)Z
    .locals 8

    .line 19
    nop

    .line 0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v0, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const-string v4, "\ufa17\u2ce1\u41a0\u81ee\u144d\u917b\u6677\ucc88\ue9b6\u027c\u7149\ufad8\ua0aa\u4866\u052e\u4cbe\uc1b1\u894e\uc2c5\ua075\u220e\u7ac4\u7232\u7468"

    const-string v5, "\uceb8\u631b\u8edf\u7c18"

    const-string v6, "\ud345\u106a\u450d\u1de7"

    invoke-static {v4, v5, v2, v3, v6}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_1
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const-string v6, "\ue704\ua615\u60f0\u2f40\ud133\u2a82\udc94\ue20f\u84e7\ucc5d\u8494\u60c7\ud60d\u0769\u9b2f\u9833\u14c2\ua0c7\ud99c\ub24d\u2d22\ua467\ud113\ub819"

    const-string v7, "\u9043\ueec9\uca37\u29d1"

    invoke-static {v6, v5, v2, v4, v7}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x5d

    goto :goto_1

    :cond_2
    const/16 v2, 0xb

    :goto_1
    packed-switch v2, :pswitch_data_1

    const v2, 0xd535

    const/16 v4, 0x30

    invoke-static {v0, v4, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    sub-int/2addr v2, v0

    int-to-char v0, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v4, "\uce66\udd5c\ub8f5\u5ed6\u1c49\u6a89\u7fba\ub0ee\u4bcb\ud677\ua4a1\uee05\u3818\u7b12\u7aa7\u3473\ua714\u5bd6"

    const-string v6, "\ud043\u6a09\u368e\u28d5"

    invoke-static {v4, v5, v0, v2, v6}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :pswitch_0
    const/4 v1, 0x1

    :cond_3
    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 17

    .line 119
    move-object/from16 v1, p0

    const-string v0, "silence_result"

    const-string v2, "is_background"

    const-string v3, "need_permission"

    const-string v4, "lock_screen"

    const-string v5, "url"

    const-string v6, "ad_cache"

    const-string v7, ""

    const-string v8, "portal"

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9

    .line 2
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-virtual {v1, v8}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v5}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "pkg"

    .line 5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "ver"

    .line 6
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->unifiedDownload()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    .line 7
    move-object/from16 v11, p1

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v12, :cond_0

    .line 20
    const/16 v12, 0x33

    goto :goto_0

    :cond_0
    const/16 v12, 0xf

    :goto_0
    const-string v13, "false"

    const-string v14, "true"

    packed-switch v12, :pswitch_data_0

    .line 8
    move-object v12, v13

    goto :goto_1

    .line 26
    :pswitch_0
    sget v12, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v12, v12, 0x7

    rem-int/lit16 v15, v12, 0x80

    sput v15, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_1

    .line 8
    :cond_1
    move-object v12, v14

    :goto_1
    :try_start_3
    invoke-virtual {v10, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v3, v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v4, :cond_3

    .line 20
    sget v4, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x61

    rem-int/lit16 v12, v4, 0x80

    sput v12, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 9
    :cond_2
    move-object v4, v14

    goto :goto_2

    .line 20
    :cond_3
    sget v4, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x29

    rem-int/lit16 v12, v4, 0x80

    sput v12, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    .line 9
    move-object v4, v13

    :goto_2
    :try_start_4
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v2, v5}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v14

    goto :goto_3

    :cond_4
    move-object v3, v13

    :goto_3
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 20
    const/16 v0, 0x62

    goto :goto_4

    :cond_5
    const/16 v0, 0x5b

    :goto_4
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    .line 15
    iget-object v0, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v0, :cond_7

    .line 26
    sget v0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 16
    :try_start_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v4, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    array-length v4, v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 26
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 16
    :cond_6
    :try_start_7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v4, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    goto :goto_5

    .line 18
    :cond_7
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 16
    :goto_5
    sget v4, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v4, v4, 0x6f

    rem-int/lit16 v12, v4, 0x80

    sput v12, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    const-string v12, "downid"

    const-string v15, "cpiparam"

    const/16 v16, 0x1

    const-string v5, "sourcetype"

    if-nez v4, :cond_8

    const-string v4, "ad"

    .line 20
    :try_start_8
    invoke-virtual {v1, v8}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_16

    goto :goto_6

    .line 16
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 18
    :cond_8
    const-string v4, "ad"

    .line 20
    :try_start_a
    invoke-virtual {v1, v8}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v4, :cond_16

    :goto_6
    const-string v4, "ad_id"

    if-eqz v0, :cond_e

    .line 26
    sget v8, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v8, v8, 0x19

    rem-int/lit16 v3, v8, 0x80

    sput v3, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_9

    .line 22
    :cond_9
    :try_start_b
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    if-nez v3, :cond_a

    .line 20
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 22
    const-string v3, "placement_id"

    .line 23
    :try_start_c
    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v10, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :pswitch_2
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    if-nez v3, :cond_c

    .line 56
    sget v3, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b

    .line 26
    :try_start_d
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    const/4 v3, 0x0

    :try_start_e
    array-length v4, v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_8

    .line 56
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 25
    :cond_b
    nop

    .line 26
    :try_start_f
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :cond_c
    :goto_8
    const-string v3, "did"

    .line 29
    :try_start_10
    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v10, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    const-string v3, "pid"

    .line 32
    :try_start_11
    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    const-string v3, "sid"

    :try_start_12
    const-string v4, "sid"

    .line 33
    invoke-virtual {v0, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    const-string v3, "creative_id"

    .line 34
    :try_start_13
    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    const-string v3, "formatid"

    .line 35
    :try_start_14
    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    const-string v3, "adnet"

    .line 36
    :try_start_15
    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 38
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    .line 39
    invoke-virtual {v2, v5}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_d
    nop

    .line 41
    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v10, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_a

    :cond_e
    if-eqz v2, :cond_f

    .line 20
    const/16 v3, 0x59

    goto :goto_9

    :cond_f
    const/16 v3, 0x14

    :goto_9
    packed-switch v3, :pswitch_data_3

    .line 16
    sget v3, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x77

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_10

    .line 45
    :cond_10
    :try_start_16
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 46
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    nop

    .line 46
    :cond_11
    nop

    .line 48
    invoke-virtual {v2, v5}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 50
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v10, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    .line 42
    :goto_a
    nop

    .line 50
    :cond_12
    :pswitch_3
    const-string v3, "2"

    const-string v4, "book"

    if-eqz v2, :cond_15

    .line 55
    :try_start_17
    iget-object v5, v2, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    if-eqz v5, :cond_14

    .line 119
    sget v5, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2d

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_13

    .line 56
    :try_start_18
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    const/16 v3, 0x4c

    const/4 v4, 0x0

    :try_start_19
    div-int/2addr v3, v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_b

    .line 119
    :catchall_3
    move-exception v0

    move-object v1, v0

    throw v1

    .line 55
    :cond_13
    nop

    .line 56
    :try_start_1a
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    const-string v3, "is_book"

    .line 58
    invoke-virtual {v2, v3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_15
    nop

    .line 60
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_16
    if-eqz v2, :cond_19

    .line 64
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 65
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v10, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    nop

    .line 65
    :cond_17
    nop

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    if-nez v3, :cond_18

    const-string v3, "sub_portal"

    .line 69
    :try_start_1b
    iget-object v4, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    nop

    .line 71
    invoke-virtual {v2, v5}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_b
    nop

    .line 71
    :cond_19
    if-eqz v0, :cond_20

    .line 76
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2

    const-string v4, "jump_type"

    :try_start_1c
    const-string v5, "action_type"

    .line 78
    invoke-virtual {v0, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1c
    .catch Lccsanorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2

    const-string v4, "c_d"

    .line 79
    :try_start_1d
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result v5

    if-nez v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_c

    :cond_1a
    const/4 v5, 0x0

    :goto_c
    invoke-static {v4, v5}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1d
    .catch Lccsanorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    const-string v5, "open_inner_xz"

    if-eqz v4, :cond_1c

    .line 20
    sget v4, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v4, v4, 0x3

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    :try_start_1e
    array-length v4, v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    move-object v4, v14

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v1, v0

    throw v1

    .line 79
    :cond_1b
    move-object v4, v14

    goto :goto_d

    :cond_1c
    move-object v4, v13

    .line 80
    :goto_d
    :try_start_1f
    invoke-virtual {v3, v5, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 81
    invoke-virtual {v0, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 20
    const/4 v4, 0x0

    goto :goto_e

    :cond_1d
    const/4 v4, 0x1

    :goto_e
    packed-switch v4, :pswitch_data_4

    .line 81
    goto :goto_f

    :pswitch_4
    move-object v4, v7

    goto :goto_10

    :goto_f
    invoke-virtual {v0, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    nop

    .line 81
    :goto_10
    invoke-virtual {v3, v6, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 82
    invoke-static {v2, v0}, Lccsansan/bn/deleteDownItem;->getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 83
    invoke-static {v3, v0, v2}, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    :cond_1e
    const-string v4, "s_rid"

    .line 85
    invoke-virtual {v0, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "s_rid"

    .line 87
    invoke-virtual {v3, v4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1f
    .catch Lccsanorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2

    :cond_1f
    const-string v0, "exfo"

    .line 89
    :try_start_20
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Lccsanorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2

    goto :goto_11

    :catch_0
    move-exception v0

    :cond_20
    :goto_11
    if-eqz v2, :cond_22

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    invoke-static {v7}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "\ucf23\u5f07\u25bb\u3c5b\u21d8\u3780\uac4b\u7c68\u0a2c\u248f"

    const-string v5, "\uceb8\u631b\u8edf\u7c18"

    const-string v6, "\u9111\ua90a\u3ff0\u82e7"

    invoke-static {v4, v5, v0, v3, v6}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 96
    :try_start_21
    iget-boolean v3, v2, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    if-eqz v3, :cond_21

    .line 20
    const/16 v3, 0x54

    goto :goto_12

    :cond_21
    const/16 v3, 0x31

    :goto_12
    packed-switch v3, :pswitch_data_5

    .line 96
    move-object v3, v14

    goto :goto_13

    :pswitch_5
    move-object v3, v13

    :goto_13
    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2

    if-nez v0, :cond_22

    const-string v0, "sub_portal"

    .line 98
    :try_start_22
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string v0, "error"

    .line 102
    invoke-virtual {v1, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 20
    const/16 v16, 0x0

    goto :goto_14

    :cond_23
    nop

    :goto_14
    packed-switch v16, :pswitch_data_6

    .line 103
    const-string v3, "error"

    .line 104
    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2

    :pswitch_6
    const-string v0, "is_sapk"

    .line 106
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lccsansan/p/getDownloadedList;->getDownloadedList()Z

    move-result v1

    if-eqz v1, :cond_24

    move-object v13, v14

    :cond_24
    invoke-virtual {v10, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_2

    const-string v0, "free_space"

    .line 107
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setLoaderClassName;->addDownloadListener()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u45f7\u5c37\ue5c2\ueec5\u3ffd\u21ec\ud848\ub81f\u18ef\u564f\ub0dc\ud1c5\uf7e7\u454b\u8696\u6332\uc43a\ueafd\uef2f\ucbab\u9727\u3da1\u4f28\u7e9c\ubf0d\u4462\u14ac\u0f31\uca1d"

    const-string v1, "\uceb8\u631b\u8edf\u7c18"

    const v3, 0xe7b5

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    const v4, -0x41fde625

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6, v5, v5}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    cmpl-float v5, v6, v5

    add-int/2addr v5, v4

    const-string v4, "\udba7\u0219\ub4be\uf5e7"

    invoke-static {v0, v1, v3, v5, v4}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v9, v0, v10}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 110
    invoke-static/range {p1 .. p1}, Lccsansan/bn/deleteDownItem;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2

    if-eqz v0, :cond_25

    const-wide/16 v0, 0x1f4

    .line 112
    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    .line 116
    :goto_15
    :try_start_26
    invoke-static {v2}, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCollectExecuteStatus error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stats.OperateStats"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x31
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z
    .locals 4

    .line 17
    sget v0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p1}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return p0

    :goto_2
    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsansan/bn/deleteDownItem;->getDownloadingList:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/bn/deleteDownItem;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/bn/deleteDownItem;->addDownloadListener:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    nop

    .line 74
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onEvent["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.OperateStats"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    goto :goto_0

    :cond_0
    const/16 p0, 0x51

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x3e

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 3

    .line 9
    sget v0, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 9
    :catchall_0
    move-exception p0

    throw p0

    .line 2
    :goto_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bn/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsansan/bn/deleteDownItem$IncentiveDownloadUtils;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 9
    sget p0, Lccsansan/bn/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 1
    const/16 p0, 0x32

    goto :goto_3

    :cond_1
    const/16 p0, 0x62

    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 9
    :pswitch_1
    goto :goto_4

    :cond_2
    invoke-static {p0, p1}, Lccsansan/bn/deleteDownItem;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch
.end method
