.class public Lccsancom/san/ads/AdError;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/AdError$ErrorCode;
    }
.end annotation


# static fields
.field public static final AD_EXPIRED:Lccsancom/san/ads/AdError;

.field public static final CANCEL_ERROR:Lccsancom/san/ads/AdError;

.field public static final CAPPING_PLACEMENT_ERROR:Lccsancom/san/ads/AdError;

.field public static final CAPPING_SPOT_ERROR:Lccsancom/san/ads/AdError;

.field public static final DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

.field public static final HB_FAILED_ERROR:Lccsancom/san/ads/AdError;

.field public static final INTERNAL_ERROR:Lccsancom/san/ads/AdError;

.field private static IncentiveDownloadUtils:C

.field public static final LOAD_TOO_FREQUENTLY:Lccsancom/san/ads/AdError;

.field public static final NETWORK_ERROR:Lccsancom/san/ads/AdError;

.field public static final NO_FILL:Lccsancom/san/ads/AdError;

.field public static final NO_VAST_CONTENT_ERROR:Lccsancom/san/ads/AdError;

.field public static final PACING_PLACEMENT_ERROR:Lccsancom/san/ads/AdError;

.field public static final PACING_SPOT_ERROR:Lccsancom/san/ads/AdError;

.field public static final PARAMETER_ERROR:Lccsancom/san/ads/AdError;

.field public static final PRELOAD_JS_ERROR:Lccsancom/san/ads/AdError;

.field public static final SERVER_ERROR:Lccsancom/san/ads/AdError;

.field public static final TIMEOUT_ERROR:Lccsancom/san/ads/AdError;

.field public static final UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

.field public static final UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

.field public static final XZ_VAST_ERROR:Lccsancom/san/ads/AdError;

.field public static final XZ_VIDEO_ERROR:Lccsancom/san/ads/AdError;

.field private static addDownloadListener:C

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:C

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:C


# instance fields
.field private final getDownloadingList:Ljava/lang/String;

.field private final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/AdError;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/ads/AdError;->deleteDownItem:I

    invoke-static {}, Lccsancom/san/ads/AdError;->addDownloadListener()V

    .line 1
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3e8

    const-string v4, "Network Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->NETWORK_ERROR:Lccsancom/san/ads/AdError;

    .line 2
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3e9

    const-string v4, "No Fill"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    .line 3
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3ea

    const-string v4, "Ad is loading"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->LOAD_TOO_FREQUENTLY:Lccsancom/san/ads/AdError;

    .line 4
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3eb

    const-string v4, "Display Condition Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    .line 5
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3ec

    const-string v4, "Preload JS Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->PRELOAD_JS_ERROR:Lccsancom/san/ads/AdError;

    .line 6
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3ed

    const-string v4, "Parameter Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->PARAMETER_ERROR:Lccsancom/san/ads/AdError;

    .line 8
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x7d0

    const-string v4, "Server Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->SERVER_ERROR:Lccsancom/san/ads/AdError;

    .line 9
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x7d1

    const-string v4, "Internal Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->INTERNAL_ERROR:Lccsancom/san/ads/AdError;

    .line 10
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x7d2

    const-string v4, "Time out"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->TIMEOUT_ERROR:Lccsancom/san/ads/AdError;

    .line 11
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbb8

    const-string v4, "Unknown error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

    .line 13
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbb9

    const-string v4, "No Vast Content"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->NO_VAST_CONTENT_ERROR:Lccsancom/san/ads/AdError;

    .line 14
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbba

    invoke-static {v0, v0}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x13

    const-string v5, "\u12f5\ud076\ud833\ue9bf\ucf2a\u1463\u59fc\u2f07\ubfaa\uab4e\ud680\u2608\u1e96\uff37\u2fe1\u5852\u00ae\u79ec\ueda7\u737b"

    invoke-static {v5, v4}, Lccsancom/san/ads/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->XZ_VAST_ERROR:Lccsancom/san/ads/AdError;

    .line 15
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbbb

    const-string v4, "Unsupported create type"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    .line 16
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbbc

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4, v0, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x13

    const-string v5, "\u12f5\ud076\ud833\ue9bf\ucf2a\u1463\u59fc\u2f07\ubfaa\uab4e\u4212\u4663\u1a0c\uc1e9\u5a6a\ubbe3\u1d16\ufc69\u4bfb\u6d01"

    invoke-static {v5, v4}, Lccsancom/san/ads/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->XZ_VIDEO_ERROR:Lccsancom/san/ads/AdError;

    .line 17
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbbe

    const-string v4, "HB failed"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->HB_FAILED_ERROR:Lccsancom/san/ads/AdError;

    .line 18
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xbbd

    const-string v4, "This Ad is Expired"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->AD_EXPIRED:Lccsancom/san/ads/AdError;

    .line 20
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xfa2

    const-string v4, "Cancel Error"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->CANCEL_ERROR:Lccsancom/san/ads/AdError;

    .line 22
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xfaa

    const-string v4, "The placement load too frequent."

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->PACING_PLACEMENT_ERROR:Lccsancom/san/ads/AdError;

    .line 23
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xfab

    const-string v4, "This spot id load too frequent."

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->PACING_SPOT_ERROR:Lccsancom/san/ads/AdError;

    .line 24
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xfb4

    const-string v4, "The placement load too many times."

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->CAPPING_PLACEMENT_ERROR:Lccsancom/san/ads/AdError;

    .line 25
    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0xfb5

    const-string v4, "The spot id load too many times."

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/AdError;->CAPPING_SPOT_ERROR:Lccsancom/san/ads/AdError;

    sget v2, Lccsancom/san/ads/AdError;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/ads/AdError;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown error"

    .line 6
    :cond_0
    iput p1, p0, Lccsancom/san/ads/AdError;->unifiedDownload:I

    .line 7
    iput-object p2, p0, Lccsancom/san/ads/AdError;->getDownloadingList:Ljava/lang/String;

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsancom/san/ads/AdError;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/ads/AdError;->getDownloadStatusByUrl:C

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

    sget-char v11, Lccsancom/san/ads/AdError;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/ads/AdError;->IncentiveDownloadUtils:C

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

.method static addDownloadListener()V
    .locals 1

    const v0, 0xd929

    sput-char v0, Lccsancom/san/ads/AdError;->IncentiveDownloadUtils:C

    const v0, 0xc6e4

    sput-char v0, Lccsancom/san/ads/AdError;->removeDownloadListener:C

    const v0, 0xe4d9

    sput-char v0, Lccsancom/san/ads/AdError;->getDownloadStatusByUrl:C

    const/16 v0, 0x362d

    sput-char v0, Lccsancom/san/ads/AdError;->addDownloadListener:C

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 2

    .line 1
    sget v0, Lccsancom/san/ads/AdError;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/AdError;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/ads/AdError;->unifiedDownload:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsancom/san/ads/AdError;->unifiedDownload:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/AdError;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/AdError;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/ads/AdError;->getDownloadingList:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/ads/AdError;->getDownloadingList:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/AdError;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorMessage(Ljava/lang/String;)Lccsancom/san/ads/AdError;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1
    .end local p1    # "msg":Ljava/lang/String;
    new-instance v0, Lccsancom/san/ads/AdError;

    iget v1, p0, Lccsancom/san/ads/AdError;->unifiedDownload:I

    invoke-direct {v0, v1, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    sget p1, Lccsancom/san/ads/AdError;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/ads/AdError;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/16 p1, 0x3c

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 p1, 0x35

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/san/ads/AdError;->unifiedDownload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/AdError;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/ads/AdError;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/AdError;->getDownloadingRecordByUrl:I

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
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
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
