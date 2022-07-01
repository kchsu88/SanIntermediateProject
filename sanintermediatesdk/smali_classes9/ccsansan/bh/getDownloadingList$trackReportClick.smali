.class final Lccsansan/bh/getDownloadingList$trackReportClick;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bh/getDownloadingList$trackReportClick;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bh/getDownloadingList$trackReportClick;->addDownloadListener:I

    const-wide v0, 0x37e108c08969da87L    # 1.564343095422944E-39

    sput-wide v0, Lccsansan/bh/getDownloadingList$trackReportClick;->getDownloadingList:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/getDownloadingList$trackReportClick;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/bh/getDownloadingList$trackReportClick;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
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

    sget-wide v4, Lccsansan/bh/getDownloadingList$trackReportClick;->getDownloadingList:J

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    nop

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$trackReportClick;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int v3, v3, 0x32ed

    const-string v4, "\udaee\ue804\ubf2e\u4234\u1152\u244a\ueb65\ubea3\u4d89\u10a0\u27aa\ueac5"

    invoke-static {v4, v3}, Lccsansan/bh/getDownloadingList$trackReportClick;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$trackReportClick;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v1}, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const v3, 0x9a55

    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/2addr v2, v3

    const-string v3, "\udaee\u40bc\uee5e\u140c\ub3b2\ud942\u4715\ue28b\u084e\ub619\udda1\u7b49\ue114\u0cb8\uaa7e\ud008\u7fbe\ue54f\u0318"

    invoke-static {v3, v2}, Lccsansan/bh/getDownloadingList$trackReportClick;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$trackReportClick;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, ""

    invoke-static {v2}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x745e

    const-string v3, "\udaf4\uaea3\u324e\u87cf\u0b9a\u9f38\u60da\uf478\u780e\ucdae\u5149"

    invoke-static {v3, v2}, Lccsansan/bh/getDownloadingList$trackReportClick;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    sget v0, Lccsansan/bh/getDownloadingList$trackReportClick;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList$trackReportClick;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

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

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method
