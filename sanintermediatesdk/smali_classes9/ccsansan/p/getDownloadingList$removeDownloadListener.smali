.class Lccsansan/p/getDownloadingList$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownList:I

.field private static getDownloadStatusByUrl:[I

.field private static getDownloadedRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:J

.field final synthetic addDownloadListener:F

.field final synthetic deleteDownItem:J

.field final synthetic getDownloadedList:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6nxhBJFPE_UW59VEWQRmv8sSScA(Lccsansan/p/getDownloadingList$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJJLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadStatusByUrl:[I

    return-void

    :array_0
    .array-data 4
        0x7b1dc600
        0x951248b
        -0x5d1b33de
        -0x65998b36
        0x348b528a
        0x4f9605b9    # 5.0339149E9f
        -0x66f3381e
        -0x7ccf4ddc
        -0x5af04173
        0x55d6461e
        0x61364cea
        -0x612ba076
        0xf4a5a86
        -0x5acda5b3
        0x3f356d8e
        -0x5a26dc6f
        0x678a1181
        -0x1026df2f
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJJLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    iput-object p2, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput p5, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->addDownloadListener:F

    iput-wide p6, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:J

    iput-wide p8, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownItem:J

    iput-object p10, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static addDownloadListener([II)Ljava/lang/String;
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
    sget-object v4, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadStatusByUrl:[I

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

.method private synthetic getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJJLjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-wide/from16 v5, p6

    .line 91
    nop

    .line 1
    const/4 v7, 0x1

    invoke-static {v7, v0, v2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v9, "AD.CPI.Observer"

    if-eqz v8, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In white list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x8

    new-array v11, v10, [I

    fill-array-data v11, :array_0

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    rsub-int/lit8 v12, v16, 0xf

    invoke-static {v11, v12}, Lccsansan/p/getDownloadingList$removeDownloadListener;->addDownloadListener([II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v8, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v8}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/p/getDownloadingList;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v8}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/p/getDownloadingList;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static/range {p3 .. p4}, Lccsansan/ab/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    :goto_0
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 15
    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 7
    iget-object v11, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v11}, Lccsansan/p/getDownloadingList;->unifiedDownload(Lccsansan/p/getDownloadingList;)Lccsansan/bw/AdError;

    move-result-object v11

    invoke-virtual {v11, v8}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-lez v11, :cond_3

    .line 91
    :pswitch_0
    return-void

    .line 10
    :cond_3
    iget-object v11, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v11}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/p/getDownloadingList;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 11
    iget-object v11, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v11}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/p/getDownloadingList;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "put final url: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    nop

    .line 14
    :cond_4
    iget-object v3, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v3}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    invoke-virtual {v3, v0, v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v3

    const-string v9, "s2s_track_status"

    const/4 v11, 0x3

    const/4 v13, 0x2

    if-eqz v3, :cond_8

    .line 53
    sget v14, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    add-int/2addr v14, v11

    rem-int/lit16 v15, v14, 0x80

    sput v15, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/2addr v14, v13

    if-eqz v14, :cond_6

    .line 15
    iget v14, v3, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v14, v11, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    packed-switch v14, :pswitch_data_1

    goto :goto_3

    :cond_6
    iget v14, v3, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v14, v13, :cond_7

    :goto_3
    const/4 v14, -0x3

    .line 16
    invoke-virtual {v3, v9, v14}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v7, :cond_8

    :cond_7
    :pswitch_1
    return-void

    :cond_8
    const/4 v14, -0x2

    if-eqz v3, :cond_d

    .line 15
    sget v15, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v15, v15, 0x63

    rem-int/lit16 v11, v15, 0x80

    sput v11, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    rem-int/2addr v15, v13

    if-nez v15, :cond_9

    .line 20
    :cond_9
    iget-object v11, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 15
    const/16 v11, 0x3e

    goto :goto_4

    :cond_a
    const/16 v11, 0xb

    :goto_4
    packed-switch v11, :pswitch_data_2

    .line 20
    iget-object v11, v3, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    goto :goto_5

    :pswitch_2
    iget-object v11, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    :goto_5
    invoke-static {v11}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v14, :cond_c

    .line 15
    sget v11, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    add-int/lit8 v11, v11, 0xd

    rem-int/lit16 v15, v11, 0x80

    sput v15, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/2addr v11, v13

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    const/4 v11, 0x1

    :goto_6
    packed-switch v11, :pswitch_data_3

    .line 20
    const/4 v11, 0x1

    goto :goto_7

    .line 15
    :pswitch_3
    const/4 v11, 0x0

    goto :goto_7

    .line 20
    :cond_c
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_d

    return-void

    :cond_d
    if-eqz v3, :cond_e

    .line 15
    const/4 v11, 0x0

    goto :goto_8

    :cond_e
    const/4 v11, 0x1

    :goto_8
    const-string v15, "pkg_type"

    const-string v14, ""

    packed-switch v11, :pswitch_data_4

    .line 53
    sget v11, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    add-int/lit8 v11, v11, 0x23

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/2addr v11, v13

    if-eqz v11, :cond_f

    goto :goto_9

    .line 15
    :pswitch_4
    move-object v10, v14

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_a

    .line 20
    :cond_f
    :goto_9
    nop

    .line 31
    invoke-virtual {v3, v15, v7}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v11

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    const/4 v12, 0x0

    invoke-static {v12}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v16

    rsub-int/lit8 v7, v16, 0xd

    invoke-static {v10, v7}, Lccsansan/p/getDownloadingList$removeDownloadListener;->addDownloadListener([II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {v3, v7, v12}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v7

    .line 33
    iget-object v10, v3, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    move v12, v7

    .line 36
    :goto_a
    iget-object v7, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v7, v4}, Lccsansan/p/getDownloadingList;->unifiedDownload(Lccsansan/p/getDownloadingList;F)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 38
    new-instance v7, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {v7}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;-><init>()V

    .line 39
    invoke-virtual {v7, v2, v8, v5, v6}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    .line 40
    invoke-virtual {v7, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    .line 41
    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v0, v10, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    .line 42
    invoke-virtual {v7, v11}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    if-nez v3, :cond_10

    move-object v13, v10

    goto :goto_b

    :cond_10
    iget-object v13, v3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    :goto_b
    invoke-virtual {v7, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v17, v4, v13

    if-ltz v17, :cond_12

    .line 15
    sget v17, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v10, v17, 0x33

    rem-int/lit16 v13, v10, 0x80

    sput v13, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    const/4 v13, 0x2

    rem-int/2addr v10, v13

    if-nez v10, :cond_11

    const/4 v10, 0x4

    goto :goto_c

    .line 42
    :cond_11
    const/4 v10, 0x3

    goto :goto_c

    :cond_12
    const/4 v10, 0x1

    .line 43
    :goto_c
    invoke-virtual {v7, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    move-object/from16 p3, v14

    move-wide/from16 v13, p8

    invoke-virtual {v7, v13, v14}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    .line 44
    invoke-virtual {v7, v12}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-nez v10, :cond_13

    .line 91
    const/4 v10, 0x0

    goto :goto_d

    :cond_13
    sget v10, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    add-int/lit8 v10, v10, 0x19

    rem-int/lit16 v12, v10, 0x80

    sput v12, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v12, 0x2

    rem-int/2addr v10, v12

    if-eqz v10, :cond_14

    :cond_14
    const/4 v10, 0x1

    .line 45
    :goto_d
    invoke-virtual {v7, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object v7

    .line 47
    new-instance v10, Lccsansan/cy/resume;

    iget-object v12, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v12}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12, v7}, Lccsansan/cy/resume;-><init>(Lccsanandroid/content/Context;Lccsansan/cy/getDownloadingRecordByUrl;)V

    .line 48
    new-instance v7, Lccsanandroid/os/Message;

    invoke-direct {v7}, Lccsanandroid/os/Message;-><init>()V

    .line 49
    const/4 v12, 0x2

    iput v12, v7, Lccsanandroid/os/Message;->what:I

    .line 50
    iput-object v10, v7, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    const/high16 v12, 0x42c80000    # 100.0f

    cmpg-float v4, v4, v12

    if-gez v4, :cond_16

    .line 52
    sget-object v4, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 91
    sget v4, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v4, v4, 0x77

    rem-int/lit16 v12, v4, 0x80

    sput v12, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    const/4 v12, 0x2

    rem-int/2addr v4, v12

    if-nez v4, :cond_15

    .line 15
    const/16 v4, 0x21

    goto :goto_e

    :cond_15
    const/16 v4, 0x15

    :goto_e
    packed-switch v4, :pswitch_data_5

    .line 53
    sget-object v4, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :pswitch_5
    sget-object v4, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    .line 91
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 56
    :cond_16
    sget-object v4, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 57
    sget-object v4, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_17
    :goto_f
    iget-object v4, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v4}, Lccsansan/p/getDownloadingList;->getDownloadingList(Lccsansan/p/getDownloadingList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "-1"

    if-nez v3, :cond_19

    .line 63
    new-instance v3, Lccsansan/m/getDownloadedList;

    invoke-direct {v3}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 64
    iput-object v2, v3, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 65
    iput-object v0, v3, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 66
    iput-object v8, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v3, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 68
    iput-wide v5, v3, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 70
    invoke-virtual {v3, v9, v4}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 72
    sget-object v2, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_10

    .line 71
    :cond_18
    const/4 v4, -0x2

    .line 74
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_10
    sget-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->START_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v0}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v0

    iput v0, v3, Lccsansan/m/getDownloadedList;->execute:I

    .line 77
    const/4 v0, 0x0

    iput v0, v3, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v0}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    goto :goto_12

    .line 81
    :cond_19
    iget-object v0, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 82
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v2, v3, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 81
    :cond_1a
    const/4 v5, -0x2

    .line 84
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v2, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    nop

    .line 86
    invoke-virtual {v3, v9, v4}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v0}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 89
    :goto_12
    iget-object v0, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v0}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 91
    :cond_1b
    iget-object v0, v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/p/getDownloadingList;

    invoke-static {v0}, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl(Lccsansan/p/getDownloadingList;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v3, p10

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x21
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        -0x8e3c4b0
        0x6762c9cd
        -0x5e95994
        0x60ea1ff5
        0x152fc608
        0x6b7ef33a
        -0x10827dd
        0x46a110cc
    .end array-data

    :array_1
    .array-data 4
        -0x8e3c4b0
        0x6762c9cd
        -0x5e95994
        0x60ea1ff5
        -0x2657413e
        -0x5a942488
        -0x3f6bab03
        -0x6e91e60d
    .end array-data
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 14

    .line 2
    sget v0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v3, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget v7, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->addDownloadListener:F

    iget-wide v8, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:J

    iget-wide v10, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownItem:J

    iget-object v12, p0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    new-instance v13, Lccsansan/p/getDownloadingList$removeDownloadListener$$ExternalSyntheticLambda0;

    move-object v1, v13

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lccsansan/p/getDownloadingList$removeDownloadListener$$ExternalSyntheticLambda0;-><init>(Lccsansan/p/getDownloadingList$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJJLjava/lang/String;)V

    invoke-interface {v0, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget v0, Lccsansan/p/getDownloadingList$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList$removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
