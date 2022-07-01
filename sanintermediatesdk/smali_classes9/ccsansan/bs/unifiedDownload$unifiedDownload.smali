.class public final Lccsansan/bs/unifiedDownload$unifiedDownload;
.super Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bs/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener<",
        "Lccsansan/bs/unifiedDownload;",
        "Lccsansan/bs/unifiedDownload$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:C

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingRecordByUrl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    const v0, 0x9ed5

    sput-char v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->addDownloadListener:C

    const v0, 0x8f3b

    sput-char v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedRecordByUrl:C

    const v0, 0x89b3

    sput-char v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadStatusByUrl:C

    const/16 v0, 0x3e95

    sput-char v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadStatusByUrl:C

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

    sget-char v11, Lccsansan/bs/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/bs/unifiedDownload$unifiedDownload;->addDownloadListener:C

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
.method protected IncentiveDownloadUtils()Lccsansan/bs/unifiedDownload;
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bs/unifiedDownload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsansan/bs/unifiedDownload;-><init>(Lccsansan/bs/unifiedDownload$unifiedDownload;Lccsansan/bs/unifiedDownload$getDownloadingList;)V

    sget v2, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected addDownloadListener()Lccsansan/bs/unifiedDownload$unifiedDownload;
    .locals 2

    sget v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method protected getDownloadingList()Lccsancom/san/convert/database/ConvertIntent;
    .locals 3

    .line 3
    nop

    .line 1
    new-instance v0, Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {v0}, Lccsancom/san/convert/database/ConvertIntent;-><init>()V

    .line 2
    sget-object v1, Lccsancom/san/convert/database/addDownloadListener;->AZ_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    invoke-virtual {v1}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    const-string v2, "\u544e\u2c27\ud7da\u940e\u41f5\uaf40\u0776\uf934"

    invoke-static {v2, v1}, Lccsansan/bs/unifiedDownload$unifiedDownload;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    sget v1, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic removeDownloadListener()Lccsansan/bs/getDownloadingRecordByUrl;
    .locals 3

    .line 1
    sget v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/bs/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils()Lccsansan/bs/unifiedDownload;

    move-result-object v0

    sget v1, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x36

    goto :goto_0

    :cond_1
    const/16 v1, 0x32

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/bs/unifiedDownload$unifiedDownload;->addDownloadListener()Lccsansan/bs/unifiedDownload$unifiedDownload;

    move-result-object v0

    sget v1, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/unifiedDownload$unifiedDownload;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    goto :goto_0

    :cond_1
    const/16 v1, 0x5e

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method
