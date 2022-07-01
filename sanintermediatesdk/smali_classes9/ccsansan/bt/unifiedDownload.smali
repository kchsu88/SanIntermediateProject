.class public Lccsansan/bt/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:Z

.field private static deleteDownItem:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:Z

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    const/16 v1, 0x9a

    sput v1, Lccsansan/bt/unifiedDownload;->getDownloadingList:I

    sput-boolean v0, Lccsansan/bt/unifiedDownload;->removeDownloadListener:Z

    sput-boolean v0, Lccsansan/bt/unifiedDownload;->addDownloadListener:Z

    const/16 v0, 0x14

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bt/unifiedDownload;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x10ds
        0x10es
        0xfbs
        0x10cs
        0xf9s
        0xfes
        0x109s
        0x111s
        0x108s
        0x106s
        0x105s
        0xffs
        0x10fs
        0x10as
        0x103s
        0x113s
        0xfds
        0x100s
        0x101s
        0xccs
    .end array-data
.end method

.method public static IncentiveDownloadUtils()I
    .locals 5

    .line 5
    nop

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_cpi_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 5
    const/16 v2, 0x1b

    goto :goto_0

    :cond_0
    const/16 v2, 0x41

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :pswitch_0
    :try_start_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x7f

    const-string v3, "\u0089\u0087\u008f\u0082\u0083\u0091\u008f\u0092\u008f\u0082\u0087\u0089\u0085\u008a\u008a\u0083\u0082\u0081\u0089\u008f"

    const/4 v4, 0x0

    invoke-static {v4, v1, v4, v3}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :goto_1
    const/16 v1, 0x22

    goto :goto_2

    :cond_1
    const/16 v1, 0x51

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 2
    return v0

    .line 5
    :pswitch_1
    const/16 v1, 0x16

    :try_start_2
    div-int/2addr v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 8

    .line 13
    const-string v0, "\u0085\u0082\u0084\u0083\u0082\u0081\u0085\u0087\u0082\u008d\u0083\u0085\u008e\u0094\u008e"

    sget v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 7
    const/16 v1, 0x23

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    :goto_0
    const-string v2, "\u0093\u008f\u0092\u0089\u0087\u0091\u0085\u008a\u008a\u0083\u0082\u0081\u0089\u008f"

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 13
    goto :goto_2

    .line 0
    :pswitch_0
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/lit8 v6, v6, 0x7f

    invoke-static {v4, v6, v4, v2}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    const/16 v5, 0x38

    goto :goto_1

    :cond_1
    const/16 v5, 0x32

    :goto_1
    packed-switch v5, :pswitch_data_1

    const/4 v3, 0x1

    goto :goto_3

    .line 13
    :catch_0
    move-exception p0

    const/4 v3, 0x1

    goto/16 :goto_4

    .line 6
    :goto_2
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7c

    add-int/lit8 v5, v5, 0x26

    invoke-static {v4, v5, v4, v2}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_2

    :goto_3
    return v3

    :cond_2
    const/4 v1, 0x0

    .line 9
    :pswitch_1
    :try_start_2
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    rsub-int v6, v6, 0x80

    invoke-static {v4, v6, v4, v0}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v7

    add-int/lit8 v3, v3, 0x7f

    invoke-static {v4, v3, v4, v0}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 13
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    .line 11
    :cond_3
    :try_start_3
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    rsub-int/lit8 p0, p0, 0x7f

    const-string v0, "\u0082\u0084\u0083\u0082\u0081\u0085\u0087\u0082\u008d\u0083\u0085\u008e\u0094\u008e"

    invoke-static {v4, p0, v4, v0}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {v5, p0, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p0

    :catch_1
    move-exception p0

    move v3, v1

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener()Z
    .locals 10

    .line 63
    const-string v0, "brand"

    const-string v1, "check_type"

    const-string v2, "enable"

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x7f

    const/4 v6, 0x0

    const-string v7, "\u008e\u008d\u008c\u008b\u0083\u0088\u0085\u0086\u0083\u0087\u008a\u0089\u0088\u0087\u0086\u0085\u0082\u0084\u0083\u0082\u0081"

    invoke-static {v6, v5, v6, v7}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    return v7

    .line 6
    :cond_0
    :try_start_0
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5, v2, v4}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    .line 11
    :cond_1
    invoke-virtual {v5, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v7, :cond_4

    .line 13
    sget-object v1, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 19
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 35
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v8

    const/4 v4, 0x1

    .line 21
    :cond_3
    return v4

    :cond_4
    if-ne v3, v8, :cond_5

    .line 35
    const/16 v0, 0x3e

    goto :goto_1

    :cond_5
    const/16 v0, 0x5e

    :goto_1
    const-string v3, "enable_ver"

    packed-switch v0, :pswitch_data_0

    .line 21
    goto/16 :goto_8

    .line 46
    :pswitch_0
    :try_start_1
    sget-object v0, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_7

    .line 35
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    packed-switch v4, :pswitch_data_1

    .line 48
    goto :goto_2

    .line 35
    :pswitch_1
    :try_start_2
    array-length v0, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    .line 63
    :goto_2
    return v7

    .line 51
    :cond_7
    :try_start_3
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    invoke-virtual {v5, v2, v4}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    invoke-virtual {v5, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 58
    invoke-virtual {v5, v3}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 60
    :goto_3
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ge v5, v6, :cond_9

    .line 35
    sget v6, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v6, v6, 0xf

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v6, v8

    if-eqz v6, :cond_8

    .line 61
    :cond_8
    :try_start_4
    invoke-virtual {v2, v5}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 63
    :cond_9
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v2, :cond_a

    .line 35
    const/16 v2, 0x50

    goto :goto_4

    :cond_a
    const/16 v2, 0x5f

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 63
    const/4 v2, 0x1

    goto :goto_5

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_5

    .line 57
    :cond_b
    const/4 v2, 0x0

    .line 63
    :goto_5
    if-nez v0, :cond_c

    .line 35
    const/16 v3, 0x21

    goto :goto_6

    :cond_c
    const/16 v3, 0xa

    :goto_6
    packed-switch v3, :pswitch_data_3

    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_e

    goto :goto_7

    .line 63
    :pswitch_3
    if-ne v0, v7, :cond_d

    .line 35
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v8

    .line 63
    return v1

    :cond_d
    return v2

    :cond_e
    :goto_7
    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    const/4 v4, 0x1

    :cond_f
    return v4

    .line 31
    :goto_8
    :try_start_5
    invoke-virtual {v5, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32
    invoke-virtual {v5, v3}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 34
    :goto_9
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-ge v2, v3, :cond_11

    .line 63
    sget v3, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v3, v8

    if-nez v3, :cond_10

    .line 35
    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    packed-switch v3, :pswitch_data_4

    :try_start_6
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v3

    goto :goto_b

    :pswitch_4
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x27

    goto :goto_c

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v2, v2, 0x1

    .line 63
    :goto_c
    sget v3, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x41

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v8

    goto :goto_9

    .line 37
    :cond_11
    :try_start_7
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v0, :cond_13

    .line 63
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_12

    .line 35
    const/16 v0, 0x39

    goto :goto_d

    :cond_12
    const/16 v0, 0x36

    :goto_d
    packed-switch v0, :pswitch_data_5

    .line 63
    goto :goto_e

    .line 37
    :pswitch_5
    const/4 v4, 0x1

    goto :goto_e

    .line 35
    :cond_13
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v8

    .line 37
    :cond_14
    :goto_e
    return v4

    .line 63
    :catch_0
    move-exception v0

    return v7

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5f
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x36
        :pswitch_5
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl()Z
    .locals 3

    .line 8
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    const-string v2, "cpi_convert_task"

    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 0
    :pswitch_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 4
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    :goto_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "enable"

    .line 4
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 8
    :cond_1
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e91\u63a7\u2014\u2014\u2014\u2014\u2014\u2014cpi_convert_task:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AD_CONVERT"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedList()I
    .locals 6

    .line 27
    const-string v0, ""

    sget v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 22
    :cond_0
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v0, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const-string v4, "\u0082\u0091\u008c\u0082\u0087\u0084\u008e\u0085\u008f\u008e\u0091\u0085\u0082\u0084\u0083\u0082\u0081\u0085\u0087\u0082\u008d\u0083"

    const/4 v5, 0x0

    invoke-static {v5, v0, v5, v4}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 23
    goto :goto_1

    .line 26
    :pswitch_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "start_mode"

    .line 27
    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    const/16 v0, 0x36

    goto :goto_2

    :cond_2
    const/16 v0, 0xc

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v2

    :goto_3
    :try_start_1
    array-length v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl()Z
    .locals 8

    .line 5
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u0082\u0091\u008c\u0082\u0087\u0084\u008e\u0085\u008f\u008e\u0091\u0085\u0082\u0084\u0083\u0082\u0081\u0085\u0087\u0082\u008d\u0083"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2a

    const/16 v7, 0x3d

    invoke-static {v2, v7, v4, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    ushr-int v2, v6, v2

    invoke-static {v3, v2, v3, v1}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto :goto_0

    :cond_0
    const/16 v2, 0x62

    :goto_0
    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 5
    :catch_0
    move-exception v1

    const/4 v4, 0x1

    goto :goto_4

    .line 1
    :cond_1
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v5, 0x30

    invoke-static {v2, v5, v4, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7e

    invoke-static {v3, v2, v3, v1}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    const/16 v0, 0x44

    goto :goto_1

    :cond_2
    const/16 v0, 0x40

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 5
    :goto_2
    :pswitch_0
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    return v4

    .line 4
    :goto_3
    :pswitch_1
    :try_start_2
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ignore_pkgs"

    .line 5
    invoke-virtual {v0, v1, v4}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception v0

    :goto_4
    return v4

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(J)J
    .locals 6

    .line 5
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, ""

    const-string v3, "\u0093\u008f\u0092\u0089\u0087\u0091\u0085\u0090\u0084\u0082\u008c\u0084\u0085\u008a\u008a\u0083\u0082\u0081\u0089\u008f\u0085\u008e\u008e\u0083"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    invoke-static {v4, v5, v4, v3}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x7f

    invoke-static {v4, v5, v4, v3}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :goto_2
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "max_interval"

    .line 5
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v0

    :cond_1
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 2
    const/16 v0, 0x28

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 5
    return-wide p0

    :pswitch_1
    const/16 v0, 0x14

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
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
    sget-object v1, Lccsansan/bt/unifiedDownload;->unifiedDownload:[C

    .line 1166
    sget v2, Lccsansan/bt/unifiedDownload;->getDownloadingList:I

    .line 1168
    sget-boolean v3, Lccsansan/bt/unifiedDownload;->removeDownloadListener:Z

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
    sget-boolean p3, Lccsansan/bt/unifiedDownload;->addDownloadListener:Z

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

.method public static getDownloadingList()Z
    .locals 8

    .line 6
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x1

    const-string v3, "\u0093\u008f\u0092\u0089\u0087\u0091\u0085\u008a\u008a\u0083\u0082\u0081\u0089\u008f"

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x7f

    invoke-static {v4, v6, v4, v3}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    .line 6
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1
    :goto_1
    const/16 v6, 0x48

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    shl-int/lit8 v7, v7, 0x47

    ushr-int/2addr v6, v7

    invoke-static {v4, v6, v4, v3}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 6
    :goto_2
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v1

    .line 2
    return v5

    .line 5
    :goto_3
    :pswitch_2
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "silence_enable"

    .line 6
    invoke-virtual {v1, v0, v5}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :goto_4
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 4

    .line 6
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->deleteDownItem()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget-object v0, Lccsancom/san/az/unifiedDownload;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1b

    goto :goto_2

    :cond_2
    const/16 p0, 0x52

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :goto_3
    sget p0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener()J
    .locals 5

    .line 5
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ad_apk_operate_config"

    packed-switch v0, :pswitch_data_0

    .line 5
    const-wide/16 v3, 0x1

    goto :goto_2

    .line 0
    :pswitch_0
    const-wide/16 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    goto :goto_3

    .line 5
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5
    :goto_3
    sget v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    const/16 v0, 0xe

    goto :goto_4

    :cond_1
    const/16 v0, 0x5c

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 5
    goto :goto_5

    :pswitch_1
    return-wide v3

    :goto_5
    const/4 v0, 0x7

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v3

    :catchall_0
    move-exception v0

    throw v0

    .line 4
    :cond_2
    :try_start_2
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "delay_open_app"

    .line 5
    invoke-virtual {v1, v0, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v0

    :goto_6
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5c
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload()J
    .locals 8

    .line 6
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const-wide/32 v1, 0x240c8400

    const-string v3, ""

    const-string v4, "\u0093\u008f\u0092\u0089\u0087\u0091\u0085\u0090\u0084\u0082\u008c\u0084\u0085\u008a\u008a\u0083\u0082\u0081\u0089\u008f\u0085\u008e\u008e\u0083"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v7, v5}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x76

    invoke-static {v6, v7, v6, v4}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x44

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v5, v5}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x7f

    invoke-static {v6, v7, v6, v4}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    :pswitch_0
    sget v0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x1c

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    .line 2
    :cond_2
    return-wide v1

    .line 5
    :cond_3
    :goto_1
    :try_start_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "report_interval"

    .line 6
    invoke-virtual {v3, v0, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v2, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 2
    const/16 v2, 0x28

    goto :goto_2

    :cond_4
    const/16 v2, 0x40

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 6
    goto :goto_3

    :pswitch_1
    return-wide v0

    :goto_3
    :try_start_2
    array-length v2, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-wide v0

    :catchall_1
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Z)Z
    .locals 6

    .line 21
    const-string v0, "\u0085\u0082\u0084\u0083\u0082\u0081\u0085\u0087\u0082\u008d\u0083"

    .line 14
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_apk_operate_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 21
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 17
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 21
    :pswitch_0
    sget p0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bt/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    .line 15
    :cond_1
    nop

    .line 21
    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :cond_2
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return p1

    :goto_1
    const/16 p0, 0x4a

    :try_start_1
    div-int/2addr p0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    throw p0

    .line 17
    :goto_2
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x7f

    const/4 v5, 0x0

    invoke-static {v5, v3, v5, v0}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x7f

    invoke-static {v5, v3, v5, v0}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, ""

    invoke-static {p0, v4, v4}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x7f

    const-string v0, "\u0082\u0084\u0083\u0082\u0081\u0085\u0087\u0082\u008d\u0083"

    invoke-static {v5, p0, v5, v0}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-virtual {v2, p0, p1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
