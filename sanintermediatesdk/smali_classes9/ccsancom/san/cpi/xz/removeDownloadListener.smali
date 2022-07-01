.class public Lccsancom/san/cpi/xz/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    const/16 v0, 0x79

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x37s
        0x70s
        0x73s
        0x6as
        0x66s
        0x6cs
        0x68s
        0x64s
        0x66s
        0x85s
        0x104s
        0x108s
        0x111s
        0x10es
        0x109s
        0x109s
        0x10cs
        0x10as
        0x10cs
        0x110s
        0x109s
        0x10bs
        0x108s
        0x109s
        0x111s
        0x10bs
        0x103s
        0xffs
        0x102s
        0x106s
        0x79s
        0xf4s
        0xefs
        0xe9s
        0xeas
        0xees
        0xf1s
        0xeds
        0xees
        0xecs
        0xe8s
        0xf0s
        0xfas
        0xf9s
        0x7ds
        0x3fs
        0x7ds
        0x79s
        0x79s
        0x6es
        0x81s
        0x80s
        0x7bs
        0x76s
        0x6cs
        0x52s
        0xafs
        0xbbs
        0xb9s
        0xbas
        0xc2s
        0xc1s
        0xc3s
        0xb2s
        0xacs
        0xc1s
        0xc4s
        0xbbs
        0xb7s
        0xbds
        0xacs
        0xa9s
        0xc0s
        0x7fs
        0x103s
        0x10ds
        0x10cs
        0x107s
        0x107s
        0x102s
        0xfcs
        0xfbs
        0x103s
        0x110s
        0x10es
        0x104s
        0x32s
        0x69s
        0x6bs
        0x6es
        0x69s
        0x61s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x69s
        0x22s
        0x57s
        0x67s
        0x5bs
        0x5bs
        0x52s
        0x59s
        0x6bs
        0x66s
        0x64s
        0x67s
        0x67s
        0x57s
        0x5fs
        0x6bs
        0x64s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/removeDownloadListener;
    .locals 2

    .line 3
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/removeDownloadListener;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 4

    .line 37
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 37
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 0
    if-nez p1, :cond_3

    .line 37
    :pswitch_0
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 p0, 0x52

    goto :goto_1

    :cond_2
    const/16 p0, 0x61

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/16 p0, 0x40

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 24
    :cond_3
    :try_start_1
    iget-object p1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mExtraInfo:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    .line 26
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_4
    const-string p1, "common_extra"

    .line 34
    :try_start_3
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#addExtraParamsToCPIReportInfo exception="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const-string v0, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000"

    invoke-static {p1, v0, v2}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x63
        0x16
        0x0
        0x6
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 5

    .line 13
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_8

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-eqz p0, :cond_6

    .line 13
    :goto_1
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 0
    :pswitch_0
    if-nez p1, :cond_3

    goto :goto_0

    .line 13
    :goto_3
    const/16 v0, 0x3e

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    iget-object p1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mExtraInfo:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    .line 5
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    packed-switch v3, :pswitch_data_1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_6

    .line 13
    :pswitch_1
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "common_extra"

    invoke-virtual {p0, v0, p1}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 8
    :goto_6
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_4

    .line 13
    :cond_5
    :goto_7
    return-void

    :catchall_1
    move-exception p0

    throw p0

    :cond_6
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 3

    .line 2
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0}, Lccsansan/bw/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    goto :goto_1

    :cond_1
    const/16 v0, 0x4e

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return p0

    :goto_2
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/getDownloadedList;
    .locals 9

    .line 62
    nop

    .line 14
    new-instance v0, Lccsansan/m/getDownloadedList;

    invoke-direct {v0}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 15
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 19
    iget v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 20
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 21
    iget-wide v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 23
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 62
    const/16 v2, 0x2d

    goto :goto_1

    :cond_1
    const/16 v2, 0x60

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_6

    .line 23
    :pswitch_0
    array-length v1, v1

    if-lez v1, :cond_4

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v2, p0, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    .line 62
    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 25
    aget-object v7, v2, v6

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 32
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    goto :goto_6

    .line 27
    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_5

    .line 27
    :cond_3
    nop

    .line 29
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 34
    :cond_4
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 35
    const/4 v1, -0x1

    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 36
    iput v1, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    .line 37
    iget-boolean v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iput-boolean v1, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    .line 38
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mSubPortal:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    .line 40
    sget-object v1, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v1}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mDeepLinkUrl:Ljava/lang/String;

    const-string v2, "deepLinkUrl"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mRid:Ljava/lang/String;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPlacementId:Ljava/lang/String;

    const-string v2, "placement_id"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mCreativeId:Ljava/lang/String;

    const-string v2, "creativeid"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v5, "\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v2, v5, v4}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v4, p0, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lccsansan/k/deleteDownItem;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 62
    const/16 v4, 0x3b

    goto :goto_7

    :cond_5
    const/16 v4, 0xc

    :goto_7
    const-string v5, "1"

    packed-switch v4, :pswitch_data_2

    .line 49
    goto :goto_8

    .line 62
    :pswitch_2
    sget v4, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p0

    throw p0

    .line 49
    :cond_6
    goto :goto_9

    .line 62
    :goto_8
    const-string v5, "2"

    .line 49
    :goto_9
    invoke-virtual {v0, v2, v5}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "s2s_track_status"

    const-string v4, "-1"

    invoke-virtual {v0, v2, v4}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    const-string v4, "sourcetype"

    invoke-virtual {v0, v4, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsBook:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_book"

    invoke-virtual {v0, v5, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lccsancom/san/cpi/xz/AdXzParams;->mSid:Ljava/lang/String;

    const-string v5, "sid"

    invoke-virtual {v0, v5, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    const-string v5, "portal_key"

    invoke-virtual {v0, v5, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {v2}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 62
    sget v2, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 57
    :cond_7
    invoke-static {v0, p0}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 60
    :cond_8
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result p0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "pkg_type"

    invoke-virtual {v0, v2, p0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const-string v2, "\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001"

    invoke-static {v1, v2, v3}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x49
        0xd
        0x9a
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x56
        0xd
        0x0
        0x0
    .end array-data
.end method

.method static synthetic getDownloadingList(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto :goto_2

    :cond_1
    const/16 v0, 0x36

    :goto_2
    packed-switch v0, :pswitch_data_1

    return p0

    :pswitch_1
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 13

    .line 23
    sget v2, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 23
    return-void

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 5
    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget v5, p1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    invoke-static {p0, v2, v5}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v2, v3, :cond_3

    .line 11
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_2

    .line 6
    :cond_2
    iget-object v7, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v10, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v11, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v12, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    const-string v1, "\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v0, v1, v6}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v7 .. v12}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    .line 10
    :cond_3
    iget v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mMinVersionCode:I

    if-lez v2, :cond_4

    .line 11
    const/16 v7, 0x4e

    goto :goto_0

    :cond_4
    const/16 v7, 0x47

    :goto_0
    packed-switch v7, :pswitch_data_0

    :goto_1
    goto :goto_3

    .line 10
    :pswitch_0
    iget-object v7, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v7, v2}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 11
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 23
    :pswitch_1
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    rem-int/2addr v0, v4

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    if-nez v0, :cond_6

    .line 11
    iget-object v7, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v10, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v11, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v12, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    invoke-static {v0, v2, v6}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v7 .. v12}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    :cond_6
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v7, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v8, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-static {v1, v2, v3}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    move-object v3, v6

    move v4, v7

    move v5, v8

    invoke-static/range {v0 .. v5}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    .line 15
    :goto_3
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v7, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v8, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 11
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    nop

    :goto_4
    packed-switch v3, :pswitch_data_2

    .line 15
    iget-object v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    goto :goto_5

    :pswitch_2
    iget-object v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    goto :goto_7

    .line 23
    :goto_5
    sget v8, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v8, v8, 0x9

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v8, v4

    if-eqz v8, :cond_8

    .line 11
    const/16 v8, 0x26

    goto :goto_6

    :cond_8
    const/16 v8, 0x2e

    :goto_6
    packed-switch v8, :pswitch_data_3

    .line 23
    :pswitch_3
    nop

    .line 15
    :goto_7
    invoke-virtual {v2, v7, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    const-string v3, "1"

    const-string v7, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001"

    if-nez v2, :cond_9

    .line 17
    invoke-static {p1}, Lccsancom/san/cpi/xz/removeDownloadListener;->addDownloadListener(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-static {v5, v7, v6}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v2, v5, v3}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    new-instance v3, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v3, p1}, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/cpi/xz/AdXzParams;)V

    invoke-virtual {v0, v2, v3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    .line 11
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v4

    .line 23
    goto :goto_8

    .line 21
    :cond_9
    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    sget-object v8, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-static {v2, v4, v8, p1}, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsancom/san/cpi/xz/AdXzParams;)V

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    invoke-static {v4, v7, v6}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v2, v4, v3}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    new-instance v3, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v3, p1}, Lccsancom/san/cpi/xz/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/cpi/xz/AdXzParams;)V

    invoke-virtual {v0, v2, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4e
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
    .packed-switch 0x26
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x9
        0x0
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x9
        0x15
        0x9e
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x9
        0x15
        0x9e
        0x6
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0xe
        0x87
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x1e
        0xe
        0x87
        0x4
    .end array-data
.end method

.method private static unifiedDownload(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/removeDownloadListener;
    .locals 35

    move-object/from16 v1, p0

    .line 58
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v10, "0"

    .line 3
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v11, ""

    .line 7
    :try_start_2
    iget-object v0, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAppData:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v14, 0x0

    if-nez v0, :cond_3

    .line 9
    :try_start_3
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v5, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAppData:Ljava/lang/String;

    invoke-direct {v0, v5}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v12, Lccsansan/dt/removeDownloadListener;

    invoke-direct {v12, v0}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 11
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v17

    .line 12
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->execute()Ljava/util/List;

    move-result-object v26

    .line 13
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v9, ""

    .line 15
    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->getAdSize()Ljava/util/List;

    move-result-object v28

    .line 22
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v0
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v6, ""

    packed-switch v0, :pswitch_data_0

    move-object/from16 v25, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v29

    goto :goto_1

    .line 23
    :pswitch_0
    :try_start_5
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsansan/dt/addDownloadListener;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    .line 26
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lccsansan/dt/addDownloadListener;->unifiedDownload()Ljava/util/List;

    move-result-object v18
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 58
    sget v19, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v7, v19, 0x3f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v7, v2

    .line 29
    move-object/from16 v29, v0

    move-object/from16 v30, v16

    move-object/from16 v25, v18

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 29
    :goto_1
    :try_start_6
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v12}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v34

    .line 34
    new-instance v2, Lccsansan/m/removeDownloadListener;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v27, v5

    invoke-direct/range {v16 .. v31}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 35
    move-object v5, v2

    move-object v14, v6

    move-object v6, v8

    const/4 v15, 0x0

    const/4 v15, 0x1

    move-object/from16 v8, v34

    move-object/from16 v18, v12

    move-object v12, v13

    :try_start_7
    invoke-virtual/range {v5 .. v12}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v14}, Lccsansan/m/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    const-string v5, "rid"

    .line 38
    invoke-virtual {v2, v5, v0}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-string v0, "sid"

    .line 39
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const-string v0, "isOfflineAd"

    .line 40
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    invoke-static {v5, v3, v15}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 41
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {v18 .. v18}, Lccsansan/dt/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 58
    const/16 v6, 0x34

    goto :goto_2

    :cond_2
    const/16 v6, 0x52

    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 44
    new-array v0, v0, [I

    goto :goto_4

    .line 58
    :goto_3
    :pswitch_1
    goto :goto_6

    .line 44
    :goto_4
    const/16 v6, 0x37

    const/4 v7, 0x0

    aput v6, v0, v7

    const/16 v6, 0x12

    aput v6, v0, v15

    const/16 v6, 0x51

    const/4 v7, 0x2

    aput v6, v0, v7

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v0, v6

    const-string v6, "\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000"

    invoke-static {v0, v6, v7}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v2, v0, v5}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lccsanorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_6

    :goto_5
    move-object v2, v3

    :goto_6
    move-object/from16 v20, v4

    goto :goto_7

    :cond_3
    nop

    .line 58
    move-object v2, v3

    move-object/from16 v20, v4

    .line 45
    :goto_7
    if-nez v2, :cond_4

    .line 52
    :try_start_b
    new-instance v2, Lccsansan/m/removeDownloadListener;

    iget-object v0, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v31, ""

    const-string v32, ""

    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v33}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    iput-object v13, v2, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_4
    const-string v0, "portal_key"

    .line 56
    :try_start_d
    iget-object v4, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, v1, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    iput-object v0, v2, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 58
    invoke-static {v2, v1}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;Lccsancom/san/cpi/xz/AdXzParams;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x2c
        0xb
        0xd
        0x3
    .end array-data
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 3

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;

    const-string v2, "cpiupdate"

    invoke-direct {v1, v2, p1, p0}, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzParams;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 7

    .line 56
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    iget v0, p0, Lccsansan/m/getDownloadedList;->execute:I

    invoke-virtual {p1}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p1

    const/16 v2, 0x35

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    throw p0

    .line 38
    :cond_0
    iget v0, p0, Lccsansan/m/getDownloadedList;->execute:I

    invoke-virtual {p1}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 56
    :goto_0
    sget p1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p1

    iput p1, p0, Lccsansan/m/getDownloadedList;->execute:I

    .line 56
    sget p1, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 38
    const/16 p1, 0x61

    goto :goto_1

    :cond_2
    const/16 p1, 0x43

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 41
    :cond_3
    :pswitch_0
    iget-object p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 42
    iget-object p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    .line 43
    iget-object p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mSubPortal:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    .line 44
    iget-boolean p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iput-boolean p1, p0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    .line 45
    iget-wide p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    iput-wide p1, p0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 46
    iget-object p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 47
    iget p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iput p1, p0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    const/4 p1, 0x4

    new-array p2, p1, [I

    fill-array-data p2, :array_0

    const-string v0, "\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001"

    const/4 v2, 0x1

    invoke-static {p2, v0, v2}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 49
    const-wide/16 v3, 0x0

    invoke-virtual {p0, p2, v3, v4}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-nez p2, :cond_4

    .line 38
    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-static {p1, v0, v2}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    nop

    .line 53
    :pswitch_1
    iget-object p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    const-string p2, "portal_key"

    invoke-virtual {p0, p2, p1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 56
    sget p1, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    invoke-static {p0, p3}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;)V

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x56
        0xd
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x56
        0xd
        0x0
        0x0
    .end array-data
.end method

.method static synthetic unifiedDownload(Lccsansan/m/removeDownloadListener;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;Lccsancom/san/cpi/xz/AdXzParams;)V

    sget p0, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method
