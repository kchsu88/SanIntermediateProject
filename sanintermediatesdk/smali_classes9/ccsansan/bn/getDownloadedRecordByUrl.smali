.class public Lccsansan/bn/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:J

.field public static final addDownloadListener:I

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedList:C

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingCount:I

.field private static getDownloadingList:C

.field private static getDownloadingRecordByUrl:C

.field public static final removeDownloadListener:[B

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    invoke-static {}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener()V

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener:[B

    const/16 v0, 0xf4

    sput v0, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener:I

    sget v0, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x66t
        0x59t
        -0x71t
        0x72t
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        0x6t
        -0xbt
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
    .end array-data
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

    sget-wide v5, Lccsansan/bn/getDownloadedRecordByUrl;->IncentiveDownloadUtils:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList:C

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

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 38
    const-string v0, ""

    .line 33
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "pkg_name"

    .line 34
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\u36d8\uf3bf\u1103\u5b0f\u93cd\u5dc5\u8915\u7681\u3423\u573e\ub080\u6263\u4375\u5ff0\ua0d4\u3202\u40c5\uddb1\u0aed\ub5ef\u8853\u465a"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x15

    invoke-static {p1, v2}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string v2, "true"

    .line 35
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\u778d\ucab7\u0e0b\ub17d\uaae1\u69ca\u149c\u272b\u06db\u4183\u487e\u42d0\u93cd\u5dc5\u8915\u7681\u3423\u573e\uf79d\u523f\u4375\u5ff0\ua0d4\u3202\u40c5\uddb1\u0aed\ub5ef\u8853\u465a"

    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {p1, v2}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p0, p1, v1}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    rsub-int v2, v2, 0x4c7f

    int-to-char v2, v2

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    const-string v3, "\u6355\u281e\u5dd5\u1bf7\u27d0\u6fd2\u7646\u210b\u3192\ud76b\u5b14\u5566\uf66f\uf163\u57e0\uda4b\u4a26\u0dff\u942f\u7ad3\uba71\u586e\u4b0b\u9384\u0f81\u98ed\u17fa\uf777\ua735\u885c\u4e5c\u3a87\ubafd\u8346\ud000\u805c\u2b10\u4838\u58f9\udb7b\u7a7a\ubf18"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\u700c\uc296\u7f9d\u4a4c"

    invoke-static {v3, v4, v2, v0, v5}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    const/4 v0, 0x0

    const-string v1, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v2, "\uc0e0\u7d23\ua295\u8d53"

    cmpl-float p1, p1, v0

    int-to-char p1, p1

    const v0, -0x6a82dc40

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v0, v3

    invoke-static {v1, v4, p1, v0, v2}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 14

    .line 24
    const-string v0, "ver_code"

    const-string v1, "apk_id"

    const-string v2, "\uc0e0\u7d23\ua295\u8d53"

    const-string v3, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v4, "\u0000\u0000\u0000\u0000"

    sget v5, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v5, v5, 0xb

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    const v5, -0x6a82dc40

    const/16 v6, 0x30

    :try_start_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "extra_reward_app"

    .line 7
    invoke-virtual {p1, v8}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    return-void

    .line 11
    :cond_2
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9, v8}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "type"

    const-string v10, "0"

    .line 12
    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "incentive_price"

    :try_start_1
    const-string v10, "reward"

    .line 13
    invoke-virtual {v9, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "pkg_name"

    .line 14
    :try_start_2
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v9, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "apk_size"

    :try_start_3
    const-string v8, "pkg_size"

    .line 16
    invoke-virtual {v9, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "portal"

    .line 18
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "from"

    .line 19
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v0, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    const-string v8, ""

    cmpl-float v0, v1, v0

    int-to-char v0, v0

    invoke-static {v8, v8, p0, p0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v3, v4, v0, v1, v2}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 20
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ue7d4\u69ad\u06db\u4183\u7bff\u3ab2\u59ca\u249c\ue7d4\u69ad\u6b87\uf3ec\uedab\uc657\u49d1\ue4d9\uae36\uce7c\u930c\u2d5e\u6c8f\uf0e4\u278b\u13d3"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    rsub-int/lit8 v11, v11, 0x17

    invoke-static {v10, v11}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "\ue7d4\u69ad\u06db\u4183\u7bff\u3ab2\u59ca\u249c\ue7d4\u69ad\u6b87\uf3ec\uedab\uc657\u49d1\ue4d9\uae36\uce7c\u930c\u2d5e"

    invoke-static {v8, v6, p0, p0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x13

    invoke-static {v1, p0}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v7}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 22
    new-instance p0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "REWARD_APP"

    invoke-direct {p0, v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    const v1, -0x359a34d2    # -3764939.5f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v11, "\u3fe3\u5f1d\u0354\ueaee\uf350\u621e\udcdd\u7a9b\ub1ff\ud31d\ud815\u3417\u81c3\u5c46\u862a\ua849\uef65\u615d\u2126\u2bcc\u9049\u9a2f\u6af7\ua7b8\u8490\ufc72\uc0ae\ubcd4\uc789\u335a\ua8ba\ud13a\u882e\u4d93\ud1eb\u4a40\u0631"

    const-string v12, "\u2fae\u65cb\u16ca\u45aa"

    cmp-long v13, v7, v9

    add-int/2addr v13, v1

    invoke-static {v11, v4, v0, v13, v12}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result p1

    sub-int/2addr v6, p1

    int-to-char p1, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    sub-int/2addr v5, v0

    invoke-static {v3, v4, p1, v5, v2}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    const/16 p0, 0x33

    goto :goto_1

    :cond_3
    const/16 p0, 0x44

    :goto_1
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_7
    array-length p0, p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4

    .line 32
    nop

    .line 25
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "pkg"

    .line 26
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "result"

    .line 27
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "errCode"

    .line 28
    :try_start_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "errMsg"

    .line 29
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "\ud85e\u8eff\ude46\u8615\ua0d4\u3202\u8dfd\u9b05\u03e3\ua553\u06db\u4183\u7bff\u3ab2\u59ca\u249c\u0f68\u08a3\u67ef\ud330\u7ee2\u12ef"

    const-string p2, ""

    invoke-static {p2}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x17

    invoke-static {p1, p2}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x14

    shr-int/lit8 p3, p3, 0x6

    add-int/lit16 p3, p3, 0x1ad7

    int-to-char p3, p3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const-string v1, "\uf9ae\uf24e\uc14b\u6e53\u36a6\ud932\u20f4\uf38b\ubd34\u9473\u6413\u7f8b\u101d\u00d9\u17bf\ucdf7\ub01a\u0a53\u38e9\u6f84\u5e74\uc367\ubb82\uce30\u62ca\udc1a\ub50f\u0727\u49f8\uc200"

    const-string v2, "\u0000\u0000\u0000\u0000"

    const-string v3, "\u3605\u8837\ud772\u6b1a"

    invoke-static {v1, v2, p3, v0, v3}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    shr-int/lit8 p1, p1, 0x6

    int-to-char p1, p1

    const p2, -0x6a82dc40

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    add-int/2addr p3, p2

    const-string p2, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v0, "\uc0e0\u7d23\ua295\u8d53"

    invoke-static {p2, v2, p1, p3, v0}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static getDownloadingList(BBS)Ljava/lang/String;
    .locals 8

    sget-object v0, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener:[B

    rsub-int/lit8 p1, p1, 0x47

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    add-int/lit8 p0, p0, 0xe

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    move v7, p2

    move p2, p1

    :goto_1
    move p1, v7

    goto :goto_3

    :pswitch_0
    sget p2, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x15

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    move p2, p1

    move-object v4, v1

    const/4 v5, 0x0

    move p1, p0

    move-object v1, v0

    move v0, p2

    goto :goto_4

    :goto_3
    int-to-byte v5, p1

    aput-byte v5, v1, v4

    if-ne v4, p0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v0, p2

    move v7, p1

    move p1, p0

    move p0, v5

    move v5, v4

    move-object v4, v1

    move-object v1, v0

    move v0, p2

    move p2, v7

    :goto_4
    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p0, v0, 0x1

    add-int/lit8 p2, p2, -0x2

    sget v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    move-object v0, v1

    move-object v1, v4

    move v4, v5

    move v7, p2

    move p2, p0

    move p0, p1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
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

    .line 79
    nop

    .line 78
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onEvent["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  Info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    int-to-char p2, p2

    const v0, -0x6a82dc40

    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    add-int/2addr p1, v0

    const-string v0, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v1, "\u0000\u0000\u0000\u0000"

    const-string v2, "\uc0e0\u7d23\ua295\u8d53"

    invoke-static {v0, v1, p2, p1, v2}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 2105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 2109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 2110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 2111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 2113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 2114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 2116
    const v5, 0xe370

    .line 2117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 2119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadedList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadedRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 2122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadStatusByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 2126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 2117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 2129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 2130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 2131
    goto :goto_0

    .line 2134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static removeDownloadListener()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/bn/getDownloadedRecordByUrl;->IncentiveDownloadUtils:J

    const v0, 0xac81

    sput-char v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList:C

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload:I

    const/16 v0, 0x169f

    sput-char v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadStatusByUrl:C

    const/16 v0, 0x4603

    sput-char v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadedList:C

    const/16 v0, 0x1180

    sput-char v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadedRecordByUrl:C

    const v0, 0xa6e3

    sput-char v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:C

    return-void
.end method

.method public static removeDownloadListener(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    sget v0, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "pkg"

    .line 39
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const-string v4, "portal"

    .line 41
    :try_start_1
    invoke-static {v3}, Lccsansan/bw/getErrorCode;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "source"

    .line 42
    :try_start_2
    invoke-static {v3}, Lccsansan/bw/getErrorCode;->getDownloadedCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_1

    const-string v5, "adId"

    .line 45
    :try_start_3
    iget-object v4, v4, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    nop

    .line 45
    :cond_1
    const-string v4, "filePath"

    .line 48
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v5, :cond_2

    .line 53
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const-string v6, "isDirectory"

    packed-switch v5, :pswitch_data_0

    .line 49
    goto :goto_1

    .line 59
    :pswitch_0
    nop

    .line 63
    :try_start_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    sget v3, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x53

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/2addr v3, v1

    goto/16 :goto_b

    .line 50
    :goto_1
    :try_start_5
    invoke-static {v4}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "result"

    .line 52
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v5, :cond_8

    .line 53
    sget v5, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v5, v5, 0x79

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/2addr v5, v1

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_1

    goto :goto_4

    .line 52
    :pswitch_1
    if-eqz v3, :cond_4

    .line 53
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    packed-switch v5, :pswitch_data_2

    goto :goto_5

    :goto_4
    :try_start_6
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_8

    .line 67
    :goto_5
    sget v4, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v4, v4, 0x37

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 53
    const/16 v4, 0x25

    goto :goto_6

    :cond_5
    const/16 v4, 0x56

    :goto_6
    packed-switch v4, :pswitch_data_3

    :try_start_7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    goto :goto_7

    :pswitch_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    :goto_7
    const/4 v5, 0x3

    :try_start_8
    div-int/2addr v5, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 67
    :goto_8
    sget v5, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v5, v5, 0x45

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/2addr v5, v1

    if-eqz v5, :cond_6

    .line 53
    :cond_6
    :try_start_9
    sget-object v5, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener:[B

    const/16 v7, 0xa

    aget-byte v7, v5, v7

    add-int/2addr v7, v0

    int-to-byte v7, v7

    const/16 v8, 0x36

    int-to-byte v8, v8

    const/16 v9, 0x14

    aget-byte v10, v5, v9

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x16

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    const/4 v10, 0x4

    aget-byte v11, v5, v10

    int-to-byte v11, v11

    int-to-byte v12, v11

    invoke-static {v8, v11, v12}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v3, v6, v2

    const/4 v3, 0x7

    aget-byte v3, v5, v3

    neg-int v3, v3

    int-to-byte v3, v3

    sget v7, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener:I

    and-int/lit8 v7, v7, 0x28

    int-to-byte v7, v7

    aget-byte v8, v5, v9

    int-to-byte v8, v8

    invoke-static {v3, v7, v8}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v7, v5, v10

    int-to-byte v7, v7

    or-int/lit8 v8, v7, 0x43

    int-to-byte v8, v8

    aget-byte v5, v5, v10

    int-to-byte v5, v5

    invoke-static {v7, v8, v5}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v0

    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 67
    goto :goto_a

    .line 53
    :catchall_0
    move-exception p0

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    :goto_9
    throw v1

    :cond_7
    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v1, :cond_7

    goto :goto_9

    .line 67
    :catchall_2
    move-exception p0

    throw p0

    .line 53
    :catchall_3
    move-exception p0

    throw p0

    .line 55
    :cond_8
    :pswitch_3
    :try_start_c
    invoke-static {v4}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 53
    :goto_a
    nop

    .line 55
    if-eqz v1, :cond_9

    const-string v3, "apkVerName"

    .line 58
    :try_start_d
    iget-object v4, v1, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v3, "apkVerCode"

    .line 59
    :try_start_e
    iget v1, v1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    nop

    .line 65
    :cond_9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v3, "\u62a7\uccfc\u53e5\u5756\uadf4\u307e\uc749\ub8f3\u39c7\ub9f5\u487e\u42d0\u93cd\u5dc5\u8915\u7681\u3423\u573e\u0e0b\ub17d\uc977\u2d41\u7655\uaa7f\ub1a9\uce9e"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x19

    invoke-static {v3, v4}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p0}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_c

    :catch_0
    move-exception p0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/2addr v2, v0

    int-to-char v0, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    const-string v3, "\u0c8e\u06b6\u8969\u2c80\ud243\u2893\u52a0\ubafc\u0ab6\ubec2\udaef\ufa2f\uab89\u53ea\u6e85\ue142\u77e0\u5d50\u56af\ua831\u41dd\u2a34\u24fd\u0cf3\uc05c\u0997\u7ffd\uedc0\ufc4e\uc4f9\u82bc\u7c82\uae52\u1f54\u4a5d\ub85d"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\u1bca\u0a8f\udde6\u6a2d"

    invoke-static {v3, v4, v0, v2, v5}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    int-to-char v0, v0

    const v1, -0x6a82dc40

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    const-string v5, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v6, "\uc0e0\u7d23\ua295\u8d53"

    cmpl-float v2, v2, v3

    add-int/2addr v2, v1

    invoke-static {v5, v4, v0, v2, v6}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x56
        :pswitch_2
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 10

    .line 5
    const-string v0, "\u0000\u0000\u0000\u0000"

    sget v1, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1f

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 0
    if-nez p0, :cond_1

    goto :goto_1

    .line 5
    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 1
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "from"

    .line 2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\uc44e\ufde1\u3404\ue9ff\u0894\u091c\ue9c8\u5223\ua70b\u5e80\u2239\uf0a5\ub26e\u456f\u3393\uf20f\uabb7\u94af"

    const v4, 0x92aa

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    add-int/2addr v9, v4

    int-to-char v4, v9

    invoke-static {v7, v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "\uc765\ufe93\uab07\u1592"

    invoke-static {v3, v0, v4, v5, v6}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {p0, v3, v1}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5
    goto :goto_2

    .line 3
    :catch_0
    move-exception p0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v4, 0x0

    const-string v5, "\u9641\uee7a\u3423\u573e\u527b\u9128\u912d\ua2bd\uf0bf\u614d\u66bc\u6972\ue7d4\u69ad\u06db\u4183\u7bff\u3ab2\uc86e\u7ee9\u1a67\u1702\ud391\u4b3f\u1591\ue1a1\ub3a2\ufbd8\u6c8f\uf0e4\u278b\u13d3"

    const-string v6, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v7, ""

    const-string v8, "\uc0e0\u7d23\ua295\u8d53"

    cmpl-float v3, v3, v4

    add-int/2addr v3, v2

    invoke-static {v5, v3}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    const v2, -0x6a82dc41

    invoke-static {v7}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v6, v0, v1, v2, v8}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 11

    .line 77
    const-string v0, "silence_result"

    const-string v1, "adId"

    const-string v2, "\u0000\u0000\u0000\u0000"

    const-string v3, ""

    .line 68
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    .line 69
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "pkg"

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, v1}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "isSapk"

    .line 72
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadedList()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "status"

    .line 74
    invoke-virtual {v7, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\ub0eb\u2128\ufc55\u9699\uf27d\u57f2\u2dab\uf2bb\ua289\u02bc\uecc7\u5a35\ud400\u88ca\u3753\u11f5\u55ea\u0df5\u2d3a\u0a50\u19c8\u4e47\ub9be"

    invoke-static {v3}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, -0x1

    int-to-char p1, p1

    const v0, 0x4659659c

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    const-string v1, "\u9ca2\u5965\ua046\uae50"

    invoke-static {p0, v2, p1, v0, v1}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {v6, p0, v7}, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collectSilenceAzStatus error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v5

    int-to-char p1, p1

    const v0, -0x6a82dc40

    invoke-static {v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v1, "\u7498\u38c4\udcbb\uc0f5\u8567\u9ee2\ucb36\u0120\u571f\ud169\u2cba\u56a4\u3d35\u0086\u765a\u22fc\u874f\ud242\u72d9\u545d\u66ad\ub26e\u85e0\u6bcc\ubdd8"

    const-string v3, "\uc0e0\u7d23\ua295\u8d53"

    cmp-long v10, v6, v8

    sub-int/2addr v0, v10

    invoke-static {v1, v2, p1, v0, v3}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget p0, Lccsansan/bn/getDownloadedRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v4, 0x1

    :cond_1
    packed-switch v4, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p0, 0x0

    :try_start_3
    array-length p0, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
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
