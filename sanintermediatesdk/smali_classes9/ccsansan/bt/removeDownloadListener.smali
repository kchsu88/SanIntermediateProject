.class public Lccsansan/bt/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:[I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bt/removeDownloadListener;->removeDownloadListener:[I

    return-void

    :array_0
    .array-data 4
        0xfffc155
        -0x269836c6
        -0x10ac2b1d
        -0x4704d4ff
        0x636d3593
        0x74594b7c
        0x7ea0b946
        -0x7421658d
        -0x5982fa53    # -8.77847E-16f
        0x22b1de01
        0x64402bb7
        0x360771fc
        0x87e0a00
        -0x6244d72a
        -0x15fbb38c
        0x454966c4
        -0x55258b02
        0x6f98df6
    .end array-data
.end method

.method private static IncentiveDownloadUtils([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsansan/bt/removeDownloadListener;->removeDownloadListener:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static IncentiveDownloadUtils()Z
    .locals 5

    .line 6
    sget v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3
    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xe

    const-string v3, ""

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-static {v2, v4}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    goto :goto_2

    .line 6
    :pswitch_0
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/16 v4, 0x49

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x29

    invoke-static {v2, v4}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :goto_2
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "enable"

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 3
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    nop

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 6
    return v0

    :pswitch_1
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data

    :array_1
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static addDownloadListener(Ljava/lang/String;)I
    .locals 6

    .line 15
    const-string v0, "_show_delay"

    .line 0
    const/16 v1, 0x1f4

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/16 v4, 0x30

    invoke-static {v4}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    rsub-int/lit8 v4, v4, 0x4c

    invoke-static {v3, v4}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 11
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    sget v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :cond_0
    packed-switch v4, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 v0, 0x62

    :try_start_1
    div-int/2addr v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    .line 13
    :cond_1
    :try_start_2
    const-string p0, "show_delay"

    .line 15
    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    :cond_2
    sget p0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/4 v4, 0x0

    :cond_3
    packed-switch v4, :pswitch_data_1

    return v1

    :pswitch_1
    const/16 p0, 0x53

    :try_start_3
    div-int/2addr p0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static addDownloadListener()Z
    .locals 9

    .line 6
    sget v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, ""

    cmp-long v8, v3, v5

    rsub-int/lit8 v3, v8, 0x1c

    invoke-static {v1, v3}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "after_xz_enable"

    .line 6
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catch_0
    move-exception v0

    :cond_1
    return v2

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static getDownloadStatusByUrl()I
    .locals 7

    .line 6
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-static {v2, v3}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v2, :cond_0

    .line 5
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [I

    const v1, -0x3a9e18a2

    aput v1, v0, v3

    const v1, -0x5db6478e

    aput v1, v0, v4

    const v1, 0x20b62800

    aput v1, v0, v5

    const/4 v1, 0x3

    const v6, 0x6922dabf

    aput v6, v0, v1

    const/4 v1, 0x4

    const v6, -0x213f7265

    aput v6, v0, v1

    const/4 v1, 0x5

    const v6, 0x1a36dfd4

    aput v6, v0, v1

    const/4 v1, 0x6

    const v6, -0x6b3e0638

    aput v6, v0, v1

    const/4 v1, 0x7

    const v6, 0x6eeb3e84

    aput v6, v0, v1

    const/16 v1, 0x8

    const v6, 0x5e84fe5

    aput v6, v0, v1

    const/16 v1, 0x9

    const v6, -0x4a6c1a87

    aput v6, v0, v1

    const/16 v1, 0xa

    const v6, 0x5a7b5609

    aput v6, v0, v1

    const/16 v1, 0xb

    const v6, 0x7dd4c849

    aput v6, v0, v1

    const/16 v1, 0xc

    const v6, 0x7d18c0d1

    aput v6, v0, v1

    const/16 v1, 0xd

    const v6, 0x3b498f19

    aput v6, v0, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x1a

    invoke-static {v0, v1}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/2addr v1, v5

    return v0

    :catch_0
    move-exception v0

    :cond_0
    sget v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/2addr v0, v5

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v5

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static getDownloadedList()Z
    .locals 4

    .line 14
    sget v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "app_promotion_active_config"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "enable"

    .line 14
    invoke-virtual {v2, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    :cond_1
    sget v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public static getDownloadedRecordByUrl()I
    .locals 9

    .line 6
    sget v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3
    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0xe

    const/4 v4, 0x5

    const-string v5, ""

    packed-switch v0, :pswitch_data_0

    .line 6
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-array v6, v3, [I

    fill-array-data v6, :array_0

    const/16 v7, 0x15

    invoke-static {v5, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v6, v7}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x5

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-array v6, v3, [I

    fill-array-data v6, :array_1

    invoke-static {v5, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1c

    invoke-static {v6, v7}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x2

    .line 5
    :goto_1
    :try_start_0
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [I

    const v3, -0x3a9e18a2

    aput v3, v0, v2

    const/4 v2, 0x1

    const v3, -0x5db6478e

    aput v3, v0, v2

    const v2, 0x20b62800

    aput v2, v0, v1

    const/4 v2, 0x3

    const v3, 0x6922dabf

    aput v3, v0, v2

    const/4 v2, 0x4

    const v3, -0x213f7265

    aput v3, v0, v2

    const v2, 0x1a36dfd4

    aput v2, v0, v4

    const/4 v2, 0x6

    const v3, -0x6b3e0638

    aput v3, v0, v2

    const/4 v2, 0x7

    const v3, 0x6eeb3e84

    aput v3, v0, v2

    const/16 v2, 0x8

    const v3, 0x5e84fe5

    aput v3, v0, v2

    const/16 v2, 0x9

    const v3, -0x4a6c1a87

    aput v3, v0, v2

    const/16 v2, 0xa

    const v3, 0x41f6aeb1

    aput v3, v0, v2

    const/16 v2, 0xb

    const v3, 0x7c0d6685

    aput v3, v0, v2

    const/16 v2, 0xc

    const v3, -0xf20c505

    aput v3, v0, v2

    const/16 v2, 0xd

    const v3, -0x6d1d1d58

    aput v3, v0, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    rsub-int/lit8 v2, v2, 0x1b

    invoke-static {v0, v2}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget v2, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x2c

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 6
    return v0

    .line 3
    :pswitch_1
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :catch_0
    move-exception v0

    move v1, v5

    goto :goto_3

    .line 3
    :cond_2
    const/4 v1, 0x5

    .line 6
    :cond_3
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data

    :array_1
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static getDownloadingList()Z
    .locals 4

    .line 6
    sget v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1c

    invoke-static {v2, v3}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "inner_enable"

    .line 6
    invoke-virtual {v2, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x4e

    goto :goto_0

    :cond_1
    const/16 v1, 0x4d

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static getDownloadingRecordByUrl()Z
    .locals 6

    .line 6
    sget v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0xe

    const-string v4, ""

    packed-switch v0, :pswitch_data_0

    .line 6
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    const/16 v3, 0xb

    const/16 v5, 0x1b

    invoke-static {v4, v5, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    ushr-int/2addr v3, v5

    invoke-static {v1, v3}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    const/16 v5, 0x30

    invoke-static {v4, v5, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    invoke-static {v3, v2}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :goto_1
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "outer_enable"

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 3
    :cond_1
    const/4 v1, 0x0

    .line 6
    :cond_2
    :goto_2
    nop

    .line 3
    sget v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data

    :array_1
    .array-data 4
        0x7e75d126
        -0x6edb0228
        -0x45343212
        0xed405c3
        -0x54d05b
        0x4255526d
        0x6ee8677c
        -0x40933ba9
        0x7dce9765
        0x14100b50
        0x3be2c0cf
        0x1bbc1425
        0x2d9c6c4e
        0x7635d83b
    .end array-data
.end method

.method public static removeDownloadListener()J
    .locals 4

    .line 6
    nop

    .line 0
    const-wide/16 v0, 0xbb8

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "cpi_alive_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 5
    new-instance v3, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 6
    sget v2, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0

    .line 5
    :goto_1
    :try_start_1
    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "check_delay"

    .line 6
    invoke-virtual {v3, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v2, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0

    :catch_0
    move-exception v2

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 8
    sget v0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "obb_item_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 8
    sget v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/16 v1, 0x4f

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    .line 2
    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 8
    :goto_1
    const/16 v3, 0x57

    :try_start_0
    div-int/lit8 v3, v3, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lccsanorg/json/JSONObject;

    const-string v3, ""

    invoke-virtual {v1, p0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "path"

    .line 8
    invoke-virtual {v0, p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v2

    :catchall_0
    move-exception p0

    throw p0

    .line 2
    :cond_3
    :goto_2
    nop

    .line 8
    sget p0, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    const/16 v0, 0x51

    add-int/2addr p0, v0

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v0, 0x10

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-object v2

    :pswitch_1
    const/16 p0, 0x43

    :try_start_2
    div-int/lit8 p0, p0, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload()I
    .locals 4

    .line 6
    sget v0, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_alive_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x45

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :pswitch_0
    sget v1, Lccsansan/bt/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v1, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 2
    :cond_2
    nop

    .line 6
    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bt/removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x2f

    goto :goto_1

    :cond_3
    const/16 v1, 0x19

    :goto_1
    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_1
    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :goto_2
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "need_wake_up"

    .line 6
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method
