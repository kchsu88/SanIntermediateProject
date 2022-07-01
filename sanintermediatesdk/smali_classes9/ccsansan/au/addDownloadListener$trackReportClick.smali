.class Lccsansan/au/addDownloadListener$trackReportClick;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/au/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "trackReportClick"
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static deleteDownItem:C

.field private static getDownloadedList:I

.field private static getDownloadingRecordByUrl:I

.field private static unifiedDownload:I


# instance fields
.field public addDownloadListener:J

.field public getDownloadingList:Ljava/lang/String;

.field public removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadedList:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsansan/au/addDownloadListener$trackReportClick;->IncentiveDownloadUtils:J

    const v1, 0xffd2

    sput-char v1, Lccsansan/au/addDownloadListener$trackReportClick;->deleteDownItem:C

    sput v0, Lccsansan/au/addDownloadListener$trackReportClick;->unifiedDownload:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    .line 3
    const/4 p1, 0x1

    iput p1, p0, Lccsansan/au/addDownloadListener$trackReportClick;->removeDownloadListener:I

    .line 4
    iput-wide p2, p0, Lccsansan/au/addDownloadListener$trackReportClick;->addDownloadListener:J

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsansan/au/addDownloadListener$trackReportClick;->IncentiveDownloadUtils:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/au/addDownloadListener$trackReportClick;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/au/addDownloadListener$trackReportClick;->deleteDownItem:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
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
.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xaa41

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const v2, -0x5712d91a

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    sub-int/2addr v2, v3

    const-string v3, "\u2a35\u7212\ubd1f\u5c1c\uc26f\ufc49\u6200\ud078\ueda3\ue112\ubf14\ub20d\ud62b\uf7d2\uf8b3\u6bd5\u754e\u46de\uad02\u5ac1\u93a2\ub83d\u9f7a\ubceb\u80c1\u0563\u61ec\u6bd5\udb4c"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ue6e3\ued26\u42a8\ud1aa"

    invoke-static {v3, v4, v1, v2, v5}, Lccsansan/au/addDownloadListener$trackReportClick;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/au/addDownloadListener$trackReportClick;->addDownloadListener:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", numberOfRetry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/au/addDownloadListener$trackReportClick;->removeDownloadListener:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v1, 0x33

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v0

    :goto_0
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
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method
