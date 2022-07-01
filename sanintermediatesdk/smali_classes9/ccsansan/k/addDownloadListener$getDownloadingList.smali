.class final Lccsansan/k/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/k/addDownloadListener$unifiedDownload;Z)Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static deleteDownItem:C

.field private static getDownloadedList:C

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:C

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

.field final synthetic unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    const v0, 0xa0ff

    sput-char v0, Lccsansan/k/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:C

    const/16 v0, 0x586e

    sput-char v0, Lccsansan/k/addDownloadListener$getDownloadingList;->deleteDownItem:C

    const/16 v0, 0x5871

    sput-char v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedList:C

    const/16 v0, 0x3eb6

    sput-char v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingList:C

    return-void
.end method

.method constructor <init>(Lccsansan/k/addDownloadListener$unifiedDownload;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    iput-boolean p2, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->unifiedDownload:Z

    iput-object p3, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsansan/k/addDownloadListener$getDownloadingList;->deleteDownItem:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedList:C

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

    sget-char v11, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/k/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:C

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
.method public onDLServiceConnected(Lccsancom/san/xz/api/IDownloadService;)V
    .locals 3

    .line 2
    nop

    .line 1
    invoke-static {}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/xz/api/IDownloadService;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_1
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/api/IDownloadService;)Lccsancom/san/xz/api/IDownloadService;

    :pswitch_0
    sget p1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/2addr p1, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onDLServiceDisconnected()V
    .locals 2

    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x5b

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadResult(Lccsancom/san/xz/base/XzRecord;ZLjava/lang/String;)V
    .locals 12

    .line 15
    nop

    .line 0
    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrlKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const-string v2, ""

    invoke-static {v2, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x12

    const-string v2, "\u7156\u29fb\u5afe\uf6bf\uff29\u3de7\u0edc\ua62d\u8e16\u5f99\udce5\u8607\u674f\u064e\u6969\u9f54\u8ef7\u4b91\ube19\ucd69"

    invoke-static {v2, v1}, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    goto/16 :goto_8

    .line 4
    :cond_2
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-boolean v0, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_6

    .line 13
    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :catchall_1
    move-exception p1

    throw p1

    .line 6
    :cond_4
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 7
    :pswitch_0
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/xz/api/IDownloadResultListener;)V

    :cond_6
    :goto_4
    :pswitch_1
    if-eqz p2, :cond_8

    .line 13
    sget p2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x13

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    .line 10
    :cond_7
    iget-object v4, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v8

    invoke-interface/range {v4 .. v9}, Lccsansan/k/addDownloadListener$unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_7

    .line 12
    :cond_8
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object p2

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/xz/base/XzRecord$Status;

    const/16 v11, 0x15

    if-ne p2, v0, :cond_a

    .line 15
    sget p2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/2addr p2, v11

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    .line 13
    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    :goto_5
    iget-object p2, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v6}, Lccsansan/k/addDownloadListener$unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_3

    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    .line 15
    :catchall_2
    move-exception p1

    throw p1

    :cond_a
    iget-object v4, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v8

    move-object v10, p3

    invoke-interface/range {v4 .. v10}, Lccsansan/k/addDownloadListener$unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    sget p1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_b

    const/16 v11, 0x27

    :cond_b
    packed-switch v11, :pswitch_data_4

    :goto_6
    goto :goto_7

    .line 15
    :pswitch_2
    nop

    :goto_7
    :pswitch_3
    return-void

    :cond_c
    :goto_8
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .packed-switch 0x15
        :pswitch_2
    .end packed-switch
.end method

.method public onDownloadedItemDelete(Lccsancom/san/xz/base/XzRecord;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lccsansan/k/addDownloadListener$unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onPause(Lccsancom/san/xz/base/XzRecord;)V
    .locals 5

    .line 5
    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-eqz p1, :cond_3

    goto :goto_4

    .line 5
    :goto_1
    const/16 v0, 0x59

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/16 v0, 0x2b

    goto :goto_2

    :cond_1
    const/16 v0, 0x55

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto :goto_5

    .line 1
    :goto_4
    :pswitch_1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrlKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x13

    const-string v2, "\u7156\u29fb\u5afe\uf6bf\uff29\u3de7\u0edc\ua62d\u8e16\u5f99\udce5\u8607\u674f\u064e\u6969\u9f54\u8ef7\u4b91\ube19\ucd69"

    invoke-static {v2, v1}, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v3

    invoke-interface {v1, v2, v0, v3, v4}, Lccsansan/k/addDownloadListener$unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_3
    :goto_5
    sget p1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_1
    .end packed-switch
.end method

.method public onProgress(Lccsancom/san/xz/base/XzRecord;JJ)V
    .locals 7

    .line 4
    sget p2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 0
    :cond_0
    if-eqz p1, :cond_1

    .line 4
    const/16 p2, 0x36

    goto :goto_0

    :cond_1
    const/16 p2, 0x41

    :goto_0
    packed-switch p2, :pswitch_data_0

    add-int/lit8 p3, p3, 0x79

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_2

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_4

    .line 1
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrlKey()Ljava/lang/String;

    move-result-object p2

    const p3, 0x1000013

    const/4 p4, 0x0

    invoke-static {p4, p4, p4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result p5

    add-int/2addr p5, p3

    const-string p3, "\u7156\u29fb\u5afe\uf6bf\uff29\u3de7\u0edc\ua62d\u8e16\u5f99\udce5\u8607\u674f\u064e\u6969\u9f54\u8ef7\u4b91\ube19\ucd69"

    invoke-static {p3, p5}, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4
    const/4 p4, 0x1

    goto :goto_3

    :cond_3
    nop

    :goto_3
    packed-switch p4, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget p2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p2, p2, 0x3

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    .line 1
    :cond_4
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 3
    :cond_5
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lccsansan/k/addDownloadListener$unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onStart(Lccsancom/san/xz/base/XzRecord;)V
    .locals 8

    .line 4
    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-eqz p1, :cond_1

    .line 4
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x3b

    add-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_5

    .line 1
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrlKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x13

    const-string v3, "\u7156\u29fb\u5afe\uf6bf\uff29\u3de7\u0edc\ua62d\u8e16\u5f99\udce5\u8607\u674f\u064e\u6969\u9f54\u8ef7\u4b91\ube19\ucd69"

    invoke-static {v3, v2}, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    goto :goto_3

    :cond_3
    const/16 v0, 0x33

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_4
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_4
    goto :goto_1

    .line 3
    :cond_5
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v1, p0, Lccsansan/k/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lccsansan/k/addDownloadListener$unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdate(Lccsancom/san/xz/base/XzRecord;)V
    .locals 1

    sget p1, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x2f

    goto :goto_0

    :cond_0
    const/16 p1, 0x2b

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method
