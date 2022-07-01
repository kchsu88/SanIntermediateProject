.class public Lccsansan/f/addDownloadListener;
.super Lccsansan/aw/getDownloadedRecordByUrl;
.source ""

# interfaces
.implements Lccsansan/aw/addDownloadListener;


# static fields
.field private static final deleteDownItem:I

.field private static getDownloadStatusByUrl:Lccsansan/dn/IncentiveDownloadUtils;

.field private static getDownloadedCount:Z

.field private static getDownloadedList:[C

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:I

.field private static pause:I

.field private static resume:Z

.field private static final unifiedDownload:I


# instance fields
.field private final getDownloadingRecordByUrl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/f/addDownloadListener;->pause:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    invoke-static {}, Lccsansan/f/addDownloadListener;->getDownloadingList()V

    .line 1
    invoke-static {}, Lccsansan/bt/getDownloadedRecordByUrl;->IncentiveDownloadUtils()I

    move-result v0

    sput v0, Lccsansan/f/addDownloadListener;->unifiedDownload:I

    .line 2
    invoke-static {}, Lccsansan/bt/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result v0

    sput v0, Lccsansan/f/addDownloadListener;->deleteDownItem:I

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lccsansan/f/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/dn/IncentiveDownloadUtils;

    sget v0, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const-string v2, "\u0085\u0089\u0083\u0082\u0088\u0087\u0083\u0085\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v2}, Lccsansan/f/addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0}, Lccsansan/aw/getDownloadedRecordByUrl;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/f/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/aw/addDownloadListener;)V

    .line 9
    new-instance v0, Lccsansan/cv/getDownloadingRecordByUrl;

    invoke-direct {v0}, Lccsansan/cv/getDownloadingRecordByUrl;-><init>()V

    invoke-virtual {p0, v0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/aw/getDownloadingList;)V

    return-void
.end method

.method private IncentiveDownloadUtils()Lccsansan/dn/IncentiveDownloadUtils;
    .locals 4

    .line 1
    sget-object v0, Lccsansan/f/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/dn/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lccsansan/f/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/f/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/dn/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/dn/addDownloadListener;

    sget v2, Lccsansan/f/addDownloadListener;->unifiedDownload:I

    sget v3, Lccsansan/f/addDownloadListener;->deleteDownItem:I

    invoke-direct {v1, v2, v3}, Lccsansan/dn/addDownloadListener;-><init>(II)V

    sput-object v1, Lccsansan/f/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/dn/IncentiveDownloadUtils;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/f/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/dn/IncentiveDownloadUtils;

    return-object v0
.end method

.method private IncentiveDownloadUtils(Lccsansan/cv/IncentiveDownloadUtils;)V
    .locals 8

    .line 104
    const-string v0, "md5"

    const-string v1, "crc32c"

    sget v2, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const-string v5, "no_use_cloud_checksum"

    const-string v6, "x-goog-hash"

    const-string v7, "x-amz-meta-md5chksum"

    packed-switch v2, :pswitch_data_0

    .line 88
    invoke-virtual {p1, v7}, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;

    move-result-object v2

    invoke-virtual {v2, v6}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;

    .line 90
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    goto :goto_2

    .line 104
    :pswitch_0
    nop

    .line 88
    invoke-virtual {p1, v7}, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;

    move-result-object v2

    invoke-virtual {v2, v6}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;

    .line 90
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x20

    :try_start_0
    div-int/2addr v6, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_1

    .line 104
    :catchall_0
    move-exception p1

    throw p1

    .line 91
    :goto_2
    return-void

    .line 94
    :cond_1
    :try_start_1
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    .line 95
    :pswitch_1
    nop

    .line 96
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 104
    const/4 v2, 0x0

    .line 97
    :goto_4
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 98
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    nop

    .line 101
    invoke-virtual {v5, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_5

    .line 91
    sget v0, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 102
    const/16 v0, 0x28

    goto :goto_6

    :cond_4
    const/16 v0, 0xb

    :goto_6
    packed-switch v0, :pswitch_data_2

    .line 91
    goto :goto_7

    .line 101
    :pswitch_2
    nop

    .line 102
    :try_start_2
    invoke-virtual {v5, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    goto :goto_8

    :goto_7
    invoke-virtual {v5, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x1

    .line 104
    :goto_8
    nop

    .line 103
    :goto_9
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 104
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catch_0
    move-exception p1

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/f/IncentiveDownloadUtils;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 11

    .line 128
    nop

    .line 105
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    .line 106
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/bw/getLoaderClassName;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 108
    iget-object v2, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "extract zip file error:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudXzManager"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget p0, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    .line 128
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/san/xz/base/XzRecord;->setFilePath(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object p0

    check-cast p0, Lccsansan/ae/unifiedDownload;

    .line 114
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object p2

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    .line 117
    array-length v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_1

    .line 122
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 117
    aget-object v8, p2, v6

    .line 118
    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v9

    const-string v10, "split"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 125
    :pswitch_0
    invoke-virtual {p0, v0}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v1}, Lccsansan/ae/unifiedDownload;->addDownloadListener(Ljava/util/List;)V

    .line 127
    invoke-virtual {p0, v2, v3}, Lccsansan/ae/getDownloadingList;->unifiedDownload(J)V

    .line 128
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    return-void

    .line 122
    :goto_2
    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 121
    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v7

    const-string v9, "base.apk"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 122
    :pswitch_1
    sget v7, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v7, v7, 0x61

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_3

    .line 119
    :cond_3
    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v9

    add-long/2addr v2, v9

    .line 120
    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 128
    :goto_4
    sget v7, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v7, v7, 0x73

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 122
    const/16 v7, 0x5e

    goto :goto_5

    :cond_4
    const/16 v7, 0x58

    :goto_5
    packed-switch v7, :pswitch_data_2

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v7

    xor-long/2addr v2, v7

    goto :goto_6

    :pswitch_2
    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v7

    add-long/2addr v2, v7

    .line 128
    :goto_6
    nop

    .line 122
    :cond_5
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 128
    sget v7, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v7, v7, 0x29

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_6

    :cond_6
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_2
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsansan/f/addDownloadListener;->getDownloadedList:[C

    .line 1166
    sget v2, Lccsansan/f/addDownloadListener;->getDownloadedRecordByUrl:I

    .line 1168
    sget-boolean v3, Lccsansan/f/addDownloadListener;->resume:Z

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
    sget-boolean p3, Lccsansan/f/addDownloadListener;->getDownloadedCount:Z

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

.method private addDownloadListener(Lccsansan/f/IncentiveDownloadUtils;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 68
    nop

    .line 1
    iget-wide v0, p1, Lccsansan/f/IncentiveDownloadUtils;->getDownloadingList:J

    const-wide/16 v2, 0x0

    const/16 v4, 0xc

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 61
    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    :goto_0
    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 68
    :pswitch_0
    sget v2, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2
    :cond_1
    invoke-virtual {p1, v0, v1}, Lccsansan/aw/IncentiveDownloadUtils;->removeDownloadListener(J)V

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target file name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudXzManager"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :try_start_1
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Lccsansan/cv/IncentiveDownloadUtils;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    sget v2, Lccsansan/f/addDownloadListener;->deleteDownItem:I

    invoke-virtual {v1, v2}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(I)V

    .line 21
    invoke-direct {p0, v1}, Lccsansan/f/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/cv/IncentiveDownloadUtils;)V

    .line 22
    invoke-virtual {v1}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 23
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v2

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lccsancom/san/xz/base/XzRecord;->setCompletedSize(J)V

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 28
    const/4 v2, 0x0

    const/4 v10, 0x0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x7f

    const-string v7, "\u0096\u0085\u0089\u0083\u0082\u0088\u0087\u0083\u0095"

    invoke-static {v10, v5, v10, v7}, Lccsansan/f/addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lccsansan/f/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/dn/IncentiveDownloadUtils;

    move-result-object v7

    new-instance v9, Lccsansan/f/addDownloadListener$removeDownloadListener;

    invoke-direct {v9, p0, p1, v1}, Lccsansan/f/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/f/addDownloadListener;Lccsansan/f/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils;)V

    move-object v4, v1

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    invoke-virtual {v1}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsansan/f/addDownloadListener;->removeDownloadListener(Lccsansan/f/IncentiveDownloadUtils;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 68
    sget p1, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_3

    .line 57
    :cond_3
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 68
    nop

    .line 57
    :cond_4
    :goto_2
    nop

    .line 68
    return-void

    .line 57
    :catchall_0
    move-exception v4

    .line 58
    invoke-virtual {v1}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v1

    if-nez v1, :cond_6

    .line 60
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 68
    sget p1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/2addr p1, v3

    if-eqz p1, :cond_5

    .line 61
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    nop

    :goto_3
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    :try_start_3
    array-length p1, v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 68
    :catchall_1
    move-exception p1

    throw p1

    :goto_4
    sget p1, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_7

    goto :goto_5

    .line 62
    :cond_6
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsansan/f/addDownloadListener;->removeDownloadListener(Lccsansan/f/IncentiveDownloadUtils;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    :cond_7
    :goto_5
    throw v4

    :catch_0
    move-exception p1

    .line 66
    const-string v0, "error when create TSVMetadata"

    invoke-static {v2, v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-direct {v0, v3, p1}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 68
    new-instance p1, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string v0, "create cache file failed!"

    invoke-direct {p1, v4, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x80

    sput v0, Lccsansan/f/addDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/f/addDownloadListener;->resume:Z

    sput-boolean v0, Lccsansan/f/addDownloadListener;->getDownloadedCount:Z

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/addDownloadListener;->getDownloadedList:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xe3s
        0xecs
        0xefs
        0xf5s
        0xe4s
        0xaes
        0xf7s
        0xees
        0xe1s
        0xe5s
        0xf8s
        0xf4s
        0xa0s
        0xf2s
        0xf3s
        0xa1s
        0xe9s
        0xf0s
        0xe6s
        0xbas
        0xc4s
        0xdfs
        0xebs
        0xc3s
        0xd4s
        0xfas
    .end array-data
.end method

.method private getDownloadingList(Lccsansan/f/getDownloadStatusByUrl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 32
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 18
    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 17
    invoke-virtual {p1}, Lccsansan/f/getDownloadStatusByUrl;->pause()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_2

    .line 17
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/f/getDownloadStatusByUrl;->pause()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v3, 0x57

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_1

    :goto_3
    sget p1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    .line 32
    return-void

    .line 21
    :cond_1
    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    sget p1, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 32
    :pswitch_1
    return-void

    .line 18
    :goto_4
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 24
    :cond_3
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 25
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 26
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v5

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    .line 29
    :try_start_2
    invoke-virtual {p1}, Lccsansan/f/getDownloadStatusByUrl;->removeDownloadListener()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 30
    invoke-virtual {p1}, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/f/getDownloadStatusByUrl;->removeDownloadListener()Lccsansan/da/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/san/xz/base/XzRecord;->setFilePath(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl()Lccsansan/cv/getDownloadingRecordByUrl;
    .locals 3

    .line 1
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    check-cast v0, Lccsansan/cv/getDownloadingRecordByUrl;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    check-cast v0, Lccsansan/cv/getDownloadingRecordByUrl;

    goto :goto_2

    :goto_1
    const/16 v2, 0x26

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
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

.method public static removeDownloadListener(Lccsansan/f/IncentiveDownloadUtils;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v1

    .line 72
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->isDynamicApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1, p2}, Lccsansan/f/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/IncentiveDownloadUtils;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    return-void

    .line 77
    :cond_0
    invoke-virtual {p1, p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z

    move-result v5

    const/4 v0, 0x0

    const-string v3, "CloudXzManager"

    if-nez v5, :cond_1

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rename cache to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-static {p1, p2}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p1

    if-nez p1, :cond_3

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not exist!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p0, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 p1, 0xc

    if-nez v0, :cond_2

    const-string p2, "unknown"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string v0, "rename or copy failed!"

    invoke-direct {p0, p1, v0, p2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_3
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccsansan/bn/getDownloadingList;->getDownloadingList(Lccsansan/f/IncentiveDownloadUtils;JJZ)V

    .line 93
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/san/xz/base/XzRecord;->setFilePath(Ljava/lang/String;)V

    return-void
.end method

.method private unifiedDownload(Lccsansan/f/IncentiveDownloadUtils;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 85
    nop

    .line 33
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-static {v0}, Lccsansan/k/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/dj/IncentiveDownloadUtils;

    move-result-object v0

    .line 35
    new-instance v1, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsansan/f/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/f/addDownloadListener;Lccsansan/f/IncentiveDownloadUtils;)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)V

    .line 73
    invoke-virtual {v0, p1, v1}, Lccsansan/dj/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u008d\u0094\u008d\u0085\u008a\u0082\u0091\u0089\u0093\u008d\u008c\u008e\u0089\u0092\u008d\u008f\u0091\u008d\u0090\u008c\u0082\u0084\u008f\u008a\u008e\u008d\u0085\u0089\u0083\u0082\u0088\u0087\u0083\u0085\u008d\u008a\u008c\u0084\u0081\u008a\u008b\u008a"

    invoke-static {v3, v1, v3, v4}, Lccsansan/f/addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->resume()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudXzManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->resume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    goto :goto_5

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lccsansan/aw/getDownloadingRecordByUrl;

    if-nez v0, :cond_3

    .line 85
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    goto :goto_4

    :goto_3
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_2

    .line 82
    :goto_4
    new-instance p1, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string v0, "unknown error!"

    invoke-direct {p1, v2, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw p1

    .line 84
    :cond_2
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 85
    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lccsansan/aw/getDownloadingRecordByUrl;

    throw p1

    .line 77
    :cond_4
    :goto_5
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsansan/f/addDownloadListener;->removeDownloadListener(Lccsansan/f/IncentiveDownloadUtils;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 81
    sget p1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    .line 85
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDownloadListener()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/aw/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lccsansan/f/addDownloadListener;->getDownloadingRecordByUrl()Lccsansan/cv/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cv/getDownloadingRecordByUrl;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lccsansan/f/addDownloadListener;->getDownloadingRecordByUrl()Lccsansan/cv/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cv/getDownloadingRecordByUrl;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/16 v1, 0xf

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 16
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    instance-of v0, p1, Lccsansan/f/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 16
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 14
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x7f

    const/4 v0, 0x0

    const-string v1, "\u008d\u0088\u008e\u0084\u008c\u008a\u008e\u008d\u0097\u008f\u0089\u0099\u0085\u0089\u0083\u0082\u0088\u0087\u0083\u0095\u0085\u0084\u0083\u0082\u0098\u008d\u008c\u0083\u0088\u008d\u008f\u0091\u008d\u0097\u008f\u0089\u008c\u0096"

    invoke-static {v0, p1, v0, v1}, Lccsansan/f/addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 15
    const-string v1, "CloudXzManager"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-static {v2}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const-string v3, "\u0090\u009a\u008b\u008d\u0092\u0092\u0089\u008d\u008e\u0083\u0093\u008d\u0097\u008f\u0089\u0099\u0085\u0089\u0083\u0082\u0088\u0087\u0083\u0095\u0085\u0084\u0083\u0082\u0098\u008d\u008c\u0083\u0088\u008d\u008f\u0091\u008d\u0097\u008f\u0089\u008c"

    invoke-static {v0, v1, v0, v3}, Lccsansan/f/addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw p1

    :pswitch_0
    sget v0, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v3, v0, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 7
    :cond_2
    move-object v3, p1

    check-cast v3, Lccsansan/f/IncentiveDownloadUtils;

    .line 9
    instance-of v4, p1, Lccsansan/f/getDownloadStatusByUrl;

    if-eqz v4, :cond_3

    .line 16
    const/16 v4, 0x43

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 11
    invoke-virtual {v3}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->useMultiPart()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 16
    :pswitch_1
    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 10
    :cond_4
    check-cast p1, Lccsansan/f/getDownloadStatusByUrl;

    invoke-direct {p0, p1}, Lccsansan/f/addDownloadListener;->getDownloadingList(Lccsansan/f/getDownloadStatusByUrl;)V

    .line 16
    sget p1, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :goto_2
    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 14
    invoke-direct {p0, v3}, Lccsansan/f/addDownloadListener;->addDownloadListener(Lccsansan/f/IncentiveDownloadUtils;)V

    goto :goto_5

    .line 12
    :pswitch_2
    invoke-direct {p0, v3}, Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/f/IncentiveDownloadUtils;)V

    .line 16
    :cond_6
    :goto_4
    nop

    .line 14
    :goto_5
    nop

    .line 16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)Z
    .locals 2

    .line 70
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    check-cast v0, Lccsansan/cv/getDownloadingRecordByUrl;

    .line 70
    invoke-virtual {v0, p1}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 69
    :pswitch_0
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    check-cast v0, Lccsansan/cv/getDownloadingRecordByUrl;

    .line 70
    invoke-virtual {v0, p1}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x26

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_2

    :cond_1
    const/16 v0, 0x9

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return p1

    :goto_3
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/cs/unifiedDownload;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aw/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation

    .line 86
    sget v0, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/f/addDownloadListener;->getDownloadingRecordByUrl()Lccsansan/cv/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object p1

    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    :cond_1
    const/16 v0, 0x56

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 v0, 0x2f

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V
    .locals 2

    .line 87
    sget v0, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/f/addDownloadListener;->getDownloadingRecordByUrl()Lccsansan/cv/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/cv/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V

    sget p1, Lccsansan/f/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
