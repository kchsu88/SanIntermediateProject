.class public Lccsancom/san/proaz/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:I

.field public static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    invoke-static {}, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/proaz/deleteDownItem;->IncentiveDownloadUtils:[B

    const/16 v2, 0xd1

    sput v2, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload:I

    sget v2, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

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
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
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

    :array_0
    .array-data 1
        0x6at
        0x74t
        0x5at
        -0x48t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 57
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;

    invoke-direct {v1, p1, p0}, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(BSS)Ljava/lang/String;
    .locals 8

    mul-int/lit8 p2, p2, 0x16

    add-int/lit8 p2, p2, 0x4

    sget-object v0, Lccsancom/san/proaz/deleteDownItem;->IncentiveDownloadUtils:[B

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x11

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x2

    if-nez v0, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x5d

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    sget v3, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v5, v3, 0x39

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_0
    move-object v3, v1

    const/4 v5, 0x0

    move-object v1, v0

    goto :goto_5

    :goto_1
    const/16 v5, 0x3d

    goto :goto_2

    :cond_1
    const/16 v5, 0x44

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/16 v5, 0x52

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr v3, v2

    move-object v3, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    :goto_4
    add-int/lit8 p2, p2, 0x1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x8

    :goto_5
    int-to-byte v0, p1

    aput-byte v0, v3, v5

    add-int/lit8 v0, v5, 0x1

    if-ne v5, p0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr p1, v2

    return-object p0

    :cond_2
    aget-byte v5, v1, p2

    move v7, v5

    move v5, v0

    move v0, v7

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/p/getDownloadedList;",
            ">;"
        }
    .end annotation

    .line 10
    nop

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    sget-object v2, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v1, v2, p0}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 10
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_5

    :pswitch_0
    sget v3, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 10
    sget p0, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 10
    :goto_2
    nop

    .line 6
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/xz/base/XzRecord;

    .line 7
    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v4

    invoke-static {v4}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_4

    .line 10
    :pswitch_1
    return-object v0

    :goto_4
    sget v5, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v5, v5, 0x35

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    const-string v6, "apk_md5"

    if-eqz v5, :cond_5

    .line 9
    invoke-static {v3}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 9
    :cond_5
    invoke-static {v3}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const-wide v0, 0x73926945a47346e2L    # 5.149190716220942E248

    sput-wide v0, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList:J

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 33
    nop

    .line 30
    :try_start_0
    check-cast p0, Lccsancom/san/xz/base/XzRecord;

    .line 31
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getCookie()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 32
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "md5"

    .line 33
    invoke-virtual {v0, p0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static removeDownloadListener(Lccsansan/p/getDownloadedList;)Z
    .locals 7

    .line 29
    sget v0, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p0, :cond_1

    goto :goto_1

    .line 29
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    const/16 v0, 0x29

    goto :goto_2

    :cond_1
    const/16 v0, 0x38

    :goto_2
    packed-switch v0, :pswitch_data_1

    :cond_2
    goto :goto_4

    :goto_3
    :pswitch_1
    sget p0, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return v2

    .line 13
    :goto_4
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    const-string v5, "#isAppShouldShow = false, "

    const-string v6, "\u46b2\u1aed\ufe77\u53f8\u3779\u88e7\u6c65\uc1e6\ua564\u06ce\uda6e\ubfce\u134a\uf4da\u4858\u2ddd\u8176\u62ce\uc65c\u9bc4\u7f6e\ud0c6\ub430\u09a9\ued3f\u4ea5"

    if-eqz v3, :cond_3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p0

    rsub-int p0, p0, 0xf6b

    const-string v1, "\u46c2\u49e1\u5855\u68d0\u7b6e\u0b9c\u1a0e\u2d7c\u3dce\ucc40\udca0\uef17\uff83\u8ee9"

    invoke-static {v1, p0}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    rsub-int v0, v0, 0x5c7d

    invoke-static {v6, v0}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 19
    :cond_3
    invoke-static {v0}, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)I

    move-result v0

    .line 20
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadStatusByUrl()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has showed count = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxShowCount oneApp = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    add-int/lit16 v0, v0, 0x5c7d

    invoke-static {v6, v0}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 26
    :cond_4
    invoke-static {}, Lccsansan/bt/getDownloadingList;->removeDownloadListener()I

    move-result p0

    .line 27
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadedRecordByUrl()I

    move-result v0

    if-lt p0, v0, :cond_5

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#isAppShouldShow = false,  all app has showed count today = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxShowCount oneDay = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v2, v2}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit16 v0, v0, 0x5c7d

    invoke-static {v6, v0}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 8

    .line 56
    nop

    .line 0
    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 56
    sget p0, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    goto :goto_1

    .line 56
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
    sget p0, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-object v1

    .line 0
    :cond_1
    :try_start_1
    sget v2, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    add-int/lit8 v3, v2, -0x1

    int-to-byte v3, v3

    int-to-byte v4, v3

    invoke-static {v2, v3, v4}, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    int-to-byte v4, v3

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    int-to-byte v6, v5

    invoke-static {v4, v5, v6}, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener(BSS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadedList()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 41
    array-length v2, p1

    move-object v5, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v5, p1, v3

    .line 42
    invoke-virtual {v5}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 56
    const/16 v7, 0x9

    goto :goto_3

    :cond_2
    const/16 v7, 0x3e

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 44
    add-int/lit8 v3, v3, 0x1

    move-object v5, v6

    goto :goto_2

    :pswitch_1
    invoke-virtual {v5}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    move-object v5, v6

    goto :goto_4

    :cond_3
    const-string p1, ""

    goto :goto_4

    .line 49
    :cond_4
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-eqz v5, :cond_6

    .line 56
    sget v0, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 54
    :cond_5
    iget-object v0, v5, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    .line 55
    iput-object p1, v0, Lccsanandroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->getApplicationIcon(Lccsanandroid/content/pm/ApplicationInfo;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1

    .line 0
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    throw p1

    :cond_7
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;)Lccsansan/p/getDownloadedList;
    .locals 9

    .line 12
    nop

    .line 1
    invoke-static {p0}, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 12
    const/16 v2, 0xa

    goto :goto_1

    :cond_0
    const/16 v2, 0x24

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 6
    goto :goto_3

    .line 12
    :pswitch_0
    sget v2, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/p/getDownloadedList;

    .line 6
    invoke-static {v2}, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener(Lccsansan/p/getDownloadedList;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    goto :goto_5

    .line 6
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 12
    sget v2, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :goto_3
    sget p0, Lccsancom/san/proaz/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/proaz/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    packed-switch v4, :pswitch_data_2

    .line 6
    :pswitch_2
    move-object v2, v3

    :goto_5
    const/16 p0, 0x30

    const-string v1, ""

    invoke-static {v1, p0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p0

    rsub-int p0, p0, 0x5c7c

    const-string v0, "\u46b2\u1aed\ufe77\u53f8\u3779\u88e7\u6c65\uc1e6\ua564\u06ce\uda6e\ubfce\u134a\uf4da\u4858\u2ddd\u8176\u62ce\uc65c\u9bc4\u7f6e\ud0c6\ub430\u09a9\ued3f\u4ea5"

    invoke-static {v0, p0}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v1, "\u46c1\u1c3e\uf3f1\u56a7\u2c4a\u832a\u66f7\u3d91\u9356\u761e\ucdcd\ua08f\u0643\uddf9\ub099\u1667\ued22\u40c0\u27b0\ufd66\u5013\u3795\u8acd\u600f"

    cmp-long v8, v4, v6

    rsub-int v4, v8, 0x5abc

    invoke-static {v1, v4}, Lccsancom/san/proaz/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Lccsansan/p/getDownloadedList;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xa
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
.end method
