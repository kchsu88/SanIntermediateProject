.class public Lccsansan/bt/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsansan/bt/getDownloadingList;->removeDownloadListener:J

    sput-char v0, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils:C

    const v0, -0x610398c

    sput v0, Lccsansan/bt/getDownloadingList;->unifiedDownload:I

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)I
    .locals 11

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u2293\u8350\u5396\ubd86\u6e51\uc125\u7e95\u79d6\u911b\u65be\u2d8f\u40f4\u7d0a\udb87\u7b7a\u0c76\u4cd3\u7c3c\u2edf"

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\u888d\u5e3c\u2103\ufc67"

    cmp-long v10, v3, v5

    rsub-int v3, v10, 0x6721

    int-to-char v3, v3

    const v4, 0x35e3c58

    const/16 v5, 0x30

    invoke-static {v5}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v7, v8, v3, v5, v9}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result p0

    sget v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method public static IncentiveDownloadUtils()V
    .locals 14

    .line 23
    sget v0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4
    const/16 v0, 0x31

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    :goto_0
    const-string v2, "\u0000\u0000\u0000\u0000"

    const/4 v3, 0x0

    const-wide/32 v4, 0x5265c00

    const-string v6, "_"

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    rem-long/2addr v9, v4

    .line 2
    invoke-static {}, Lccsansan/bt/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v4

    .line 2
    invoke-static {}, Lccsansan/bt/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :pswitch_1
    goto :goto_3

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    goto :goto_5

    .line 5
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v4, v0

    if-ne v4, v1, :cond_3

    .line 8
    :try_start_0
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 9
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    cmp-long v11, v9, v4

    if-nez v11, :cond_2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_4
    goto :goto_6

    .line 15
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    const v5, 0x6dac2f7d

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-string v6, "\u5254\u74d2\u8c97\ue1f8\ud8c9\u9bc8\ue130\u7695\u36c2\u46c7\u4c5e\uc759\ua1b7\u7de8\u3aae\u7108\ue138\u9079\u3e05\uaba7\ue0ed\udf96\u31cc\ubd25P\u6142\ufc00\u67fa\u9c49\ue0e2\u4a9e\ue3f1\u8eb0"

    const-string v12, "\u7cab\uac2f\u5f6d\ufc59"

    cmp-long v13, v8, v10

    sub-int/2addr v5, v13

    invoke-static {v6, v2, v4, v5, v12}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v3

    goto :goto_6

    .line 19
    :cond_4
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_6
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 23
    new-instance v4, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    const-string v6, ""

    invoke-static {v6, v6, v7, v7}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v7

    add-int/lit16 v7, v7, 0x6721

    int-to-char v7, v7

    const v8, 0x35e3c87

    invoke-static {v6}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v8, v6

    const-string v6, "\u2293\u8350\u5396\ubd86\u6e51\uc125\u7e95\u79d6\u911b\u65be\u2d8f\u40f4\u7d0a\udb87\u7b7a\u0c76\u4cd3\u7c3c\u2edf"

    const-string v9, "\u888d\u5e3c\u2103\ufc67"

    invoke-static {v6, v2, v7, v8, v9}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v2, "show_times_one_day"

    invoke-virtual {v4, v2, v0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    sget v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 23
    :cond_5
    nop

    :cond_6
    nop

    .line 4
    sget v0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_7

    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 23
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Z)V
    .locals 11

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    rsub-int v3, v3, 0x52ab

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const-string v7, "\ubadd\u084d\u7c18\ufc7b\ua87d\u050e\ue680\u44a7\u227f\uabdd\u5faa\ua034\uc14c\uf17d\ub0d5\u9852\u3eab\ucaac\u9821\ue017\ufc16\u83d6\u67b2\u3593\ud24f\u1e32\uc48e\ua2c8\u6a8f\ucc40"

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\uc4a0\ub41d\uab01\u4452"

    cmp-long v10, v4, v1

    rsub-int/lit8 v1, v10, 0x1

    invoke-static {v7, v8, v3, v1, v9}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    sget p0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/bt/getDownloadingList;->removeDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/bt/getDownloadingList;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils:C

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

.method public static addDownloadListener()Lccsansan/p/getDownloadedList;
    .locals 14

    .line 32
    nop

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const v1, 0xb0b7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u0000\u0000\u0000\u0000"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "\uc347\u6f43\ua4dd\ub31d\ue6b9\ua384\u6c79\ua6bf\ud22a\udf8d\uc4d4\uab7d\ufb91\uc7de\ua207\ud7cf\u9977"

    const-string v11, ""

    const-string v12, "\ubc48\uf985\ub850\ud1b0"

    cmp-long v13, v2, v4

    add-int/2addr v13, v1

    int-to-char v1, v13

    const v2, 0x50f985bb

    invoke-static {v11}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v10, v6, v1, v2, v12}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3
    invoke-static {}, Lccsansan/bt/getDownloadingList;->getDownloadedList()V

    .line 5
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lccsansan/p/getDownloadedList;

    invoke-direct {v0}, Lccsansan/p/getDownloadedList;-><init>()V

    const-string v2, "pkgName"

    .line 8
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V

    const-string v2, "name"

    .line 9
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    const-string v2, "versionCode"

    .line 10
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsansan/p/getDownloadedList;->getDownloadingList(I)V

    const-string v2, "splitNames"

    .line 11
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 13
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    sget v4, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 15
    :pswitch_0
    const/4 v4, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v4, v5, :cond_2

    .line 32
    sget v5, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v5, v5, 0x7b

    rem-int/lit16 v10, v5, 0x80

    sput v10, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 16
    :cond_1
    :try_start_2
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v0, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/util/List;)V
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    sget v2, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 18
    :cond_3
    :try_start_3
    const-string v2, "filePath"

    .line 21
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)V

    const-string v2, "fileSize"

    .line 22
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsansan/p/getDownloadedList;->removeDownloadListener(J)V

    const-string v2, "saveTime"

    .line 23
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v10, 0x493e0

    .line 25
    invoke-static {v10, v11}, Lccsansan/bt/unifiedDownload;->getDownloadingList(J)J

    move-result-wide v5
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    sub-long/2addr v3, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 32
    const/16 v1, 0x28

    goto :goto_2

    :cond_4
    const/16 v1, 0x1f

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 25
    return-object v0

    :pswitch_1
    return-object v9

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0xb256

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    int-to-char v1, v2

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    const-string v3, "\u37d8\u59b1\uaf4b\u3796\u0d71\uda75\u5f1f\u26ae\ubf99\u8881\ue782\u8b2d\u78bc\ufb89\u6a5e\uf254\uf99d\u49bf\uc78b\uc022\u16e0\u161e\u52c2\u5a95\u0338\ud940"

    const-string v4, "\u833d\u62e1\u564a\u7cb2"

    invoke-static {v3, v6, v1, v2, v4}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return-object v9

    :goto_4
    :try_start_4
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v9

    :catchall_0
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadedList()V
    .locals 7

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const v1, 0xb0b8

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-char v1, v1

    const v3, 0x50f985bc

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v3

    const-string v3, "\uc347\u6f43\ua4dd\ub31d\ue6b9\ua384\u6c79\ua6bf\ud22a\udf8d\uc4d4\uab7d\ufb91\uc7de\ua207\ud7cf\u9977"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\ubc48\uf985\ub850\ud1b0"

    invoke-static {v3, v5, v1, v4, v6}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget v0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl()Z
    .locals 8

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int v2, v2, 0x6721

    int-to-char v2, v2

    const v3, 0x25e3c88

    const/4 v4, 0x0

    invoke-static {v4, v4, v4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v5

    sub-int/2addr v3, v5

    const-string v5, "\u2293\u8350\u5396\ubd86\u6e51\uc125\u7e95\u79d6\u911b\u65be\u2d8f\u40f4\u7d0a\udb87\u7b7a\u0c76\u4cd3\u7c3c\u2edf"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u888d\u5e3c\u2103\ufc67"

    invoke-static {v5, v6, v2, v3, v7}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "has_shown"

    invoke-virtual {v0, v1, v4}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v0

    sget v1, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public static getDownloadingList()Ljava/lang/String;
    .locals 8

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x6721

    int-to-char v3, v3

    const v4, 0x35e3c88

    const-string v5, ""

    invoke-static {v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    sub-int/2addr v4, v5

    const-string v5, "\u2293\u8350\u5396\ubd86\u6e51\uc125\u7e95\u79d6\u911b\u65be\u2d8f\u40f4\u7d0a\udb87\u7b7a\u0c76\u4cd3\u7c3c\u2edf"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u888d\u5e3c\u2103\ufc67"

    invoke-static {v5, v6, v3, v4, v7}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "show_times_one_day"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 v1, 0x2c

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(I)V
    .locals 6

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xe586

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v3

    add-int/2addr v3, v2

    int-to-char v2, v3

    const/16 v3, 0x30

    invoke-static {p0, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v3, "\u63f3\ue4f5\u771f\uac98\u4284\u5059\u3594\uf675\ue377\u6e94\uaa70\ufb29\u3122\ud813\ub91f\u2b12\u09dc\uad7d"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ua949\uff5f\u863f\u07e5"

    invoke-static {v3, v4, v2, p0, v5}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;I)V
    .locals 8

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit16 v2, v2, 0x6722

    int-to-char v2, v2

    const v3, 0x35e3c88

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v3

    const-string v3, "\u2293\u8350\u5396\ubd86\u6e51\uc125\u7e95\u79d6\u911b\u65be\u2d8f\u40f4\u7d0a\udb87\u7b7a\u0c76\u4cd3\u7c3c\u2edf"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u888d\u5e3c\u2103\ufc67"

    invoke-static {v3, v6, v2, v5, v7}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    sget p0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x34

    :goto_0
    packed-switch v4, :pswitch_data_0

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener()I
    .locals 10

    .line 15
    sget v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lccsansan/bt/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 15
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/bt/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x36

    goto :goto_1

    :cond_2
    const/16 v5, 0x25

    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 3
    :pswitch_0
    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v5, v0

    if-ne v5, v2, :cond_6

    .line 2
    sget v5, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v5, v5, 0x17

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/2addr v5, v2

    if-nez v5, :cond_3

    .line 6
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    .line 7
    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 8
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 2
    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 8
    goto :goto_3

    :pswitch_1
    return v0

    .line 2
    :goto_3
    sget v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_5

    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v4

    :catchall_1
    move-exception v0

    throw v0

    .line 15
    :cond_5
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    const v2, 0x6dac2f7c

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "\u5254\u74d2\u8c97\ue1f8\ud8c9\u9bc8\ue130\u7695\u36c2\u46c7\u4c5e\uc759\ua1b7\u7de8\u3aae\u7108\ue138\u9079\u3e05\uaba7\ue0ed\udf96\u31cc\ubd25P\u6142\ufc00\u67fa\u9c49\ue0e2\u4a9e\ue3f1\u8eb0"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u7cab\uac2f\u5f6d\ufc59"

    invoke-static {v2, v5, v1, v3, v6}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    :pswitch_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener(Z)V
    .locals 7

    .line 5
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int v2, v2, 0x6721

    int-to-char v2, v2

    const v3, 0x35e3c88

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    const-string v4, "\u2293\u8350\u5396\ubd86\u6e51\uc125\u7e95\u79d6\u911b\u65be\u2d8f\u40f4\u7d0a\udb87\u7b7a\u0c76\u4cd3\u7c3c\u2edf"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u888d\u5e3c\u2103\ufc67"

    invoke-static {v4, v5, v2, v3, v6}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "has_shown"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    sget p0, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload()I
    .locals 7

    .line 5
    nop

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "ad_settings"

    invoke-direct {v1, v2, v3}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v2, "\u63f3\ue4f5\u771f\uac98\u4284\u5059\u3594\uf675\ue377\u6e94\uaa70\ufb29\u3122\ud813\ub91f\u2b12\u09dc\uad7d"

    const-string v3, "\u0000\u0000\u0000\u0000"

    const v4, 0xe587

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const-string v6, "\ua949\uff5f\u863f\u07e5"

    invoke-static {v2, v3, v4, v5, v6}, Lccsansan/bt/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    const/16 v2, 0x4f

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :pswitch_0
    sget v1, Lccsansan/bt/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/16 v1, 0x13

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 2
    goto :goto_2

    .line 5
    :pswitch_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method
