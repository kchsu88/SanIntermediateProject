.class public Lccsansan/k/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/k/addDownloadListener$unifiedDownload;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/String; = null

.field private static addDownloadListener:Lccsancom/san/xz/api/IDownloadService; = null

.field private static getDownloadStatusByUrl:I = 0x0

.field private static getDownloadingList:J = 0x0L

.field private static getDownloadingRecordByUrl:I = 0x0

.field private static removeDownloadListener:I = -0x1

.field private static unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/k/addDownloadListener;->getDownloadingList()V

    sget v2, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/k/addDownloadListener$unifiedDownload;Z)Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
    .locals 1

    .line 32
    new-instance v0, Lccsansan/k/addDownloadListener$getDownloadingList;

    invoke-direct {v0, p1, p2, p0}, Lccsansan/k/addDownloadListener$getDownloadingList;-><init>(Lccsansan/k/addDownloadListener$unifiedDownload;ZLjava/lang/String;)V

    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils()Lccsancom/san/xz/api/IDownloadService;
    .locals 3

    .line 1
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    sget-object v1, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public static IncentiveDownloadUtils(Lccsansan/k/addDownloadListener$unifiedDownload;Z)V
    .locals 2

    .line 31
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-static {v1, p0, p1}, Lccsansan/k/addDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsansan/k/addDownloadListener$unifiedDownload;Z)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "ad"

    invoke-static {p0, v0}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method public static addDownloadListener()I
    .locals 5

    .line 10
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 6
    sget v0, Lccsansan/k/addDownloadListener;->removeDownloadListener:I

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 10
    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :cond_1
    sget v0, Lccsansan/k/addDownloadListener;->removeDownloadListener:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 7
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)I

    move-result v0

    sput v0, Lccsansan/k/addDownloadListener;->removeDownloadListener:I

    .line 10
    :pswitch_0
    sget v0, Lccsansan/k/addDownloadListener;->removeDownloadListener:I

    .line 6
    sget v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/2addr v1, v3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    .line 10
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 7
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 6
    invoke-static {p0, p1}, Lccsansan/f/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 7
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingList(I)I

    move-result p0

    sget p1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/16 p1, 0x26

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 20
    nop

    .line 8
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 11
    new-instance v0, Lccsancom/san/xz/base/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/xz/base/getDownloadingList;-><init>()V

    .line 12
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p5, "file_size"

    invoke-virtual {v0, p5, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    const-string p2, "package_name"

    invoke-virtual {v0, p2, p3}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    new-instance p2, Lccsansan/ae/unifiedDownload;

    sget-object p3, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-direct {p2, p3, v0}, Lccsansan/ae/unifiedDownload;-><init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V

    .line 19
    new-instance p3, Lccsancom/san/xz/base/IncentiveDownloadUtils;

    const-wide/16 p5, 0x0

    invoke-static {p5, p6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p5

    const-string p6, "\uc73e\uc75f\u1448\u3b40\ufaf1\u29b6\u6f92\u054f\u2a48\uebfc\ucc63\u1aa1\u364b\u1961\ud8ec\u89aa\u0bb9\u2755\u0863\uc9d7\u7cab\u587e\u7f53"

    invoke-static {p6, p5}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5, p1}, Lccsancom/san/xz/base/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3, p4}, Lccsansan/f/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V

    sget p0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;Lccsansan/k/addDownloadListener$unifiedDownload;Z)V
    .locals 2

    .line 27
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 23
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 26
    invoke-static {p0, p1, p2}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/k/addDownloadListener$unifiedDownload;Z)Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    move-result-object p0

    .line 27
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/f/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/api/IDownloadResultListener;)V

    goto :goto_1

    .line 23
    :pswitch_0
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 26
    invoke-static {p0, p1, p2}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/k/addDownloadListener$unifiedDownload;Z)Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    move-result-object p0

    .line 27
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/f/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/api/IDownloadResultListener;)V

    goto :goto_2

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;)Z
    .locals 3

    .line 4
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 4
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    goto :goto_3

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 4
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    goto :goto_1

    :cond_1
    const/16 p0, 0x3e

    :goto_1
    packed-switch p0, :pswitch_data_1

    :goto_2
    goto :goto_4

    :goto_3
    const/16 v0, 0x37

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    :pswitch_1
    const/4 v1, 0x0

    :goto_4
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :catchall_0
    move-exception p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/k/unifiedDownload;",
            ">;"
        }
    .end annotation

    .line 19
    nop

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 9
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    invoke-static {p0}, Lccsansan/cs/unifiedDownload;->fromString(Ljava/lang/String;)Lccsansan/cs/unifiedDownload;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 19
    sget v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    .line 11
    new-instance v2, Lccsansan/k/unifiedDownload;

    invoke-direct {v2}, Lccsansan/k/unifiedDownload;-><init>()V

    .line 12
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsansan/k/unifiedDownload;->unifiedDownload(I)V

    .line 13
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsansan/k/unifiedDownload;->addDownloadListener(J)V

    .line 14
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsansan/k/unifiedDownload;->removeDownloadListener(J)V

    .line 15
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsansan/k/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 19
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 17
    instance-of v5, v1, Lccsansan/ae/unifiedDownload;

    if-eqz v5, :cond_2

    .line 18
    check-cast v1, Lccsansan/ae/unifiedDownload;

    invoke-virtual {v1}, Lccsansan/ae/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsansan/k/unifiedDownload;->unifiedDownload(Ljava/lang/String;)V

    .line 19
    sget v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    :pswitch_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/k/unifiedDownload;
    .locals 7

    .line 22
    nop

    .line 8
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 11
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    const/16 v1, 0x5d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 12
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 22
    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr v0, v1

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 13
    :cond_1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    :cond_2
    :pswitch_0
    if-nez v0, :cond_3

    .line 22
    const/16 p0, 0x2c

    goto :goto_1

    :cond_3
    const/16 p0, 0x52

    :goto_1
    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_1

    .line 18
    new-instance p0, Lccsansan/k/unifiedDownload;

    invoke-direct {p0}, Lccsansan/k/unifiedDownload;-><init>()V

    .line 19
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsansan/k/unifiedDownload;->unifiedDownload(I)V

    .line 20
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lccsansan/k/unifiedDownload;->addDownloadListener(J)V

    .line 21
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lccsansan/k/unifiedDownload;->removeDownloadListener(J)V

    .line 22
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsansan/k/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :pswitch_1
    nop

    .line 22
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    return-object v4

    :goto_2
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_2

    return-object p0

    :pswitch_2
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDownloadingList(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x32

    const/16 v4, 0x1b

    packed-switch v2, :pswitch_data_0

    if-eq p0, v1, :cond_2

    goto :goto_2

    :pswitch_0
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/2addr p0, v4

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x7

    :goto_1
    packed-switch v3, :pswitch_data_1

    return v0

    :pswitch_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    const/16 v3, 0x1b

    :cond_2
    packed-switch v3, :pswitch_data_2

    const/4 p0, -0x1

    return p0

    :pswitch_2
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr p0, v1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)I
    .locals 9

    .line 29
    const-string v0, "\u1584\u15e0\ub387\ua6fe\uedb1\ufb10\uc856\ua28f\ub7e0\ufcb3\u51f5\uc82b\u918c\u84e0\ucfbf\u9ee5\ud909"

    .line 21
    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    const-string v3, "\ue065\ue016\ua6a4\u84a1\ua0ca\u0ef9\udd7e\ub7a7\u95b5\ub1f3\u73b6\u3df9\u84bf\ua6bb\u82e1\ud3af\u2cd2\u95bb\ub7bd\u93e3\u5be3\uea89\uc08d"

    invoke-static {v3, v2}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 29
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v3

    .line 22
    nop

    .line 29
    return v3

    .line 27
    :cond_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 p0, 0x1

    cmp-long v8, v4, v6

    rsub-int/lit8 v4, v8, 0x1

    invoke-static {v0, v4}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 29
    const/16 v4, 0x19

    goto :goto_0

    :cond_1
    const/16 v4, 0x33

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v4, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr v4, v3

    if-nez v4, :cond_2

    const/16 v4, 0x48

    goto :goto_1

    :cond_2
    const/16 v4, 0x36

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    :try_start_1
    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    shl-int/2addr p0, v1

    invoke-static {v0, p0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :goto_2
    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    :pswitch_1
    return v3

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ad"

    invoke-static {p0, v1}, Lccsansan/k/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsancom/san/xz/api/IDownloadService;)Lccsancom/san/xz/api/IDownloadService;
    .locals 2

    .line 2
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sput-object p0, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method public static getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;
    .locals 4

    .line 35
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 35
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 0
    goto :goto_3

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 34
    instance-of v2, p0, Lccsansan/ae/unifiedDownload;

    if-eqz v2, :cond_1

    .line 35
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    nop

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    check-cast p0, Lccsansan/ae/unifiedDownload;

    invoke-virtual {p0}, Lccsansan/ae/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_2
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/16 p0, 0x53

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object v3

    :goto_3
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    :try_start_1
    array-length p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_1
    move-exception p0

    throw p0

    :cond_4
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/k/addDownloadListener;->getDownloadingList:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/k/addDownloadListener;->getDownloadingList:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    :cond_0
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 5
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :pswitch_0
    const-string p0, ""

    return-object p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    const-wide v0, -0xee73507bfaa8442L    # -6.306422617397481E236

    sput-wide v0, Lccsansan/k/addDownloadListener;->getDownloadingList:J

    return-void
.end method

.method public static getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener()Lccsancom/san/xz/api/IDownloadService;
    .locals 3

    .line 1
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    sget-object v1, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public static removeDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 2
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    sget-object v0, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-interface {v0, p0}, Lccsancom/san/xz/api/IDownloadService;->pause(Ljava/lang/String;)V

    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :goto_2
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 5
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 5
    invoke-static {p0, p1}, Lccsansan/f/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget p1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x1c

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 p1, 0x2d

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload()I
    .locals 3

    .line 4
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/k/addDownloadListener;->addDownloadListener()I

    .line 4
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;)I

    move-result v0

    sget v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 6
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    if-eqz v0, :cond_3

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget-object v0, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    goto :goto_1

    :cond_1
    const/16 v0, 0x2b

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 6
    :catchall_0
    move-exception p0

    throw p0

    .line 3
    :goto_2
    :try_start_1
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_2

    .line 1
    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    .line 6
    return-void

    .line 5
    :cond_2
    :try_start_2
    sget-object v0, Lccsansan/k/addDownloadListener;->addDownloadListener:Lccsancom/san/xz/api/IDownloadService;

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/k/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/k/addDownloadListener$IncentiveDownloadUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsansan/k/addDownloadListener$unifiedDownload;)V
    .locals 2

    .line 30
    sget v0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0, v1}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/k/addDownloadListener$unifiedDownload;Z)V

    sget p0, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
