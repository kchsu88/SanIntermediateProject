.class public Lccsansan/ay/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;,
        Lccsansan/ay/getDownloadingList$removeDownloadListener;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static addDownloadListener:Ljava/lang/Boolean; = null

.field private static deleteDownItem:I = 0x0

.field private static getDownloadStatusByUrl:J = 0x0L

.field private static getDownloadedList:C = '\u0000'

.field private static getDownloadedRecordByUrl:[C = null

.field private static getDownloadingList:[C = null

.field private static getDownloadingRecordByUrl:I = 0x0

.field private static removeDownloadListener:Z = true

.field private static unifiedDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    invoke-static {}, Lccsansan/ay/getDownloadingList;->unifiedDownload()V

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lccsansan/ay/getDownloadingList;->unifiedDownload:Ljava/util/Map;

    .line 3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lccsansan/ay/getDownloadingList;->addDownloadListener:Ljava/lang/Boolean;

    .line 4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    sget v2, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)J
    .locals 14

    .line 25
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "\u0019\u001e\u0003\u0004!\"\u0001\u0000\u0007\u0008\u0003\u0000\u0006\u0002"

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    add-int/lit8 v8, v8, 0xd

    const v3, -0xffffed

    invoke-static {v7, v7, v7}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-static {v2, v8, v3}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3a98

    const/16 v13, 0x3a98

    .line 19
    move-object v9, p0

    invoke-static/range {v8 .. v13}, Lccsansan/bw/getAdFormat;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;II)Lccsansan/x/addDownloadListener;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lccsansan/x/addDownloadListener;->getDownloadingList()Ljava/util/Map;

    move-result-object p0

    const-string v2, "content-length"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 25
    const/16 v2, 0x4c

    goto :goto_0

    :cond_1
    const/16 v2, 0x54

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 21
    :pswitch_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :goto_1
    nop

    .line 25
    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    const/4 v7, 0x1

    :cond_3
    packed-switch v7, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-wide v0

    :goto_2
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    throw p0

    .line 23
    :catch_0
    move-exception p0

    .line 25
    const-string v2, "Ad.Reserve.Helper"

    const-string v3, "get content length failed!"

    invoke-static {v2, v3, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils()V
    .locals 6

    .line 387
    nop

    .line 0
    const/16 v0, 0x30

    invoke-static {v0}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    rsub-int/lit8 v0, v0, 0x5c

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ReserveCenter"

    const-string v4, "#\n\u0002\u000b\u0004\u000c\t\u000b\t\u000f\u0004\r\u0002\u001f\r\u0000\u0008\u0017\u0016\t\u0007\r\u0003\u0018\u0002\t\t\u0005\u0005\u0000\u0007\u0008\u0003\u0000\u0006\u0002\u0007\u0003\r\u0004\u001e\u000e\u0005\u0007"

    const-string v5, "RESERVE_DOWNLOAD_START"

    cmpl-float v1, v1, v2

    rsub-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-static {v4, v0, v1}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0, v5}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->sendBroadcast(Lccsanandroid/content/Intent;)V

    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 18
    nop

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 1
    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    sget-object v0, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 8
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 18
    sget v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    goto :goto_2

    .line 18
    :catchall_0
    move-exception p0

    throw p0

    .line 8
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 18
    :goto_2
    :pswitch_1
    return-void

    .line 12
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    sget v3, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 12
    :goto_4
    :pswitch_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    .line 13
    iget-object v2, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    iget-object v2, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v3, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const/16 v4, 0x1b

    if-eq v2, v3, :cond_8

    .line 8
    const/16 v2, 0x25

    goto :goto_5

    :cond_8
    const/16 v2, 0x1b

    :goto_5
    packed-switch v2, :pswitch_data_3

    goto :goto_4

    :pswitch_3
    sget v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_9

    .line 17
    :cond_9
    iput-object v3, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 18
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_4

    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x25
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(J)Z
    .locals 2

    .line 2
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/ay/getDownloadingList;->addDownloadListener(J)Z

    move-result p0

    sget p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x21

    goto :goto_0

    :cond_1
    const/16 p1, 0x14

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/ay/getDownloadingList;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/ay/getDownloadingList;->getDownloadStatusByUrl:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 22

    move-object/from16 v0, p0

    .line 269
    nop

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReserveHelper.checkAndUpdateReserveInfo, sourceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad.Reserve.Helper"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lccsansan/ay/getDownloadingList;->addDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return-object v3

    .line 5
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lccsansan/ay/getDownloadingList;->addDownloadListener:Ljava/lang/Boolean;

    .line 6
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 25
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 10
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v7, ""

    move-object v14, v7

    move-object v15, v14

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x0

    goto :goto_2

    .line 269
    :pswitch_0
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    :try_start_0
    array-length v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 6
    :cond_2
    nop

    .line 269
    :goto_1
    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_3
    return-object v3

    .line 16
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const-wide/16 v16, -0x1

    const/16 v18, 0x11

    if-ge v10, v8, :cond_23

    .line 269
    sget v8, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v8, v8, 0x63

    rem-int/lit16 v3, v8, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4

    .line 17
    :cond_4
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/aj/getDownloadingList;

    .line 18
    sget-object v8, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    iget-object v9, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    sget-boolean v8, Lccsansan/ay/getDownloadingList;->removeDownloadListener:Z

    if-eqz v8, :cond_6

    .line 21
    sget-object v8, Lccsansan/ay/getDownloadingList;->unifiedDownload:Ljava/util/Map;

    iget-object v9, v3, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v5}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->toInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget v4, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x79

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 269
    :cond_5
    nop

    .line 24
    :cond_6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v4, v5}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    const-wide/16 v8, 0x0

    packed-switch v4, :pswitch_data_1

    .line 33
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v4, v5, :cond_b

    goto :goto_8

    .line 34
    :pswitch_1
    sget v4, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0xd

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    .line 25
    const/16 v4, 0x3f

    goto :goto_4

    :cond_8
    const/16 v4, 0x3e

    :goto_4
    packed-switch v4, :pswitch_data_2

    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_6

    :pswitch_2
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-eq v4, v5, :cond_21

    :goto_5
    goto :goto_7

    :goto_6
    const/16 v16, 0x55

    const/16 v17, 0x0

    :try_start_2
    div-int/lit8 v16, v16, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v4, v5, :cond_21

    goto :goto_5

    .line 26
    :goto_7
    iput-object v5, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 27
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    invoke-static {v8, v9}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    const v5, 0x846e

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    add-int v5, v16, v5

    int-to-char v5, v5

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v17

    cmp-long v16, v17, v8

    rsub-int/lit8 v8, v16, 0x9

    invoke-static {v4, v5, v8}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v4, v3}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    goto/16 :goto_15

    .line 34
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 33
    :goto_8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v4, v5}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 25
    const/4 v4, 0x0

    goto :goto_9

    :cond_9
    const/4 v4, 0x1

    :goto_9
    packed-switch v4, :pswitch_data_3

    goto :goto_b

    .line 269
    :pswitch_3
    sget v4, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x7d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    const/16 v4, 0x3b

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v8, v5}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    shr-int/2addr v4, v9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    const/16 v19, 0x4

    shl-int/lit8 v9, v9, 0x4

    int-to-char v9, v9

    const/16 v16, 0x2e

    invoke-static {v5, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    ushr-int v5, v16, v17

    invoke-static {v4, v9, v5}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_a
    const/4 v8, 0x0

    .line 33
    invoke-static {v8, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {v8, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    rsub-int/lit8 v8, v9, 0x9

    invoke-static {v4, v5, v8}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 34
    :goto_a
    invoke-virtual {v3, v4}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 37
    :cond_b
    :goto_b
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_c

    .line 25
    const/16 v4, 0x21

    goto :goto_c

    :cond_c
    const/16 v4, 0x4e

    :goto_c
    packed-switch v4, :pswitch_data_4

    .line 38
    iget-wide v4, v3, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v19, v4, v20

    if-gez v19, :cond_21

    .line 39
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v4, v5, :cond_e

    .line 269
    sget v4, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    .line 40
    :cond_d
    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 41
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    .line 43
    :cond_e
    sget-object v4, Lccsansan/as/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {v4}, Lccsansan/aj/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 25
    const/4 v5, 0x1

    goto :goto_d

    :cond_f
    const/4 v5, 0x0

    :goto_d
    packed-switch v5, :pswitch_data_5

    .line 45
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v3, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 46
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    .line 47
    const-string v5, "retry"

    invoke-static {v3, v4, v5}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :pswitch_4
    sget-object v4, Lccsansan/ay/getDownloadingList$getDownloadingList;->getDownloadingList:[I

    iget-object v5, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6

    :pswitch_5
    goto/16 :goto_15

    .line 113
    :pswitch_6
    invoke-virtual {v3}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 25
    sget v4, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x11

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_11

    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v4}, Lccsansan/bi/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    :try_start_3
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_10

    const/16 v4, 0x15

    goto :goto_e

    :cond_10
    const/16 v4, 0x1d

    :goto_e
    packed-switch v4, :pswitch_data_7

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v1, v0

    throw v1

    .line 113
    :cond_11
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v4}, Lccsansan/bi/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 114
    :goto_f
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v4}, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 118
    :cond_12
    :pswitch_7
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v4}, Lccsansan/aa/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    if-eqz v4, :cond_15

    .line 269
    sget v5, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v5, v5, 0x19

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_13

    .line 118
    :cond_13
    const/4 v5, 0x1

    if-eq v4, v5, :cond_14

    goto :goto_10

    .line 120
    :cond_14
    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_10

    .line 123
    :cond_15
    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_10

    .line 126
    :cond_16
    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 129
    :goto_10
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto/16 :goto_15

    .line 130
    :pswitch_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    iget-wide v8, v3, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long v18, v4, v8

    if-ltz v18, :cond_1d

    sub-long/2addr v4, v8

    .line 132
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v8

    cmp-long v18, v4, v8

    if-lez v18, :cond_17

    .line 133
    const-string v4, "outTime"

    invoke-virtual {v3, v4}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v4

    const-wide/32 v8, 0x36ee80

    div-long/2addr v4, v8

    invoke-static {v3, v4, v5}, Lccsansan/aj/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;J)V

    goto/16 :goto_15

    .line 136
    :cond_17
    invoke-virtual {v3}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 137
    iput-object v0, v3, Lccsansan/aj/getDownloadingList;->ActionTypeDownload:Ljava/lang/String;

    .line 138
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    new-instance v5, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    invoke-direct {v5, v3}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;-><init>(Lccsansan/aj/getDownloadingList;)V

    const/4 v8, 0x1

    invoke-static {v4, v3, v8, v5}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;ZLccsansan/ay/getDownloadingList$removeDownloadListener;)V

    goto/16 :goto_15

    .line 140
    :cond_18
    invoke-virtual {v3}, Lccsansan/aj/getDownloadingList;->removeDownloadListener()J

    move-result-wide v4

    cmp-long v8, v4, v11

    if-gez v8, :cond_1a

    const-wide/16 v8, 0x0

    cmp-long v18, v4, v8

    if-lez v18, :cond_19

    .line 25
    const/16 v8, 0x4f

    goto :goto_11

    :cond_19
    const/16 v8, 0x58

    :goto_11
    packed-switch v8, :pswitch_data_8

    .line 143
    iget-object v8, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    .line 144
    iget-object v9, v3, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    move-wide v11, v4

    move-object v14, v8

    move-object v15, v9

    goto :goto_12

    :cond_1a
    :pswitch_9
    const-wide/16 v8, 0x0

    cmp-long v18, v4, v8

    if-gez v18, :cond_1c

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v8, v11, v4

    if-nez v8, :cond_1b

    .line 148
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    .line 149
    iget-object v5, v3, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 269
    move-object v14, v4

    move-object v15, v5

    move-wide/from16 v11, v16

    const/4 v13, 0x1

    goto :goto_12

    .line 144
    :cond_1b
    const/4 v13, 0x1

    .line 149
    :cond_1c
    nop

    .line 153
    :goto_12
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v3, v8, v5}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;ZLccsansan/ay/getDownloadingList$removeDownloadListener;)V

    .line 154
    iget-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-eq v4, v5, :cond_22

    .line 155
    iput-object v5, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 156
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_16

    .line 161
    :cond_1d
    invoke-virtual {v3}, Lccsansan/aj/getDownloadingList;->removeDownloadListener()J

    move-result-wide v4

    cmp-long v8, v4, v11

    if-gez v8, :cond_21

    .line 269
    sget v8, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v8, v8, 0x29

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1e

    .line 164
    :cond_1e
    iget-object v14, v3, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    .line 165
    iget-object v15, v3, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    move-wide v11, v4

    goto :goto_16

    .line 166
    :pswitch_a
    iget-wide v4, v3, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    invoke-static {v4, v5}, Lccsansan/ay/getDownloadingList;->addDownloadListener(J)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 167
    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, v3, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long v16, v4, v8

    if-lez v16, :cond_1f

    .line 25
    const/4 v4, 0x1

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    :goto_13
    packed-switch v4, :pswitch_data_9

    goto :goto_14

    .line 169
    :pswitch_b
    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v4, v3, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 171
    :goto_14
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_16

    .line 174
    :cond_20
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Z)V

    :cond_21
    :goto_15
    :pswitch_c
    nop

    :cond_22
    :goto_16
    const/4 v3, 0x1

    add-int/2addr v10, v3

    .line 269
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 16
    :cond_23
    const/16 v19, 0x4

    .line 242
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    sget-boolean v0, Lccsansan/ay/getDownloadingList;->removeDownloadListener:Z

    if-eqz v0, :cond_24

    .line 243
    const/4 v0, 0x0

    sput-boolean v0, Lccsansan/ay/getDownloadingList;->removeDownloadListener:Z

    .line 244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lccsansan/ay/getDownloadingList;->unifiedDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Lccsansan/aj/addDownloadListener;->IncentiveDownloadUtils(ILjava/util/Map;)V

    .line 247
    :cond_24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lccsansan/ay/getDownloadingList;->addDownloadListener:Ljava/lang/Boolean;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, v11, v0

    if-eqz v3, :cond_25

    .line 25
    const/4 v9, 0x4

    goto :goto_17

    :cond_25
    const/16 v9, 0x11

    :goto_17
    const-string v0, "app_name"

    const-string v1, "pkg_name"

    const-string v3, "json = "

    const-string v4, "close_time"

    packed-switch v9, :pswitch_data_a

    goto :goto_18

    .line 247
    :pswitch_d
    cmp-long v5, v11, v16

    if-eqz v5, :cond_26

    const-wide/16 v7, 0x3e8

    .line 250
    :try_start_4
    div-long/2addr v11, v7

    invoke-virtual {v6, v4, v11, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 251
    invoke-virtual {v6, v1, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 252
    invoke-virtual {v6, v0, v15}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1

    :cond_26
    :goto_18
    if-eqz v13, :cond_28

    .line 259
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_27

    :try_start_5
    const-string v5, "has_waiting_task"

    .line 261
    invoke-virtual {v6, v5, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 262
    const/4 v5, -0x1

    invoke-virtual {v6, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 263
    invoke-virtual {v6, v1, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 264
    invoke-virtual {v6, v0, v15}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_19

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return-object v1

    .line 269
    :cond_27
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_28
    const/4 v1, 0x0

    return-object v1

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
    .packed-switch 0x3e
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4e
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1d
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x58
        :pswitch_9
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_d
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 18
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    .line 18
    nop

    :cond_2
    :pswitch_0
    return-void

    .line 4
    :cond_3
    sget-object v0, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_5

    .line 1
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    sget v2, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 8
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 1
    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    .line 18
    goto :goto_6

    .line 12
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    :pswitch_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 18
    return-void

    .line 12
    :pswitch_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/aj/getDownloadingList;

    .line 13
    iget-object v3, v2, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 18
    sget v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 16
    :cond_9
    iget-object v3, v2, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOAD_PAUSE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-eq v3, v4, :cond_a

    .line 1
    const/16 v3, 0x63

    goto :goto_5

    :cond_a
    const/16 v3, 0x54

    :goto_5
    packed-switch v3, :pswitch_data_3

    .line 17
    iput-object v4, v2, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 18
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_3

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/aj/getDownloadingList;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsansan/aj/getDownloadingList;)V

    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(J)Z
    .locals 3

    .line 384
    nop

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReserveHelper.hasEnoughSize. fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad.Reserve.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    const/16 v1, 0x19

    if-nez v0, :cond_0

    .line 384
    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x55

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1}, Lccsansan/ad/unifiedDownload;->addDownloadListener(J)Z

    move-result p0

    return p0

    :cond_1
    const/16 v1, 0x17

    :goto_1
    packed-switch v1, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_2

    .line 381
    :pswitch_1
    const/4 p0, 0x1

    .line 384
    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z
    .locals 9

    .line 153
    nop

    .line 94
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    const-string v1, "book"

    const-string v2, "minisite"

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 96
    invoke-static {p1}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 97
    new-instance v0, Lccsansan/aj/getDownloadingList;

    invoke-direct {v0, p1, p3, p2}, Lccsansan/aj/getDownloadingList;-><init>(Lccsanorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 98
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/as/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Z

    move-result v4

    if-nez p2, :cond_0

    .line 153
    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a

    :goto_0
    const-string p2, "insert"

    packed-switch p1, :pswitch_data_0

    .line 100
    iget-object p1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object p3, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne p1, p3, :cond_1

    goto :goto_1

    .line 107
    :pswitch_0
    nop

    .line 109
    invoke-static {v0, v2, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 101
    :goto_1
    iget-object p1, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    const/16 p0, 0x30

    invoke-static {v3, p0, v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    rsub-int/lit8 p1, p1, -0x1

    const p3, 0x846d

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr p3, v1

    int-to-char p3, p3

    invoke-static {v3, p0, v5, v5}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x8

    invoke-static {p1, p3, p0}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {v0, p0, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_1
    invoke-static {}, Lccsansan/ay/unifiedDownload;->addDownloadListener()Lccsansan/ay/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lccsansan/ay/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V

    .line 105
    invoke-static {v0, v1, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    nop

    .line 107
    invoke-static {v0, v4, v5}, Lccsansan/aj/addDownloadListener;->addDownloadListener(Lccsansan/aj/getDownloadingList;ZZ)V

    .line 109
    :goto_3
    goto/16 :goto_11

    :cond_2
    nop

    .line 113
    iget-object v6, v0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const v7, 0x846e

    if-nez v6, :cond_9

    .line 153
    sget v6, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v6, v6, 0x27

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    const/16 v6, 0x13

    goto :goto_4

    :cond_3
    const/16 v6, 0x43

    :goto_4
    packed-switch v6, :pswitch_data_1

    goto :goto_6

    .line 113
    :pswitch_1
    if-nez p2, :cond_4

    .line 153
    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    packed-switch v6, :pswitch_data_2

    :pswitch_2
    goto :goto_8

    :goto_6
    const/4 v6, 0x0

    :try_start_0
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_5

    const/4 v6, 0x1

    goto :goto_7

    :cond_5
    const/4 v6, 0x0

    :goto_7
    packed-switch v6, :pswitch_data_3

    goto :goto_b

    .line 114
    :goto_8
    iget-object v2, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v6, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->MINI_SITE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-eq v2, v6, :cond_6

    const/4 v2, 0x1

    goto :goto_9

    :cond_6
    const/4 v2, 0x0

    .line 115
    :goto_9
    invoke-static {p1}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 116
    new-instance v6, Lccsansan/aj/getDownloadingList;

    invoke-direct {v6, p1, p3, p2}, Lccsansan/aj/getDownloadingList;-><init>(Lccsanorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 117
    iget-object p1, v0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    iput-object p1, v6, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    .line 119
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, v6}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V

    .line 120
    iget-object p1, v6, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object p2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string p3, "update"

    if-ne p1, p2, :cond_8

    .line 153
    sget p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    .line 121
    :cond_7
    iget-object p1, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    invoke-static {v3, v5, v5}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr p1, v7

    int-to-char p1, p1

    invoke-static {v5, v5}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x9

    invoke-static {p0, p1, p2}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static {v6, p0, p3}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 124
    :cond_8
    invoke-static {}, Lccsansan/ay/unifiedDownload;->addDownloadListener()Lccsansan/ay/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, p0, v6}, Lccsansan/ay/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V

    .line 125
    invoke-static {v6, v1, p3}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    nop

    .line 125
    :goto_a
    nop

    .line 127
    invoke-static {v6, v4, v2}, Lccsansan/aj/addDownloadListener;->addDownloadListener(Lccsansan/aj/getDownloadingList;ZZ)V

    goto/16 :goto_11

    .line 153
    :catchall_0
    move-exception p0

    throw p0

    .line 127
    :cond_9
    :goto_b
    :pswitch_3
    if-nez p2, :cond_a

    .line 153
    const/16 p1, 0x3a

    goto :goto_c

    :cond_a
    const/16 p1, 0xf

    :goto_c
    const-string p2, "keep"

    packed-switch p1, :pswitch_data_4

    .line 130
    iget-object p1, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, p1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_e

    .line 144
    :pswitch_4
    nop

    .line 148
    invoke-static {v0, v2, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_d
    goto/16 :goto_11

    :goto_e
    const/4 p1, 0x1

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    :goto_f
    packed-switch p1, :pswitch_data_5

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 136
    iget-wide v6, v0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long p1, v1, v6

    if-ltz p1, :cond_c

    goto :goto_10

    .line 131
    :pswitch_5
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 132
    iget-object p1, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v7

    int-to-char p1, p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x9

    invoke-static {p0, p1, p3}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v0, p0, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_d

    .line 137
    :goto_10
    sget-object p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p0, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 138
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    new-instance p1, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    invoke-direct {p1, v0}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;-><init>(Lccsansan/aj/getDownloadingList;)V

    invoke-static {p0, v0, v4, p1}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;ZLccsansan/ay/getDownloadingList$removeDownloadListener;)V

    goto :goto_d

    :cond_c
    nop

    .line 140
    const-string p1, "san_share_content_photo_date_formate_no_years"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v7, p0}, Lccsansan/bw/AdFormat;->unifiedDownload(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x53

    invoke-static {v3}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p3, v4

    int-to-char p3, p3

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "rebook"

    cmpl-float v1, v1, v2

    rsub-int/lit8 v1, v1, 0x2c

    invoke-static {p0, p3, v1}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {p0, v4}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    .line 144
    invoke-static {v0, v3, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "addReserve"

    invoke-static {p0, p1, p1}, Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic deleteDownItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    invoke-static {p0, p1}, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 18
    nop

    .line 14
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    const/16 v0, 0x59

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    :pswitch_0
    return-void

    .line 4
    :cond_2
    sget-object v0, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 14
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 18
    :pswitch_1
    return-void

    .line 11
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    const v5, 0xc5f6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    int-to-char v5, v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    add-int/lit8 v6, v6, 0x31

    invoke-static {v4, v5, v6}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Ad.Reserve.Helper"

    invoke-static {v3, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 18
    return-void

    :pswitch_2
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 14
    const/16 v0, 0x47

    goto :goto_4

    :cond_7
    const/16 v0, 0xd

    :goto_4
    packed-switch v0, :pswitch_data_3

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    .line 14
    iget-object v3, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_5
    goto :goto_2

    .line 18
    :pswitch_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    .line 14
    iget-object v3, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_8

    goto :goto_5

    .line 18
    :catchall_0
    move-exception p0

    throw p0

    .line 17
    :cond_8
    sget-object v3, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_STORAGE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v3, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 18
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x47
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadedList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 8
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 8
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 0
    const-string p0, ""

    return-object p0

    .line 1
    :pswitch_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v2

    const-string v3, "cid"

    .line 4
    invoke-virtual {v2, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string p1, "ad_id"

    .line 5
    invoke-virtual {v2, p1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    .line 5
    :catch_0
    move-exception p0

    .line 8
    :goto_2
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;)Lccsanorg/json/JSONObject;
    .locals 7

    .line 193
    nop

    .line 0
    const/16 v0, 0x3b

    if-nez p0, :cond_0

    .line 193
    const/16 v1, 0x3c

    goto :goto_0

    :cond_0
    const/16 v1, 0x3b

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    goto/16 :goto_7

    .line 154
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    const/16 v0, 0x48

    goto :goto_1

    :cond_1
    const/16 v0, 0x2d

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 154
    goto/16 :goto_6

    .line 157
    :pswitch_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 159
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v1, :cond_3

    .line 193
    sget v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 159
    :cond_2
    const-string v1, "packageName"

    .line 160
    :try_start_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "name"

    .line 161
    :try_start_2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "versionName"

    .line 162
    :try_start_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->unifiedDownload()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "version_code"

    .line 163
    :try_start_4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v3, v3}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    invoke-static {v4, v3}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xb

    invoke-static {v1, v5, v6}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 164
    :try_start_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "gpUrl"

    .line 165
    :try_start_6
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->deleteDownItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "packageSize"

    .line 166
    :try_start_7
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->getDownloadedRecordByUrl()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "iconUrl"

    .line 167
    :try_start_8
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "ampAppId"

    .line 168
    :try_start_9
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 171
    :cond_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v1, :cond_4

    const-string v1, "cid"

    .line 172
    :try_start_a
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 193
    nop

    .line 175
    :cond_4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v1, :cond_5

    .line 193
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    nop

    :goto_2
    packed-switch v3, :pswitch_data_2

    :cond_6
    :goto_3
    goto :goto_4

    :pswitch_2
    sget v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    .line 175
    :cond_7
    const-string v1, "useableNetStatus"

    .line 176
    :try_start_b
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/pause;->IncentiveDownloadUtils()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "releaseTime"

    .line 177
    :try_start_c
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/pause;->unifiedDownload()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "autoReservation"

    .line 178
    :try_start_d
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/pause;->removeDownloadListener()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 179
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v1

    invoke-static {p0}, Lccsansan/cy/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsansan/dt/pause;->addDownloadListener([Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v1, "trackUrls"

    .line 180
    :try_start_e
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/pause;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v1, "md5"

    .line 181
    :try_start_f
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/pause;->addDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 193
    sget v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_3

    .line 181
    :goto_4
    const-string v1, "ad_id"

    .line 184
    :try_start_10
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v1, "minisiteUrl"

    .line 185
    :try_start_11
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v1, "adnet"

    .line 186
    :try_start_12
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/deleteDownList;->removeDownloadListener()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_5

    .line 193
    :cond_8
    const-string v3, "0"

    .line 186
    :goto_5
    :try_start_13
    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string v1, "pid"

    .line 187
    :try_start_14
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const-string v1, "placementId"

    .line 188
    :try_start_15
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const-string v1, "rid"

    .line 189
    :try_start_16
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const-string v1, "formatId"

    .line 190
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const-string v1, "did"

    .line 191
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string v1, "cpiParam"

    .line 192
    :try_start_19
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    rsub-int/lit8 v1, v1, 0x9

    invoke-static {v4}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x12

    int-to-byte v3, v3

    const-string v5, "\u0011\u001a\u000c \u0008\u000b\u0002\t\u007f\u007f"

    invoke-static {v5, v1, v3}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 193
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    return-object v0

    :goto_6
    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-object v2

    :catch_0
    move-exception p0

    return-object v2

    :goto_7
    :try_start_1b
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_9
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDownloadingList()V
    .locals 8

    .line 27
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    const v1, -0xfffffd

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    const-string v3, "\u0007\u0003\u0007\u0004\u0006\u0011\u0007\u0013\u0002\u0003\r\u0002\t\u0011\u0011\u000c\u0004\r\u0015\u0006\u0004\u0007\u0005\u0007\r\u0000\u0005\u0000\u0007\u0008\u0003\u0000\u0006\u0002"

    invoke-static {v3, v0, v1}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "Ad.Reserve.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 27
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    return-void

    .line 9
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 27
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_1

    :goto_3
    goto :goto_5

    .line 12
    :pswitch_2
    instance-of v5, v1, Lccsansan/ae/unifiedDownload;

    if-eqz v5, :cond_4

    .line 27
    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_2

    goto :goto_3

    .line 13
    :pswitch_3
    check-cast v1, Lccsansan/ae/unifiedDownload;

    invoke-virtual {v1}, Lccsansan/ae/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    .line 15
    :goto_5
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1, v4}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 27
    sget v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 20
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 27
    const/4 v5, 0x0

    goto :goto_7

    :cond_7
    const/4 v5, 0x1

    :goto_7
    packed-switch v5, :pswitch_data_3

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsansan/aj/getDownloadingList;

    .line 21
    invoke-virtual {v5}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v6

    if-nez v6, :cond_9

    .line 27
    sget v6, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v6, v6, 0x2d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_8

    .line 22
    :cond_8
    iget-object v5, v5, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsansan/aa/addDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    .line 23
    invoke-static {v4}, Lccsansan/bi/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    goto :goto_6

    .line 24
    :cond_9
    iget-object v6, v5, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v7, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOAD_PAUSE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v6, v7, :cond_6

    .line 25
    invoke-static {v4}, Lccsansan/bi/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 27
    sget v6, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v6, v6, 0x4f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_a

    .line 26
    :cond_a
    iget-object v5, v5, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 27
    invoke-static {v4}, Lccsansan/bi/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Z

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Z)V
    .locals 2

    .line 3
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Z)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x11

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 285
    nop

    .line 270
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 270
    :cond_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :pswitch_0
    return-void

    .line 273
    :cond_2
    sget-object v0, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    return-void

    .line 276
    :cond_3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 277
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 285
    sget v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 277
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    goto :goto_2

    .line 285
    :catchall_0
    move-exception p0

    throw p0

    .line 277
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 285
    :goto_2
    :pswitch_1
    return-void

    .line 281
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 285
    nop

    .line 281
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 277
    const/16 v1, 0x3d

    goto :goto_4

    :cond_7
    const/16 v1, 0x18

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 281
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/aj/getDownloadingList;

    .line 282
    iget-object v2, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    .line 285
    :pswitch_2
    return-void

    .line 282
    :cond_8
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0xe

    const-string v3, ""

    invoke-static {v3, v0, v0}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x24

    int-to-byte v3, v3

    const-string v4, "\u0001\u0002\u0003\u0002\u0004\u0002\u0005\u0000\u0007\u0008\u0003\u0000\u0006\u0002"

    invoke-static {v4, v2, v3}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/aj/getDownloadingList;)V
    .locals 21

    .line 368
    move-object/from16 v1, p0

    const-string v2, "advertiser_tracker"

    const-string v3, "gp_url"

    const-string v4, ""

    const-string v5, "code"

    const-string v6, "Ad.Reserve.Helper"

    .line 288
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Z

    move-result v0

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get url config = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "; url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 294
    iget-object v0, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 299
    :cond_1
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->IncentiveDownloadUtils()I

    move-result v0

    .line 300
    invoke-static {v0}, Lccsansan/dp/getDownloadingList;->addDownloadListener(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_2

    .line 302
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "cid"

    .line 303
    :try_start_1
    iget-object v7, v1, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "ad_id"

    .line 304
    :try_start_2
    iget-object v7, v1, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "reserve"

    const/4 v9, 0x0

    const/16 v11, 0x7530

    const/16 v12, 0x7530

    .line 305
    invoke-static/range {v7 .. v12}, Lccsansan/bw/getAdFormat;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;II)Lccsansan/x/addDownloadListener;

    move-result-object v0

    goto/16 :goto_7

    .line 307
    :cond_2
    iget-object v0, v1, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v7, v1, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v7}, Lccsansan/ay/getDownloadingList;->getDownloadedList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get url params = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "Content-Type"

    const-string v10, "application/json"

    .line 310
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Accept-Charset"

    const-string v10, "UTF-8"

    .line 311
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {v8}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v8

    .line 313
    iget-object v9, v8, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v9, :cond_3

    const-string v9, "Host"

    .line 314
    :try_start_3
    iget-object v10, v8, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 317
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9}, Lccsanorg/json/JSONObject;-><init>()V

    .line 318
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v10, :cond_4

    .line 320
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    const/4 v10, 0x1

    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 368
    sget v10, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v10, v10, 0x6f

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_5

    .line 320
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    const/4 v10, 0x1

    :goto_1
    packed-switch v10, :pswitch_data_1

    :try_start_4
    invoke-static {}, Lccsansan/cz/unifiedDownload;->trackReportShow()Z

    move-result v10

    goto :goto_3

    :pswitch_0
    invoke-static {}, Lccsansan/cz/unifiedDownload;->trackReportShow()Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v11, 0x0

    :try_start_5
    array-length v11, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_6

    const/16 v10, 0x23

    goto :goto_2

    :cond_6
    const/16 v10, 0x48

    :goto_2
    packed-switch v10, :pswitch_data_2

    goto :goto_4

    .line 368
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 323
    :catch_0
    move-exception v0

    goto :goto_6

    .line 320
    :goto_3
    if-eqz v10, :cond_7

    :pswitch_1
    const-string v10, "s2"

    .line 321
    :try_start_6
    invoke-static {v0}, Lccsansan/cb/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :cond_7
    :goto_4
    const-string v10, "s"

    .line 323
    :try_start_7
    invoke-static {v0}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 321
    :goto_5
    nop

    .line 327
    :goto_6
    :try_start_8
    invoke-virtual {v9}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    :pswitch_2
    const-string v15, "reserve"

    .line 330
    :try_start_9
    iget-object v8, v8, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x7530

    const/16 v20, 0x7530

    move-object/from16 v17, v7

    invoke-static/range {v15 .. v20}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BII)Lccsansan/x/addDownloadListener;

    move-result-object v0

    .line 305
    :goto_7
    nop

    .line 330
    if-eqz v0, :cond_14

    .line 332
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_9

    goto/16 :goto_e

    .line 335
    :cond_9
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    return-void

    .line 339
    :cond_a
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get url response = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v7, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    const/16 v0, 0xc

    goto :goto_8

    :cond_b
    const/16 v0, 0x18

    :goto_8
    packed-switch v0, :pswitch_data_3

    :pswitch_3
    goto/16 :goto_d

    .line 342
    :pswitch_4
    invoke-virtual {v7, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 320
    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    packed-switch v0, :pswitch_data_4

    .line 342
    const/16 v0, 0x30

    invoke-static {v4, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x42

    invoke-static {v0}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    sub-int/2addr v0, v6

    int-to-char v0, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x10

    invoke-static {v5, v0, v6}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {v7, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-nez v0, :cond_e

    .line 368
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 343
    :cond_d
    :try_start_a
    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int/lit8 v0, v0, 0x43

    invoke-static {v14, v14}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v14, v14}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    add-int/lit8 v6, v6, 0x11

    invoke-static {v0, v5, v6}, Lccsansan/ay/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_e
    iget-object v0, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 368
    nop

    .line 343
    :goto_a
    iput-object v0, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 344
    invoke-virtual {v7, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v7, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 368
    sget v3, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_10

    goto :goto_b

    .line 344
    :cond_f
    :try_start_b
    iget-object v0, v1, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    :cond_10
    :goto_b
    iput-object v0, v1, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    const-string v0, "product_info"

    .line 345
    invoke-virtual {v7, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v7, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 347
    invoke-virtual {v7, v2}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 349
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 350
    invoke-virtual {v2, v14}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 351
    :goto_c
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_11

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 355
    :cond_11
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 356
    iput-object v4, v1, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    .line 359
    :cond_12
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 360
    new-instance v2, Lccsansan/dt/resume;

    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lccsansan/dt/resume;-><init>(Lccsanorg/json/JSONObject;)V

    .line 361
    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadedRecordByUrl()J

    move-result-wide v3

    iput-wide v3, v1, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    .line 362
    invoke-virtual {v2}, Lccsansan/dt/resume;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsansan/aj/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    .line 363
    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v0

    iput v0, v1, Lccsansan/aj/getDownloadingList;->getDownloadStatusByUrl:I

    .line 364
    invoke-virtual {v2}, Lccsansan/dt/resume;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    const-string v0, "amp_app_id"

    .line 365
    :try_start_c
    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadingCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    nop

    :cond_13
    :goto_d
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_f

    :cond_14
    :goto_e
    return-void

    :catch_1
    move-exception v0

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/k/unifiedDownload;Ljava/lang/String;)Z
    .locals 2

    .line 287
    nop

    .line 286
    invoke-static {p1}, Lccsansan/aa/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 287
    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    goto :goto_3

    :pswitch_0
    sget p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x5a

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 286
    :cond_2
    if-eqz p0, :cond_5

    .line 287
    :goto_2
    invoke-virtual {p0}, Lccsansan/k/unifiedDownload;->removeDownloadListener()Lccsansan/k/unifiedDownload$unifiedDownload;

    move-result-object p0

    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->USER_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    if-eq p0, p1, :cond_1

    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    :cond_3
    const/4 v0, 0x1

    const/16 p0, 0x59

    add-int/2addr p1, p0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 p0, 0x54

    goto :goto_1

    :cond_5
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 14
    nop

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 5
    :goto_1
    const/16 v2, 0x54

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    sget v2, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 5
    const/16 v2, 0x25

    goto :goto_2

    :cond_2
    const/16 v2, 0x56

    :goto_2
    packed-switch v2, :pswitch_data_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    :goto_3
    goto :goto_6

    :goto_4
    const/4 v3, 0x0

    :try_start_1
    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4, v1, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const-string v4, "\u0007\u0003\u0007\u0004\u0006\u0011\u0007\u0013\u0002\u0003\r\u0002\t\u0011\t\u0004\t\u0006\u0004\u0005\u0000\u000b\u0008\u0001\u0002\u000b\u0003\u0006\u0004\u0007\u0005\u0007\r\u0000\u0014\r\u0014\u001a\u0014\u000f\u0013\u0017\u0014\u000b\u0019\u0000\u0013\u001b)"

    invoke-static {v4, v3, v1}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Ad.Reserve.Helper"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    .line 10
    iget-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    goto :goto_5

    .line 13
    :cond_4
    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 14
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_5

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_6
    :goto_6
    return-void

    .line 5
    :catchall_1
    move-exception p0

    throw p0

    .line 1
    :cond_7
    :goto_7
    nop

    .line 14
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
.end method

.method static synthetic removeDownloadListener(Ljava/lang/String;)J
    .locals 2

    .line 5
    sget v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-wide v0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsansan/ay/getDownloadingList;->getDownloadedRecordByUrl:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/ay/getDownloadingList;->getDownloadedList:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p1, [C

    .line 1221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p1, p1, -0x1

    .line 1224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 1245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 1253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1261
    goto :goto_1

    .line 1264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 1266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1274
    goto :goto_1

    .line 1281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 1282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 1284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 1291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1292
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 69
    nop

    .line 30
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 32
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 32
    goto :goto_1

    :pswitch_0
    const-string v2, "32"

    goto :goto_2

    .line 69
    :goto_1
    const-string v2, "64"

    .line 32
    :goto_2
    const-string v5, "cpu_bit"

    invoke-virtual {v0, v5, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 33
    invoke-static {p0}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v2

    const-string v5, "geo"

    invoke-virtual {v0, v5, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 34
    invoke-static {p0}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "device_type"

    invoke-virtual {v0, v5, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 35
    const-string v2, "os_type"

    const-string v5, "android"

    invoke-virtual {v0, v2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 36
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "os_ver"

    invoke-virtual {v0, v5, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 37
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    const-string v6, "screen_width"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 38
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    const-string v6, "screen_height"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 39
    sget-object v5, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v6, "brand"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 40
    sget-object v5, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "manufacturer"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 41
    sget-object v5, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "device_model"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 42
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    const-string v6, "dpi"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 43
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    const-string v6, "network"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 44
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ab/removeDownloadListener;->unifiedDownload()I

    move-result v5

    const/16 v6, -0x3e9

    if-eq v5, v6, :cond_1

    .line 65
    const/16 v6, 0x59

    goto :goto_3

    :cond_1
    const/16 v6, 0x32

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 69
    sget v6, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v6, v6, 0x4b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 65
    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_4
    const-string v7, "mobile_network"

    packed-switch v6, :pswitch_data_2

    .line 69
    nop

    .line 46
    invoke-virtual {v0, v7, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    goto :goto_5

    .line 44
    :pswitch_1
    nop

    .line 46
    invoke-virtual {v0, v7, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    goto :goto_6

    :goto_5
    const/4 v5, 0x0

    :try_start_0
    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :goto_6
    :pswitch_2
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 49
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "imei"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 50
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "imsi"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 51
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gaid"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 52
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_id"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 53
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    const-string v6, "timezone"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 54
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lang"

    invoke-virtual {v0, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 55
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v5, "country"

    invoke-virtual {v0, v5, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 57
    invoke-static {p0}, Lccsansan/bw/resolveUrl;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/resolveUrl$unifiedDownload;

    move-result-object p0

    const-string v1, "battery_info"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 59
    new-instance p0, Lccsanorg/json/JSONArray;

    invoke-direct {p0}, Lccsanorg/json/JSONArray;-><init>()V

    const/16 v1, 0x15

    if-lt v2, v1, :cond_5

    .line 65
    sget v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 61
    :cond_3
    sget-object v1, Lccsanandroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v1

    .line 65
    sget v3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 69
    :cond_4
    nop

    .line 61
    :goto_7
    if-ge v4, v2, :cond_9

    aget-object v3, v1, v4

    .line 62
    invoke-virtual {p0, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 64
    :cond_5
    sget-object v1, Lccsanandroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 46
    sget v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 65
    const/4 v2, 0x0

    goto :goto_8

    :cond_6
    const/4 v2, 0x1

    :goto_8
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    packed-switch v2, :pswitch_data_3

    goto :goto_9

    :pswitch_3
    const/16 v1, 0x5a

    :try_start_1
    div-int/2addr v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 46
    :catchall_0
    move-exception p0

    throw p0

    .line 69
    :goto_9
    nop

    .line 66
    :cond_7
    sget-object v1, Lccsanandroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 65
    const/4 v3, 0x0

    goto :goto_a

    :cond_8
    nop

    :goto_a
    packed-switch v3, :pswitch_data_4

    goto :goto_b

    .line 67
    :pswitch_4
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    :cond_9
    :goto_b
    nop

    .line 69
    const-string v1, "cpu_abi"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_d

    :goto_c
    throw p0

    :goto_d
    goto :goto_c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Z)V
    .locals 1

    .line 379
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/ay/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0, p0, p2}, Lccsansan/ay/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Z)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x13

    goto :goto_0

    :cond_0
    const/16 p0, 0x16

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 18
    nop

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    goto/16 :goto_4

    .line 4
    :cond_1
    sget-object v0, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 18
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1e

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    throw p0

    .line 8
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    goto :goto_4

    .line 12
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    .line 13
    iget-object v2, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 8
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 18
    goto :goto_2

    .line 16
    :cond_7
    iget-object v2, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v3, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-eq v2, v3, :cond_5

    .line 17
    iput-object v3, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 18
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 378
    nop

    .line 369
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 370
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->canCollectUserInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    const/16 v1, 0x3a

    goto :goto_0

    :cond_0
    const/16 v1, 0x57

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 370
    goto :goto_3

    .line 373
    :pswitch_0
    invoke-static {p0}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 378
    sget v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 375
    :cond_1
    iget-object v1, p0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 376
    iget-object p0, p0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "lon"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 378
    nop

    :cond_2
    invoke-static {}, Lccsansan/bw/getErrorCode;->trackReportShow()Ljava/lang/String;

    move-result-object p0

    const-string v1, "station"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v0

    :goto_2
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static unifiedDownload()V
    .locals 2

    const/16 v0, 0x8a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ay/getDownloadingList;->getDownloadingList:[C

    const-wide v0, 0x7100c82740b1c21aL    # 2.134353847530298E236

    sput-wide v0, Lccsansan/ay/getDownloadingList;->getDownloadStatusByUrl:J

    const/4 v0, 0x6

    sput-char v0, Lccsansan/ay/getDownloadingList;->getDownloadedList:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/ay/getDownloadingList;->getDownloadedRecordByUrl:[C

    return-void

    nop

    :array_0
    .array-data 2
        -0x7bf9s
        0x461as
        0x29s
        -0x3dacs
        -0x7399s
        0x4e80s
        0x89es
        -0x3543s
        -0x6b26s
        0x75s
        -0x3d8cs
        -0x7ba3s
        0x4620s
        0x81bs
        -0x350as
        -0x7303s
        0x4edas
        0x10bcs
        -0x3a5cs
        0x789s
        0x41b1s
        -0x7c23s
        -0x3214s
        0xf02s
        0x490fs
        -0x74f8s
        -0x2abds
        0x1770s
        0x5082s
        -0x6d73s
        -0x2344s
        0x1e8as
        0x58fes
        -0x65e1s
        -0x1bdfs
        0x2622s
        0x604es
        -0x5d89s
        -0x1061s
        0x29b0s
        0x6b84s
        -0x4a31s
        -0x83ds
        0x3112s
        0x733ds
        -0x42c3s
        -0xb7s
        0x396cs
        0x7aa9s
        0x44a4s
        -0x7927s
        -0x3f22s
        0x2e3s
        0x4c1fs
        -0x71c5s
        -0x37e8s
        0xa0as
        0x5470s
        -0x6e73s
        -0x2c45s
        0x1dfcs
        0x5fc9s
        -0x661ds
        -0x24ffs
        0x257as
        0x671bs
        -0x5ecas
        0x61s
        -0x3d96s
        -0x7ba1s
        0x4611s
        0x80cs
        -0x3513s
        -0x7315s
        0x4ed8s
        0x10bcs
        -0x2d7bs
        -0x6a9bs
        0x577as
        0x1967s
        -0x24d9s
        -0x62e2s
        0x5feas
        0x41s
        -0x3d8as
        -0x7bbas
        0x462bs
        0x809s
        -0x351as
        -0x731bs
        0x4e96s
        0x10b2s
        -0x2d7bs
        -0x6a95s
        0x5775s
        0x195ds
        -0x24cas
        -0x62c0s
        0x5fa6s
        0x21d7s
        -0x1c2ds
        -0x5a48s
        0x6782s
        0x2a28s
        -0x13afs
        -0x51b8s
        0x7037s
        0x3202s
        -0xb02s
        -0x497cs
        0x78das
        0x3ab7s
        -0x37bs
        -0x409es
        -0x7eb6s
        0x432fs
        0x53bs
        -0x38f0s
        -0x7652s
        0x4bdbs
        0xdabs
        -0x304es
        -0x6e6bs
        0x5475s
        0x160as
        -0x279fs
        -0x65d3s
        0x64s
        -0x3d8bs
        -0x7bbds
        0x4620s
        0x804s
        -0x3513s
        -0x7303s
        0x4ed2s
        0x1085s
        -0x2d68s
        -0x6a98s
    .end array-data

    :array_1
    .array-data 2
        0x64s
        0x65s
        0x6cs
        0x74s
        0x44s
        0x6fs
        0x77s
        0x6es
        0x61s
        0x52s
        0x73s
        0x72s
        0x76s
        0x48s
        0x70s
        0x2es
        0x63s
        0x68s
        0x6bs
        0x41s
        0x2cs
        0x20s
        0x67s
        0x4es
        0x6ds
        0x2bs
        0x55s
        0x53s
        0x3ds
        0x32s
        0x49s
        0x75s
        0x69s
        0x5fs
        0x42s
        0x66s
    .end array-data
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;ZLccsansan/ay/getDownloadingList$removeDownloadListener;)V
    .locals 10

    .line 29
    nop

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u0007\u0003\u0007\u0004\u0006\u0011\u0007\u0013\u0002\u0003\r\u0002\t\u0011\u0013\u0004\u0004\u0005\u0000\u000b\u0008\u0001\u0002\u000b\u0002\u0018\u0008\u0005\u0019\r\u0003\u0018\u0002\t\t\u0005\u0005\u0000\u0007\u0008\u0015\u0016\u000c\u0014\u0017\u0016\u001b\u0016"

    const-string v7, "; start = "

    const-string v8, "Ad.Reserve.Helper"

    cmp-long v9, v2, v4

    rsub-int/lit8 v2, v9, 0x30

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x59

    int-to-byte v3, v3

    invoke-static {v6, v2, v3}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v2, Lccsansan/ay/getDownloadingList$addDownloadListener;

    invoke-direct {v2, p1, p3, p0, p2}, Lccsansan/ay/getDownloadingList$addDownloadListener;-><init>(Lccsansan/aj/getDownloadingList;Lccsansan/ay/getDownloadingList$removeDownloadListener;Lccsanandroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x42

    goto :goto_0

    :cond_0
    const/16 p0, 0x43

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x37

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/ay/getDownloadingList$removeDownloadListener;)V
    .locals 7

    .line 93
    nop

    .line 70
    new-instance v0, Lccsancom/san/cpi/xz/AdXzParams$Builder;

    invoke-direct {v0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;-><init>()V

    iget-object v1, p1, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p1, Lccsansan/aj/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    iget v3, p1, Lccsansan/aj/getDownloadingList;->getDownloadStatusByUrl:I

    iget-object v4, p1, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-wide v5, p1, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    invoke-virtual/range {v0 .. v6}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendPkgInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 71
    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 72
    const-string v1, "pid"

    invoke-virtual {p1, v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lccsansan/aj/getDownloadingList;->ActionTypeDownload:Ljava/lang/String;

    iget-object v3, p1, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p4, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdStatsInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p4

    .line 73
    const-string v0, "did"

    invoke-virtual {p1, v0}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpiParam"

    invoke-virtual {p1, v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCpiInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p4

    iget-object v0, p1, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    .line 74
    invoke-virtual {p4, p3, v0, p2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendUrls(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p2

    new-instance p3, Lccsansan/ay/getDownloadingList$unifiedDownload;

    invoke-direct {p3, p5, p1}, Lccsansan/ay/getDownloadingList$unifiedDownload;-><init>(Lccsansan/ay/getDownloadingList$removeDownloadListener;Lccsansan/aj/getDownloadingList;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCallbacks(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p2

    const/4 p3, -0x4

    .line 89
    invoke-virtual {p2, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p2

    const-string p3, "ad"

    invoke-virtual {p2, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p2

    const-string p3, "reserve_ad"

    invoke-virtual {p2, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p2

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 p5, 0x0

    const-string v4, "\u0011\u001a\u000c \u0008\u000b\u0002\t\u007f\u007f"

    const-string v5, ""

    cmp-long v6, v0, v2

    rsub-int/lit8 v0, v6, 0xb

    invoke-static {v5, p5}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    int-to-byte v1, v1

    invoke-static {v4, v0, v1}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0, p3}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendP2pAzEnable(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendIsBook(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->build()Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p1

    if-nez p0, :cond_0

    .line 93
    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    sget p0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/2addr p0, p3

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    packed-switch p3, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    :try_start_0
    invoke-super {p4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    sget p2, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x5d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    :pswitch_1
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 17
    nop

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_3

    .line 1
    :cond_1
    :goto_2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 17
    :goto_3
    return-void

    .line 4
    :cond_2
    sget-object v0, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 17
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    nop

    :goto_4
    packed-switch v1, :pswitch_data_1

    :cond_5
    :goto_5
    goto :goto_7

    .line 8
    :pswitch_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 17
    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    goto :goto_5

    .line 12
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    .line 13
    iget-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    .line 16
    :cond_7
    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 17
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    goto :goto_6

    :cond_8
    return-void

    :goto_7
    sget p0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    const/16 p0, 0x52

    goto :goto_8

    :cond_9
    const/4 p0, 0x4

    :goto_8
    packed-switch p0, :pswitch_data_2

    goto :goto_9

    :pswitch_2
    return-void

    :goto_9
    const/16 p0, 0x1c

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/k/unifiedDownload;Ljava/lang/String;)Z
    .locals 4

    .line 4
    sget v0, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p1}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsansan/k/unifiedDownload;Ljava/lang/String;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsansan/ay/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/ay/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    return p0

    :pswitch_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
