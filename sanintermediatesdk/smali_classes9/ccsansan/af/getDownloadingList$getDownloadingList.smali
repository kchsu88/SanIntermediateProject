.class Lccsansan/af/getDownloadingList$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/af/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/af/getDownloadingList;->unifiedDownload(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedCount:I

.field private static getDownloadedList:C

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingRecordByUrl:C


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/af/unifiedDownload;

.field getDownloadingList:Lccsansan/bw/AdError;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/af/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    const v0, 0x8a9f

    sput-char v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedList:C

    const v0, 0xdfe5

    sput-char v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedRecordByUrl:C

    const/16 v0, 0x5351

    sput-char v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadingRecordByUrl:C

    const v0, 0x9d79

    sput-char v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadStatusByUrl:C

    return-void
.end method

.method constructor <init>(Lccsansan/af/getDownloadingList;Lccsansan/af/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->unifiedDownload:Lccsansan/af/getDownloadingList;

    iput-object p2, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;

    iput-object p3, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lccsansan/bw/AdError;

    invoke-static {p1}, Lccsansan/af/getDownloadingList;->removeDownloadListener(Lccsansan/af/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsansan/bw/AdError;

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    nop

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "url"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadingRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadStatusByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 12
    nop

    .line 6
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "total"

    .line 7
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "completed"

    .line 8
    :try_start_2
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string p3, "pause"

    .line 10
    invoke-virtual {p2, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 11
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_0

    .line 12
    const/16 p3, 0x39

    goto :goto_0

    :cond_0
    const/16 p3, 0x3b

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget p3, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p3, p3, 0x1b

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    :goto_1
    packed-switch p3, :pswitch_data_1

    :try_start_3
    iget-object p3, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iget-object p3, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p1, 0x0

    :try_start_4
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_5
    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_3
    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 18
    const-string v0, "delete"

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 10
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 18
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v3, "action"

    packed-switch p1, :pswitch_data_0

    .line 12
    goto :goto_1

    .line 13
    :pswitch_0
    :try_start_1
    const-string p1, "\u4208\uab42\u5c89\uca1b\ua3ab\u9221\u5e1e\u021c"

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v4

    cmpl-float v0, v4, v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    .line 13
    :goto_1
    :try_start_2
    invoke-virtual {v1, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    nop

    .line 18
    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x56

    goto :goto_3

    :cond_2
    const/16 p1, 0x5a

    :goto_3
    packed-switch p1, :pswitch_data_1

    .line 17
    :pswitch_1
    :try_start_3
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;

    if-eqz p1, :cond_3

    .line 18
    goto :goto_4

    :cond_3
    const/4 p2, 0x1

    :goto_4
    packed-switch p2, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    iget-object p2, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string v0, "failed"

    .line 3
    invoke-virtual {p2, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 5
    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    :pswitch_0
    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 5
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string v0, "complete"

    .line 3
    invoke-virtual {p2, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 5
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :try_start_1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    :try_start_2
    array-length p1, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_3
    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_3
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 8
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "total"

    .line 2
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "completed"

    .line 3
    :try_start_2
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string p3, "progress"

    .line 5
    invoke-virtual {p2, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 6
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsansan/bw/AdError;

    iget-object p3, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_0

    .line 8
    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p3, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p3, p3, 0x39

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    :cond_1
    :try_start_3
    iget-object p3, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    const/16 p2, 0x59

    add-int/2addr p1, p2

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x9

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string v0, "start"

    .line 3
    invoke-virtual {p2, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->addDownloadListener:Lccsansan/af/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 5
    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p1, Lccsansan/af/getDownloadingList$getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x52

    goto :goto_1

    :cond_2
    const/4 p1, 0x6

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method
