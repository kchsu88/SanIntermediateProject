.class final Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I

.field private static unifiedDownload:J


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const-wide v0, -0x5d57b76881b44063L    # -9.956906635294381E-142

    sput-wide v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

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


# virtual methods
.method public execute()V
    .locals 12

    .line 31
    sget v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-static {v0, v2}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    .line 2
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget v2, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadStatusByUrl:I

    invoke-static {v0, v3, v2}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    .line 31
    sget v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3
    :cond_1
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v5, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v7, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v8, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-boolean v9, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    iget v10, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->pause:I

    invoke-static {v4}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v0

    rsub-int v0, v0, 0x48ef

    const-string v3, "\ubff4\uf71c\u2e30\u6524\u9c40\ud35a\u0a6b\u4171\uf881"

    invoke-static {v3, v0}, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v10}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 31
    sget v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget v5, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->trackReportShow:I

    if-lez v5, :cond_6

    .line 31
    sget v6, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v6, v6, 0x39

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v6, v1

    if-eqz v6, :cond_4

    .line 7
    :cond_4
    iget-object v6, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v0, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 31
    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v5, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v7, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v8, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-boolean v9, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    iget v10, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->pause:I

    invoke-static {v4}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x36bb

    const-string v1, "\ubff4\u8948\ud298\u1bd8\u6510\uae56\uf793\uc0e5\u0a21\u5351\u9cbf\ue5fb\u2f2e\u78bd\u41d1\u8b0d\ud45f\u1d85\u66d2\ub013\uf96f"

    invoke-static {v1, v0}, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v10}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    .line 12
    :cond_6
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v3, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v4, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v3, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 31
    const/16 v3, 0x1d

    goto :goto_2

    :cond_7
    const/4 v3, 0x2

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 12
    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    goto :goto_3

    .line 31
    :pswitch_1
    sget v3, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_8

    iget-object v3, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    throw v0

    .line 12
    :cond_8
    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 31
    sget v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 14
    :cond_9
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-static {v0}, Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/p/addDownloadListener$getDownloadingList;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    .line 15
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    goto :goto_4

    .line 17
    :cond_a
    sget-object v2, Lccsansan/m/getDownloadedList$unifiedDownload;->IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    sget-object v3, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    iget-object v4, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-static {v0, v2, v3, v4}, Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    .line 18
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 31
    nop

    .line 21
    :goto_4
    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v2, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v3, "ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v2, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveSDK:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cpiparam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveSDK:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v0, :cond_d

    .line 26
    iget-object v2, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v3, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v5, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget v6, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadStatusByUrl:I

    iget-object v7, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v8, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->deleteDownItem:Ljava/lang/String;

    iget-wide v9, v2, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:J

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 28
    const-string v2, "s2s_track_status"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 31
    sget v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/16 v0, 0x3a

    goto :goto_5

    :cond_c
    const/16 v0, 0x12

    :goto_5
    packed-switch v0, :pswitch_data_2

    :cond_d
    :pswitch_2
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v2, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget v7, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->pause:I

    const/4 v6, 0x1

    const-string v3, "launch_browser"

    invoke-static/range {v2 .. v7}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sget v0, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_2
    .end packed-switch
.end method
