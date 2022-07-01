.class public Lccsansan/au/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/au/addDownloadListener$trackReportClick;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:[B = null

.field public static final addDownloadListener:I = 0x0

.field private static final deleteDownItem:I

.field private static deleteDownList:I = 0x0

.field private static final getDownloadStatusByUrl:J

.field private static getDownloadedList:[C = null

.field private static final getDownloadedRecordByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static getDownloadingCount:J = 0x0L

.field public static getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload; = null

.field private static getDownloadingRecordByUrl:I = 0x0

.field private static final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/au/addDownloadListener$trackReportClick;",
            ">;"
        }
    .end annotation
.end field

.field private static resume:I = 0x0

.field private static unifiedDownload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    invoke-static {}, Lccsansan/au/addDownloadListener;->getDownloadStatusByUrl()V

    invoke-static {}, Lccsansan/au/addDownloadListener;->deleteDownItem()V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    .line 2
    const/4 v0, 0x2

    invoke-static {v0}, Lccsansan/bt/getDownloadedRecordByUrl;->getDownloadingList(I)I

    move-result v1

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownItem:I

    const-wide/16 v1, 0x1388

    .line 3
    invoke-static {v1, v2}, Lccsansan/bt/getDownloadedRecordByUrl;->addDownloadListener(J)J

    move-result-wide v1

    sput-wide v1, Lccsansan/au/addDownloadListener;->getDownloadStatusByUrl:J

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lccsansan/au/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/Map;

    sget v1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v1, v0

    return-void
.end method

.method static synthetic IncentiveDownloadUtils()Ljava/util/Map;
    .locals 3

    .line 3
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/Map;

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method static synthetic IncentiveDownloadUtils(Ljava/lang/String;J)Lccsansan/au/addDownloadListener$trackReportClick;
    .locals 2

    .line 17
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Ljava/lang/String;J)Lccsansan/au/addDownloadListener$trackReportClick;

    move-result-object p0

    sget p1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .line 8
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    invoke-static/range {p0 .. p9}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x30

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0xb

    goto :goto_0

    :cond_1
    const/16 p0, 0x57

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x41

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;[Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 198
    nop

    .line 181
    array-length v0, p4

    .line 198
    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    .line 181
    :goto_0
    if-ge v3, v0, :cond_0

    .line 198
    const/16 v4, 0x47

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 181
    aget-object v4, p4, v3

    .line 182
    aget-object v5, p4, p6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x39

    if-eqz v5, :cond_3

    goto :goto_4

    .line 191
    :pswitch_0
    iput-object v2, p3, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    .line 192
    iput v1, p3, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 193
    array-length p4, p4

    if-ne p7, p4, :cond_1

    .line 194
    invoke-static {p1, p2}, Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p3}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 198
    iget-object v2, p3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v3, p3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v5, "success"

    move-object v4, p2

    move-object v6, p5

    invoke-static/range {v2 .. v7}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    const/16 v5, 0x4d

    goto :goto_5

    :cond_3
    const/16 v5, 0x39

    :goto_5
    packed-switch v5, :pswitch_data_2

    .line 185
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_6

    .line 198
    :pswitch_2
    sget v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v4, v4, 0x67

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 182
    :cond_4
    goto :goto_7

    .line 185
    :goto_6
    move-object v2, v4

    goto :goto_7

    .line 188
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    sget v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v4, v4, 0x3f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    .line 188
    :cond_6
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 198
    sget v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/2addr v4, v6

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_7

    :cond_7
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4d
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 134
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v10, Lccsansan/au/addDownloadListener$getDownloadingList;

    const-string v2, "CPI.Client_Track"

    move-object v1, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lccsansan/au/addDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;ILjava/lang/String;)V
    .locals 2

    .line 13
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;ILjava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x22

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 7

    .line 44
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x48

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x11

    invoke-static {v2}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    const-string v5, "\u000f\u0001\u0004\ufff2\u0005\u0003\u000f\u0012\u0004\uffcd\uffde\u0015\u0012\u000c\uffc0\uffdd\uffc0\u0012\u0005\r\u000f\u0016\u0005\ufff2\u0005\u0014\u0012\u0019\uffe4\u000f\u0017\u000e\u000c"

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v4, v2}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v6, v6}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x14

    invoke-static {v1}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    invoke-static {v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x71

    const-string v5, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    invoke-static {v5, v2, v3, v4, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/au/addDownloadListener$trackReportClick;

    .line 43
    iget-object v2, v1, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    const/16 v2, 0x24

    goto :goto_3

    :cond_2
    const/16 v2, 0x19

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 38
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    .line 44
    const/16 p0, 0x62

    goto :goto_4

    :cond_3
    const/4 p0, 0x3

    :goto_4
    packed-switch p0, :pswitch_data_2

    sget-object p0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_2
    sget-object p0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_5
    const/16 p0, 0x25

    :try_start_1
    div-int/2addr p0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 38
    :catchall_1
    move-exception p0

    throw p0

    .line 44
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadedList(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x46

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 14
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static/range {p0 .. p5}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;JJ)V

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x48

    goto :goto_1

    :cond_1
    const/16 p0, 0x39

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_1
    array-length p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    .line 299
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 271
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 299
    const/16 v2, 0x23

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 274
    :cond_2
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    const-string v2, "unknow"

    :cond_3
    const-string v7, ""

    if-eqz v0, :cond_4

    .line 299
    const/16 v3, 0x1f

    goto :goto_2

    :cond_4
    const/16 v3, 0x3b

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 282
    iget-object v3, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 283
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v4, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v3

    move-object v6, v3

    goto :goto_3

    .line 285
    :cond_5
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    invoke-virtual {v3, p1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v3

    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_6

    .line 299
    const/16 v3, 0x57

    goto :goto_4

    :cond_6
    const/16 v3, 0x51

    :goto_4
    packed-switch v3, :pswitch_data_2

    .line 285
    const/4 v5, 0x0

    .line 289
    move-object v3, v2

    move-object v4, p0

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2
    const/4 v5, 0x0

    .line 291
    move-object v3, v2

    move-object v4, p0

    move-object v6, p1

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lccsansan/bn/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    nop

    .line 291
    :goto_5
    if-eqz v0, :cond_7

    .line 295
    sget-object p5, Lccsansan/m/getDownloadedList$unifiedDownload;->XZ_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {p5}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p5

    iput p5, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 296
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p5

    invoke-virtual {p5, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 299
    sget p5, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p5, p5, 0x7b

    rem-int/lit16 v0, p5, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p5, p5, 0x2

    if-nez p5, :cond_7

    .line 298
    :cond_7
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const-string v0, ""

    if-nez p5, :cond_9

    const-string p5, "/"

    invoke-virtual {p2, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 299
    goto :goto_6

    .line 298
    :cond_8
    invoke-virtual {p2, p5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_7

    :cond_9
    :goto_6
    move-object v5, v0

    :goto_7
    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lccsansan/au/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x14

    const/4 p2, 0x0

    invoke-static {p2}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result p3

    const/4 p4, 0x0

    const-string p5, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    cmpl-float p3, p3, p4

    sub-int/2addr v1, p3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    rsub-int/lit8 p3, p3, 0x71

    invoke-static {p5, p0, p1, v1, p3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x10

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    rsub-int p3, p3, 0x3a72

    int-to-char p3, p3

    invoke-static {p2, p2}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p2

    add-int/lit8 p2, p2, 0xf

    invoke-static {p1, p3, p2}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Z)Z
    .locals 3

    .line 10
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean p0, Lccsansan/au/addDownloadListener;->unifiedDownload:Z

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto :goto_2

    :cond_1
    const/16 v0, 0x55

    :goto_2
    packed-switch v0, :pswitch_data_1

    return p0

    :pswitch_1
    const/16 v0, 0x15

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;
    .locals 2

    .line 204
    nop

    .line 199
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p0}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 200
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p0, v1, :cond_0

    .line 204
    const/16 p0, 0x28

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 200
    :cond_1
    :try_start_0
    const-string p0, "searchBoxJavaBridge_"

    .line 202
    invoke-virtual {v0, p0}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p0, "accessibility"

    .line 203
    invoke-virtual {v0, p0}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p0, "accessibilityTraversal"

    .line 204
    invoke-virtual {v0, p0}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_1
    :pswitch_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 2099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 2102
    :try_start_0
    new-array v1, p2, [C

    .line 2105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 2107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/au/addDownloadListener;->getDownloadedList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/au/addDownloadListener;->getDownloadingCount:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 2105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 2113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static synthetic addDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 2

    .line 5
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    const/4 v1, 0x0

    invoke-static/range {p0 .. p7}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x28

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 4

    .line 9
    nop

    .line 1
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/au/addDownloadListener$getDownloadedList;

    invoke-direct {v1, p0, p1}, Lccsansan/au/addDownloadListener$getDownloadedList;-><init>(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 9
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static/range {p0 .. p6}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x7

    goto :goto_0

    :cond_1
    const/16 p0, 0x4a

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x1e

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 121
    nop

    .line 103
    invoke-static/range {p4 .. p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/16 v2, 0x1d

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    :goto_0
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_1

    .line 103
    :pswitch_0
    invoke-static/range {p4 .. p4}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    :goto_2
    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 121
    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 103
    goto :goto_5

    .line 121
    :pswitch_1
    sget v2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_4

    :cond_3
    const/16 v2, 0x36

    :goto_4
    packed-switch v2, :pswitch_data_2

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_7

    :goto_5
    sget v2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/16 v2, 0x33

    goto :goto_6

    :cond_4
    const/16 v2, 0x48

    :goto_6
    packed-switch v2, :pswitch_data_3

    .line 105
    :pswitch_3
    const/4 v2, 0x0

    :goto_7
    iget v4, v0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const/4 v6, 0x3

    const-string v7, "-1"

    const-string v8, "s2s_track_status"

    if-eq v4, v6, :cond_9

    const/4 v4, -0x3

    invoke-virtual {v0, v8, v4}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    .line 121
    sget v6, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v6, v6, 0x67

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 105
    :cond_5
    if-nez v2, :cond_6

    goto :goto_9

    .line 111
    :cond_6
    invoke-virtual {v0, v8, v4}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_a

    if-nez v2, :cond_7

    .line 121
    const/4 v3, 0x0

    goto :goto_8

    :cond_7
    nop

    :goto_8
    packed-switch v3, :pswitch_data_4

    goto :goto_a

    :pswitch_4
    sget v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    .line 112
    :cond_8
    iget-object v10, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v11, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v12, v1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v13, v1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v15, v1, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/16 v18, 0x0

    move/from16 v9, p3

    move-object/from16 v14, p4

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v18}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 114
    invoke-virtual {v0, v8, v7}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 116
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_a

    .line 117
    :cond_9
    :goto_9
    iget-object v10, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v11, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v12, v1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v13, v1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v15, v1, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/16 v18, 0x1

    move/from16 v9, p3

    move-object/from16 v14, p4

    move-wide/from16 v16, v1

    invoke-static/range {v9 .. v18}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 119
    invoke-virtual {v0, v8, v7}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 121
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :cond_a
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 12
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x62

    goto :goto_0

    :cond_1
    const/16 p0, 0x38

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0xc

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 235
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->trackWithUA--baseUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x14

    invoke-static {v2}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x71

    const-string v5, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const/4 v6, 0x1

    invoke-static {v5, v6, v3, v4, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lccsansan/cy/pause;->XZ:Lccsansan/cy/pause;

    invoke-static {p0, p2, v0, p3}, Lccsansan/cy/deleteDownList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 235
    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 228
    if-eqz p1, :cond_2

    goto :goto_1

    .line 231
    :pswitch_0
    if-eqz p1, :cond_3

    .line 235
    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x3

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    :cond_1
    invoke-interface {p1, p0}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_3

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 231
    invoke-interface {p1, p0}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    .line 235
    :cond_3
    :goto_3
    :pswitch_1
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 9

    .line 102
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    const/16 v3, 0x15

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    throw p0

    .line 97
    :cond_1
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_1

    :pswitch_0
    goto :goto_2

    .line 102
    :goto_1
    :pswitch_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v8, Lccsansan/au/addDownloadListener$pause;

    const-wide/16 v2, 0x64

    move-object v1, v8

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lccsansan/au/addDownloadListener$pause;-><init>(JLccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    invoke-virtual {v0, v8}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    .line 98
    :goto_2
    invoke-static {p0, p1, p2, p3}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    .line 97
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    .line 102
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener()Z
    .locals 3

    .line 9
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-boolean v0, Lccsansan/au/addDownloadListener;->unifiedDownload:Z

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x4b

    goto :goto_0

    :cond_1
    const/16 v1, 0x32

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z
    .locals 2

    .line 2
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    invoke-static/range {p0 .. p8}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method private static deleteDownItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    nop

    .line 32
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 32
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :pswitch_0
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const/4 p0, 0x0

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p0

    :goto_2
    :try_start_0
    array-length p1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    .line 35
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v2, "pkg"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    add-int/lit16 p0, p0, 0xb9

    const v2, 0x9737

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/2addr v3, v2

    int-to-char v2, v3

    invoke-static {v4, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {p0, v2, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static deleteDownItem()V
    .locals 2

    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v0, 0x77

    sput v0, Lccsansan/au/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :array_0
    .array-data 1
        0x61t
        -0x20t
        0x7ct
        0x10t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method static getDownloadStatusByUrl()V
    .locals 2

    const/16 v0, 0xc

    sput v0, Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl:I

    const/16 v0, 0x10b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/au/addDownloadListener;->getDownloadedList:[C

    const-wide v0, 0x52676f4c89cede24L    # 9.323721199442664E88

    sput-wide v0, Lccsansan/au/addDownloadListener;->getDownloadingCount:J

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        -0x21b5s
        -0x43c1s
        -0x65fes
        0x78fcs
        0x56dbs
        0x34b9s
        0x1298s
        -0xf00s
        -0x30c9s
        -0x52e3s
        -0x7411s
        0x69d3s
        0x47b1s
        0x258bs
        0x46fs
        0x3a16s
        -0x1bc7s
        -0x79b3s
        -0x5f90s
        0x428es
        0x6ca9s
        0xecbs
        0x28eas
        -0x348es
        -0xab0s
        -0x6885s
        -0x4e69s
        0x53aes
        0x7dc3s
        0x1fees
        -0x6498s
        0x4547s
        0x2733s
        0x10es
        -0x1c10s
        -0x3229s
        -0x504bs
        -0x766cs
        0x6a0cs
        0x542es
        0x360ds
        0x10ecs
        -0xd27s
        -0x2308s
        -0x417cs
        -0x608fs
        0x7938s
        0x5b00s
        0x5bes
        -0x1880s
        0x72s
        -0x21bfs
        -0x43c4s
        -0x65e7s
        0x78e2s
        0x56das
        0x34f8s
        0x1295s
        -0xeb2s
        -0x30c9s
        -0x52e4s
        -0x7413s
        0x69dcs
        0x47b8s
        0x25b9s
        0x46cs
        -0x1dd0s
        -0x3fbcs
        -0x6112s
        0x7cc3s
        0x5aa2s
        0x38d4s
        0x1779s
        -0xab4s
        -0x2cf0s
        -0x4e33s
        -0x7024s
        0x6da9s
        0x4b9ds
        0x2a34s
        0x805s
        -0x1984s
        -0x3b12s
        -0x5d2fs
        -0x7f5cs
        0x5e80s
        0x3d30s
        0x3ae2s
        -0x1b33s
        -0x7976s
        -0x5f7bs
        0x4261s
        0x6c5cs
        0xe32s
        0x2815s
        -0x3439s
        -0xa5as
        -0x6853s
        -0x4e9bs
        0x535bs
        0x7d22s
        0x1f12s
        0x3effs
        -0x274es
        -0x579s
        -0x5b96s
        0x460as
        0x606cs
        0x252s
        0x2dfas
        -0x302bs
        -0x166fs
        -0x7494s
        -0x4abes
        0x5725s
        0x7117s
        0x10f6s
        0x32ebs
        -0x2358s
        -0x196s
        -0x67fes
        -0x458ds
        0x644as
        0x6fs
        -0x21b6s
        -0x43f4s
        -0x65fds
        0x78e7s
        0x56das
        0x34b4s
        0x1293s
        -0xebfs
        -0x30e0s
        -0x52c6s
        -0x7417s
        0x69c3s
        0x47a1s
        0x2594s
        0x468s
        -0x1d86s
        -0x3fbcs
        0x4e62s
        -0x6fbas
        -0xdd6s
        -0x2bf2s
        0x36b2s
        0x18bcs
        0x7ae7s
        0x5cf7s
        -0x4100s
        -0x7e84s
        -0x1cb7s
        -0x3a51s
        0x2790s
        0x9fas
        0x6bd3s
        0x4a06s
        -0x5383s
        -0x71b9s
        -0x2f03s
        -0x267bs
        0x7a6s
        0x65c0s
        0x43d5s
        -0x5eees
        -0x70c3s
        -0x12b7s
        -0x348cs
        0x28aas
        0x16cds
        0x74efs
        0x520es
        0x61s
        -0x21afs
        -0x43c4s
        -0x65fds
        0x78f4s
        0x56dbs
        0x34afs
        0x1292s
        -0xeb4s
        -0x30d5s
        -0x52f7s
        -0x7418s
        -0x68aes
        0x497ds
        0x2b09s
        0xd34s
        -0x1036s
        -0x3e13s
        -0x5c71s
        -0x7a52s
        0x6649s
        0x5807s
        0x3a2cs
        0x1cd6s
        0x140es
        -0x35dfs
        -0x57abs
        -0x7198s
        0x6c96s
        0x42b1s
        0x20d3s
        0x6f2s
        -0x1aebs
        -0x24a6s
        -0x4685s
        -0x606as
        0x7dbfs
        0x733as
        -0x52f7s
        -0x308cs
        -0x16aas
        0xba1s
        0x25aes
        0x47f5s
        0x61c4s
        -0x7df9s
        -0x4382s
        -0x21acs
        -0x780s
        0x1a97s
        0x34ebs
        0x56des
        0x7738s
        -0x6e99s
        -0x4cb3s
        -0x125cs
        0xfa7s
        0x29e8s
        0x4bd5s
        0x647ds
        -0x79b6s
        -0x5fb4s
        -0x3d5ds
        -0x369s
        0x1eeas
        0x38d4s
        0x5933s
        0x7b11s
        -0x6a90s
        -0x4863s
        -0x2e62s
        -0xc14s
        0x2d9es
        0x3adcs
        -0x1b11s
        -0x796es
        -0x5f50s
        0x4247s
        0x6c5es
        0xe19s
        0x2825s
        -0x3420s
        -0xa7as
        -0x6857s
        -0x4ebds
        0x537as
        0x7d57s
        0x1f68s
        0x3ec7s
        -0x2764s
        -0x55as
        -0x5bfas
        0x463fs
        0x605es
    .end array-data
.end method

.method private static getDownloadStatusByUrl(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 130
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    const/4 v11, 0x2

    rem-int/2addr v1, v11

    if-nez v1, :cond_0

    .line 1
    iget-object v1, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 1
    :cond_0
    iget-object v1, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :goto_0
    return-void

    .line 5
    :cond_1
    iget-object v1, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ".apk"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v3, :cond_5

    .line 28
    sget v3, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v3, v3, 0x2b

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v3, v11

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x2f

    :try_start_1
    div-int/2addr v5, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 9
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :pswitch_0
    invoke-static {v2}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    goto :goto_4

    .line 11
    :cond_5
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 11
    nop

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v1, v11

    if-nez v1, :cond_7

    .line 28
    const/16 v1, 0x49

    goto :goto_3

    :cond_7
    const/16 v1, 0x34

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 1
    goto :goto_4

    .line 130
    :pswitch_1
    goto :goto_4

    .line 17
    :cond_8
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_5

    .line 9
    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 17
    :goto_5
    invoke-static {}, Lccsansan/au/addDownloadListener;->removeDownloadListener()V

    if-eqz v1, :cond_a

    .line 28
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    const/4 v1, 0x1

    :goto_6
    packed-switch v1, :pswitch_data_3

    .line 20
    iget-object v1, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsansan/au/addDownloadListener;->getDownloadedList(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v3, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v4, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v5, v10, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v6, v10, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    iget-boolean v8, v10, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget-object v9, v10, Lccsancom/san/cpi/xz/AdXzParams;->mCallback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z

    .line 22
    iget-object v1, v10, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v1, :cond_b

    goto :goto_7

    .line 56
    :pswitch_3
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v2

    new-instance v3, Lccsansan/au/addDownloadListener$unifiedDownload;

    invoke-direct {v3, v10, v1, v0}, Lccsansan/au/addDownloadListener$unifiedDownload;-><init>(Lccsancom/san/cpi/xz/AdXzParams;Ljava/lang/String;Lccsanandroid/content/Context;)V

    invoke-virtual {v2, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto/16 :goto_11

    .line 23
    :goto_7
    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-interface {v1, v12, v2}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 26
    :cond_b
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v3, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 130
    sget v2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v2, v11

    if-eqz v2, :cond_c

    .line 27
    :cond_c
    iget v2, v1, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v2, v11, :cond_d

    .line 28
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    :goto_8
    packed-switch v2, :pswitch_data_4

    :pswitch_4
    goto/16 :goto_11

    .line 1
    :pswitch_5
    sget v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v2, v11

    if-nez v2, :cond_e

    .line 28
    const/16 v2, 0xb

    goto :goto_9

    :cond_e
    const/16 v2, 0x1a

    :goto_9
    packed-switch v2, :pswitch_data_5

    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_b

    :pswitch_6
    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_a

    :cond_f
    const/4 v2, 0x1

    :goto_a
    packed-switch v2, :pswitch_data_6

    goto :goto_c

    :goto_b
    const/16 v3, 0xa

    :try_start_2
    div-int/2addr v3, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_10

    :pswitch_7
    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    goto :goto_d

    :cond_10
    :goto_c
    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    .line 130
    nop

    .line 28
    :goto_d
    const/4 v3, -0x2

    if-ne v2, v3, :cond_11

    .line 130
    const/4 v2, 0x1

    goto :goto_e

    .line 28
    :cond_11
    const/4 v2, 0x0

    .line 30
    :goto_e
    iget v3, v1, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const/4 v4, 0x3

    const-string v5, "-1"

    const-string v6, "s2s_track_status"

    if-eq v3, v4, :cond_14

    const/4 v3, -0x3

    invoke-virtual {v1, v6, v3}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_12

    if-nez v2, :cond_12

    goto :goto_10

    .line 36
    :cond_12
    invoke-virtual {v1, v6, v3}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    if-nez v2, :cond_13

    .line 28
    const/4 v12, 0x0

    goto :goto_f

    :cond_13
    nop

    :goto_f
    packed-switch v12, :pswitch_data_7

    .line 37
    iget-object v14, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v15, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v3, v10, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v4, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v7, v10, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v8, v10, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v13, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    invoke-static/range {v13 .. v22}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 39
    invoke-virtual {v1, v6, v5}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 41
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_11

    .line 42
    :cond_14
    :goto_10
    iget-object v12, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v13, v10, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v14, v10, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v15, v10, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v2, v10, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v3, v10, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v7, v10, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v11, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v7

    invoke-static/range {v11 .. v20}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 44
    invoke-virtual {v1, v6, v5}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 46
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_11

    .line 1
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 130
    :cond_15
    :goto_11
    iget-object v1, v10, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    const-string v2, "iaction"

    invoke-static {v2, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v10, v1}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1a
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private static getDownloadStatusByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 26
    nop

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "unknow"

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 17
    :pswitch_0
    goto :goto_3

    .line 13
    :cond_1
    :goto_1
    iget v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v3, Lccsansan/m/getDownloadedList$unifiedDownload;->PAUSE_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v3}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v4

    if-ne v1, v4, :cond_2

    return-void

    .line 16
    :cond_2
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 17
    :goto_2
    invoke-virtual {v3}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 24
    :goto_3
    const-string v1, "user_pause"

    invoke-static {v2, p0, p1, v1}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 26
    const/16 p0, 0x51

    goto :goto_4

    :cond_4
    const/16 p0, 0x17

    :goto_4
    packed-switch p0, :pswitch_data_1

    :goto_5
    goto :goto_6

    :pswitch_1
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_5

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadedList(Ljava/lang/String;)I
    .locals 7

    .line 145
    nop

    .line 139
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x11

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 139
    :pswitch_0
    sget-object v0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_6

    .line 143
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 144
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 145
    sget v3, Lccsansan/au/addDownloadListener;->resume:I

    add-int/2addr v3, v1

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    goto :goto_2

    :pswitch_2
    return v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/au/addDownloadListener$trackReportClick;

    .line 144
    iget-object v4, v3, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    const/16 v4, 0x4c

    goto :goto_3

    :cond_3
    const/16 v4, 0x53

    :goto_3
    packed-switch v4, :pswitch_data_2

    goto :goto_5

    .line 145
    :catchall_0
    move-exception p0

    throw p0

    .line 143
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/au/addDownloadListener$trackReportClick;

    .line 144
    iget-object v6, v3, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    :goto_4
    packed-switch v4, :pswitch_data_3

    .line 145
    :goto_5
    sget-object p0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_6
    nop

    .line 144
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    .line 145
    return v2

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadedList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 136
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    rsub-int v1, v1, 0xac

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xc

    invoke-static {v1, v2, v4}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 136
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_4

    :pswitch_0
    sget p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 131
    :cond_2
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 136
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    .line 134
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    new-instance p1, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "ad_delete_count"

    invoke-direct {p1, v2, v3}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, p0, v0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, p0, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p0, 0x3b

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList()I
    .locals 3

    .line 3
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method static synthetic getDownloadingList(Ljava/lang/String;)I
    .locals 2

    .line 2
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lccsansan/au/addDownloadListener;->getDownloadedList(Ljava/lang/String;)I

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x37

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(SII)Ljava/lang/String;
    .locals 6

    sget-object v0, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils:[B

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x11

    add-int/lit8 p1, p1, 0x4

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

    if-nez v0, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0x19

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v2, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_3

    :goto_1
    sget v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    move-object v2, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    :goto_2
    neg-int p2, p2

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    :goto_3
    int-to-byte p2, p0

    const/4 v5, 0x1

    add-int/2addr p1, v5

    aput-byte p2, v2, v4

    if-ne v4, v0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x1

    :goto_4
    packed-switch v3, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    aget-byte p2, v1, p1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 180
    nop

    .line 135
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v8, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v10

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-->cpiReportInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-string v11, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const-wide/16 v12, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v7, 0x0

    cmp-long v6, v4, v12

    add-int/2addr v6, v14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    cmp-long v16, v4, v12

    add-int/lit8 v4, v16, 0x70

    invoke-static {v11, v15, v3, v6, v4}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_4

    .line 180
    sget v2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v2, v14

    if-eqz v2, :cond_0

    .line 136
    :cond_0
    if-nez v0, :cond_1

    .line 180
    const/16 v0, 0x34

    goto :goto_0

    :cond_1
    const/16 v0, 0x48

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 136
    nop

    .line 140
    iput v7, v10, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 142
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v10}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 143
    iget-object v2, v10, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v3, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v5, "failed"

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    const/16 p5, 0x0

    move v7, v0

    invoke-static/range {v2 .. v7}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v2, v9

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 150
    :pswitch_0
    nop

    .line 152
    iput v7, v10, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    .line 153
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v10}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 180
    goto/16 :goto_7

    .line 146
    :goto_1
    invoke-static/range {p2 .. p3}, Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v0, v14

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_1

    .line 149
    :cond_3
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v10}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-----mPkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    rsub-int v1, v1, 0x8e

    invoke-static/range {p5 .. p5}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x4e4f

    int-to-char v2, v2

    invoke-static/range {p5 .. p5}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x14

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    cmp-long v5, v3, v12

    rsub-int/lit8 v3, v5, 0x72

    invoke-static {v11, v15, v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 136
    :cond_4
    const/4 v2, 0x0

    .line 153
    if-eq v0, v14, :cond_5

    return-void

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    array-length v3, v9

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_9

    aget-object v4, v9, v7

    .line 162
    invoke-static {v4}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    move-object/from16 v5, p7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    :goto_4
    goto :goto_6

    .line 166
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 180
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    :goto_5
    packed-switch v6, :pswitch_data_2

    .line 167
    nop

    .line 169
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 180
    :pswitch_2
    sget v6, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v6, v6, 0x29

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v6, v14

    if-eqz v6, :cond_8

    .line 167
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 173
    :cond_9
    new-instance v3, Lccsansan/m/getDownloadedList;

    invoke-direct {v3}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 175
    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v4

    iput v4, v3, Lccsansan/m/getDownloadedList;->execute:I

    .line 176
    iput-object v8, v3, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 177
    iput-object v1, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    .line 179
    iput v2, v3, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    .line 180
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

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
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;Z)V
    .locals 12

    .line 285
    nop

    .line 275
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 285
    const/16 v1, 0x19

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    goto/16 :goto_5

    :pswitch_0
    sget v1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 275
    :cond_2
    array-length v0, v0

    if-eqz v0, :cond_a

    .line 285
    :goto_2
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 275
    :cond_3
    iget-boolean v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->hasReportedTracker:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 285
    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    const/4 p2, 0x1

    :goto_3
    packed-switch p2, :pswitch_data_1

    .line 278
    iget-object p2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {p2, v1}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    :pswitch_1
    nop

    .line 280
    iput-boolean v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->hasReportedTracker:Z

    .line 282
    iget-object p2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    const-string v0, "ad"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 285
    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x51

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7

    .line 283
    :cond_7
    iget-object v1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object p2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    .line 285
    move-object v5, p1

    goto :goto_4

    .line 283
    :cond_8
    iget-object p1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    move-object v5, p1

    :goto_4
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 285
    :cond_9
    iget-object v11, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v8, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, v11

    invoke-static/range {v6 .. v11}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 73
    nop

    .line 67
    invoke-static {p0, p1, p2}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 70
    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x5b

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 67
    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x7

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    .line 67
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 73
    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x41

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    .line 70
    const/16 p2, 0xd

    goto :goto_1

    :cond_2
    const/16 p2, 0x2b

    :goto_1
    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    packed-switch p2, :pswitch_data_0

    if-nez p0, :cond_3

    :goto_2
    goto :goto_3

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    goto :goto_2

    .line 73
    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance p1, Lccsansan/au/addDownloadListener$getPackageNameByRecord;

    invoke-direct {p1}, Lccsansan/au/addDownloadListener$getPackageNameByRecord;-><init>()V

    invoke-virtual {p0, p1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_3
    return-void

    :cond_4
    nop

    .line 70
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 73
    :pswitch_1
    return-void

    .line 70
    :goto_5
    const/16 p0, 0x3a

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 266
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int v1, v1, 0xd2

    const/4 v8, 0x0

    invoke-static {v8}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int v2, v2, 0x7348

    int-to-char v2, v2

    invoke-static {v8, v8}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-static {v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x14

    const-string v9, ""

    invoke-static {v9}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x3

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-wide/16 v11, 0x0

    const-string v13, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const/4 v14, 0x1

    cmp-long v5, v3, v11

    rsub-int/lit8 v3, v5, 0x72

    invoke-static {v13, v14, v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 235
    iget-object v0, v11, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 266
    const/16 v1, 0xe

    goto :goto_0

    :cond_1
    const/16 v1, 0x23

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object/from16 v20, v0

    goto :goto_2

    .line 235
    :pswitch_0
    nop

    .line 266
    const-string v0, "unknow"

    goto :goto_1

    .line 237
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v9}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v3

    const/4 v12, -0x2

    const-string v4, "\u000c\uffff\uffda\uffc9\u0005\u000c\uffdf\u0000\ufffd\u000b\u0008\n\u0013\u000b\uffe0\u0010\u000e\u000b\u000c\u0001\uffee\u0015\u000e\u0010\u0001\u000e\uffd6\u000b\u0002\n\uffe5\u0010\u000e\u000b\u000c\u0001\uffee\u0005"

    const-string v5, "----extra:"

    cmpl-float v3, v3, v2

    rsub-int/lit8 v3, v3, 0x1a

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    rsub-int/lit8 v15, v15, 0x70

    invoke-static {v4, v14, v1, v3, v15}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v2, v2}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0x14

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    add-int/lit8 v3, v3, 0x72

    invoke-static {v13, v14, v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, v11, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    iget v0, v11, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-nez v0, :cond_2

    .line 266
    const/16 v0, 0x5d

    goto :goto_3

    :cond_2
    const/16 v0, 0x36

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 240
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p2 .. p2}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;)I

    move-result v0

    .line 266
    nop

    .line 240
    :goto_4
    if-ne v0, v12, :cond_4

    return-void

    .line 244
    :cond_4
    iget-object v0, v11, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 245
    iget-object v0, v11, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v5, v7

    goto :goto_5

    :cond_5
    iget-object v0, v11, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    move-object v5, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v5}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    :cond_6
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    packed-switch v0, :pswitch_data_2

    .line 249
    invoke-static/range {p2 .. p2}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    :goto_7
    if-ne v0, v12, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 251
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----reportStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v8, v8}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x3

    const/16 v4, 0x30

    invoke-static {v9, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x72

    invoke-static {v13, v14, v2, v3, v4}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget v0, v11, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const/4 v2, 0x2

    const-string v3, "s2s_track_status"

    if-eq v0, v10, :cond_d

    const/4 v0, -0x3

    invoke-virtual {v11, v3, v0}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x57

    if-eqz v4, :cond_9

    .line 266
    const/16 v4, 0x4d

    goto :goto_9

    :cond_9
    const/16 v4, 0x57

    :goto_9
    packed-switch v4, :pswitch_data_3

    sget v4, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v4, v2

    const/4 v8, -0x1

    if-eqz v4, :cond_b

    const/16 v0, 0x58

    invoke-virtual {v11, v3, v0}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_a

    const/16 v5, 0x62

    :cond_a
    packed-switch v5, :pswitch_data_4

    goto/16 :goto_c

    .line 252
    :cond_b
    invoke-virtual {v11, v3, v0}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_c

    .line 266
    const/4 v0, 0x2

    goto :goto_a

    :cond_c
    const/16 v0, 0x1f

    :goto_a
    packed-switch v0, :pswitch_data_5

    goto/16 :goto_c

    .line 252
    :pswitch_3
    if-nez v1, :cond_10

    .line 253
    :cond_d
    :pswitch_4
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v15

    iget-object v0, v11, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    iget-object v1, v11, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    iget v4, v11, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    iget-object v5, v11, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iget-object v8, v11, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-wide v9, v11, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    add-int/lit16 v13, v13, 0xc5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v16

    shr-int/lit8 v2, v16, 0x10

    rsub-int v2, v2, 0x146a

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v16

    shr-int/lit8 v16, v16, 0x16

    add-int/lit8 v12, v16, 0xd

    invoke-static {v13, v2, v12}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v11, v2, v14}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v26

    const/16 v25, 0x1

    .line 256
    move-object/from16 v16, p0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-wide/from16 v23, v9

    invoke-virtual/range {v15 .. v26}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 260
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 261
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 260
    :cond_e
    const/4 v1, -0x2

    .line 263
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/2addr v0, v14

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 263
    :cond_f
    :goto_b
    nop

    .line 265
    const-string v0, "-1"

    invoke-virtual {v11, v3, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v11}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    :cond_10
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x57
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x62
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILccsansan/m/getDownloadedList;[Ljava/lang/String;)V
    .locals 7

    .line 226
    nop

    .line 0
    const/4 v0, 0x1

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    .line 199
    const-string p3, ""

    iput-object p3, p4, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    .line 200
    iput v0, p4, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p4, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 202
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p4}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 203
    invoke-static {p1, p2}, Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    nop

    .line 205
    iput v0, p4, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    .line 206
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p4}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 226
    :goto_0
    goto/16 :goto_8

    .line 206
    :cond_1
    const/4 p4, 0x2

    if-ne p3, p4, :cond_7

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 226
    sget v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v4, v4, 0x63

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v4, p4

    if-nez v4, :cond_3

    aget-object v4, p5, v3

    .line 212
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x10

    :try_start_0
    div-int/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/16 v5, 0x41

    goto :goto_2

    :cond_2
    const/16 v5, 0x1d

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 226
    :catchall_0
    move-exception p0

    throw p0

    .line 211
    :cond_3
    aget-object v4, p5, v3

    .line 212
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x58

    goto :goto_3

    :cond_4
    const/16 v5, 0x1a

    :goto_3
    packed-switch v5, :pswitch_data_1

    :pswitch_0
    goto :goto_6

    .line 213
    :goto_4
    :pswitch_1
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    sget v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v4, p4

    if-nez v4, :cond_5

    .line 212
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_2

    .line 226
    :pswitch_2
    goto :goto_7

    .line 213
    :goto_6
    nop

    .line 215
    const-string v5, ","

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 226
    sget v4, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v4, v4, 0x5d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v4, p4

    goto :goto_1

    .line 219
    :cond_6
    new-instance p4, Lccsansan/m/getDownloadedList;

    invoke-direct {p4}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p4, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 221
    sget-object p5, Lccsansan/m/getDownloadedList$unifiedDownload;->IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {p5}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p5

    iput p5, p4, Lccsansan/m/getDownloadedList;->execute:I

    .line 222
    iput-object p2, p4, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 223
    iput-object p1, p4, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 224
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    .line 225
    iput v0, p4, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    .line 226
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p4}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    :cond_7
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 226
    nop

    .line 0
    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 226
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    move-object v10, v2

    goto :goto_1

    .line 205
    :pswitch_0
    const-string v2, "unknow"

    move-object v10, v2

    .line 207
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    const/16 v6, 0x30

    rsub-int/lit8 v5, v5, 0x30

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    rsub-int/lit8 v7, v7, 0x2c

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x6d

    const-string v9, "\uffcc\uffcc\uffcc\uffd9\u000b\u0011\ufff4\u0003\u0000\u000e\u000b\r\u0016\u000e\u0003\uffdd\uffcc\u0008\u000f\uffe2\r\u000e\u0008\u0013\u0000\u0011\u0014\uffe3\u0003\u0008\u000b\u0000\ufff5\u0013\u0011\u000e\u000f\u0004\ufff1\u0018\u0011\u0013\u0004\u0011\uffd9\u0006\n\u000f"

    invoke-static {v9, v3, v5, v7, v8}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-static {v5}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int/lit8 v8, v8, 0x3

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    add-int/lit8 v9, v9, 0x71

    const-string v11, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    invoke-static {v11, v3, v7, v8, v9}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const/16 v2, 0x34

    goto :goto_2

    :cond_2
    const/16 v2, 0x17

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 208
    invoke-static/range {p1 .. p1}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :pswitch_1
    invoke-static/range {p2 .. p2}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    .line 226
    sget v7, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v7, v7, 0x49

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v7, v7, 0x2

    .line 208
    :goto_3
    const/4 v15, -0x2

    if-ne v2, v15, :cond_3

    .line 226
    const/4 v7, 0x1

    goto :goto_4

    .line 208
    :cond_3
    const/4 v7, 0x0

    .line 210
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----reportStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v4}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    invoke-static {v4}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v12

    add-int/lit8 v12, v12, 0x71

    invoke-static {v11, v3, v8, v9, v12}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_4

    .line 226
    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    const/4 v2, 0x1

    :goto_5
    packed-switch v2, :pswitch_data_2

    :goto_6
    goto/16 :goto_8

    :pswitch_2
    sget v2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 212
    :cond_5
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v2

    iget-object v7, v1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    iget-object v8, v1, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    iget v9, v1, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    iget-object v11, v1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iget-object v12, v1, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-wide v13, v1, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    invoke-static {v5, v4}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v15

    add-int/lit16 v15, v15, 0xc5

    invoke-static {v5, v6, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/lit16 v5, v5, 0x146b

    int-to-char v5, v5

    invoke-static {v4, v4}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {v15, v5, v4}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v1, v4, v3}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v3

    const/4 v15, 0x0

    .line 215
    move-object v5, v2

    move-object/from16 v6, p0

    const/4 v2, -0x2

    move/from16 v16, v3

    invoke-virtual/range {v5 .. v16}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 219
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 220
    sget-object v3, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 222
    :cond_6
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 225
    const-string v0, "s2s_track_status"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_6

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3e

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x40

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4
    nop

    .line 2
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    packed-switch v0, :pswitch_data_0

    .line 4
    sget-object p0, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :pswitch_0
    sget p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 2
    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    sget-object p1, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 4
    :goto_3
    nop

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 20

    .line 41
    nop

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const-string v9, ""

    cmp-long v10, v2, v4

    rsub-int v2, v10, 0xf6

    invoke-static {v7, v7}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v3, v3, v7

    add-int/lit16 v3, v3, 0x3aae

    int-to-char v3, v3

    invoke-static {v1}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    cmpl-float v4, v4, v7

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2, v3, v4}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x14

    invoke-static {v9}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    invoke-static {v1, v1}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x71

    invoke-static {v8, v6, v3, v4, v5}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v3, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;

    sget-wide v12, Lccsansan/au/addDownloadListener;->getDownloadStatusByUrl:J

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const-string v5, "\u0006\r\ufff3\ufff8\u0003\u000b\u0002\u0000\u0003\ufff5\ufff8\u0006\ufff9\u0008"

    cmpl-float v4, v4, v7

    add-int/lit8 v4, v4, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0xb

    invoke-static {v1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x78

    invoke-static {v5, v1, v4, v6, v7}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    move-object/from16 v14, p0

    move-wide/from16 v15, p3

    move-object/from16 v17, p5

    move-object/from16 v18, p2

    move-object/from16 v19, p1

    invoke-direct/range {v10 .. v19}, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    .line 37
    :cond_1
    :goto_1
    invoke-static/range {p0 .. p0}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 41
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

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

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 5

    .line 274
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 274
    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 274
    :goto_1
    const/16 v0, 0x2a

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    .line 0
    :goto_2
    return-void

    .line 267
    :cond_1
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    .line 269
    const/16 v3, 0x5b

    goto :goto_3

    :cond_2
    const/16 v3, 0x26

    :goto_3
    packed-switch v3, :pswitch_data_1

    :cond_3
    :goto_4
    goto :goto_9

    .line 274
    :pswitch_1
    sget v3, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v3, v3, 0x21

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 269
    const/16 v3, 0x30

    goto :goto_5

    :cond_4
    const/16 v3, 0x60

    :goto_5
    packed-switch v3, :pswitch_data_2

    :try_start_2
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_6

    :pswitch_2
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    :pswitch_3
    goto :goto_8

    :goto_6
    const/16 v3, 0x45

    :try_start_3
    div-int/2addr v3, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    const/16 v0, 0x54

    goto :goto_7

    :cond_5
    const/16 v0, 0x32

    :goto_7
    packed-switch v0, :pswitch_data_3

    goto :goto_4

    :goto_8
    :try_start_4
    const-string v0, "lock_screen"

    .line 271
    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    .line 274
    :catchall_0
    move-exception p0

    throw p0

    .line 271
    :goto_9
    const-string v0, "is_background"

    .line 274
    :try_start_5
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catch_0
    move-exception p0

    .line 269
    :goto_a
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    .line 274
    return-void

    :catchall_1
    move-exception p0

    goto :goto_c

    :goto_b
    throw p0

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 14

    .line 42
    nop

    .line 8
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    const/16 v1, 0x4f

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p0

    throw p0

    .line 2
    :cond_0
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :goto_0
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 2
    const/16 p0, 0x45

    goto :goto_1

    :cond_1
    const/16 p0, 0x63

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 42
    return-void

    :pswitch_0
    const/16 p0, 0x38

    :try_start_1
    div-int/2addr p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    .line 6
    :cond_2
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    goto :goto_2

    :cond_3
    const/16 v1, 0x23

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 15
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    new-instance v1, Lccsansan/au/addDownloadListener$addDownloadListener;

    invoke-direct {v1, p1}, Lccsansan/au/addDownloadListener$addDownloadListener;-><init>(Lccsancom/san/cpi/xz/AdXzParams;)V

    invoke-static {p0, v0, v1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    goto :goto_7

    .line 9
    :pswitch_1
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v5, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1, v4, v5, v6}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z

    .line 8
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_7

    goto :goto_4

    .line 9
    :catchall_2
    move-exception p0

    throw p0

    .line 7
    :cond_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v5, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1, v3, v4, v5}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z

    .line 8
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v0, :cond_5

    .line 2
    const/16 v1, 0x47

    goto :goto_3

    :cond_5
    const/16 v1, 0x3c

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 42
    :goto_4
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 2
    const/16 v1, 0x26

    goto :goto_5

    :cond_6
    const/16 v1, 0x1a

    :goto_5
    const-string v3, ""

    packed-switch v1, :pswitch_data_3

    .line 42
    const/4 v1, 0x5

    goto :goto_6

    .line 8
    :pswitch_2
    const/4 v1, 0x4

    .line 9
    :goto_6
    invoke-interface {v0, v1, v3}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 12
    :cond_7
    :pswitch_3
    iget-object v5, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v7, p1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v8, p1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v10, p1, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v11, p1, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v4, 0x4

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 42
    nop

    .line 15
    :goto_7
    nop

    .line 42
    invoke-static {p0, p1, v2}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_3

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    goto :goto_2

    :cond_1
    const/16 v0, 0x4f

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 4
    :catchall_0
    move-exception p0

    throw p0

    .line 2
    :goto_3
    sget-object p0, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    :cond_2
    :pswitch_1
    sget-object p1, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 44
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "market://details"

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 44
    :catchall_0
    move-exception p0

    throw p0

    .line 43
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x33

    goto :goto_1

    :cond_2
    const/16 v0, 0x3e

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_3

    .line 44
    :pswitch_0
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 43
    :cond_3
    nop

    .line 44
    const-string v0, "https://play.google.com/store/apps/details"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;J)Lccsansan/au/addDownloadListener$trackReportClick;
    .locals 6

    .line 334
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 323
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :goto_1
    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 328
    const/16 v0, 0x51

    goto :goto_2

    :cond_1
    const/16 v0, 0x3e

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 323
    :goto_3
    :pswitch_1
    return-object v2

    .line 327
    :cond_2
    :goto_4
    sget-object v0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 323
    sget v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v3, v3, 0x71

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/au/addDownloadListener$trackReportClick;

    .line 328
    iget-object v4, v3, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :try_start_1
    array-length v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    const/16 v4, 0x5a

    goto :goto_6

    :cond_4
    const/16 v4, 0x5c

    :goto_6
    packed-switch v4, :pswitch_data_2

    goto :goto_5

    .line 323
    :catchall_0
    move-exception p0

    throw p0

    .line 327
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/au/addDownloadListener$trackReportClick;

    .line 328
    iget-object v4, v3, Lccsansan/au/addDownloadListener$trackReportClick;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    :pswitch_2
    iget p0, v3, Lccsansan/au/addDownloadListener$trackReportClick;->removeDownloadListener:I

    add-int/2addr p0, v1

    iput p0, v3, Lccsansan/au/addDownloadListener$trackReportClick;->removeDownloadListener:I

    .line 334
    return-object v3

    .line 333
    :cond_6
    new-instance v0, Lccsansan/au/addDownloadListener$trackReportClick;

    invoke-direct {v0, p0, p1, p2}, Lccsansan/au/addDownloadListener$trackReportClick;-><init>(Ljava/lang/String;J)V

    .line 334
    sget-object p0, Lccsansan/au/addDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5a
        :pswitch_2
    .end packed-switch
.end method

.method public static removeDownloadListener()V
    .locals 2

    .line 138
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 137
    :cond_0
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    if-nez v0, :cond_1

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/au/addDownloadListener;->unifiedDownload()Lccsansan/k/addDownloadListener$unifiedDownload;

    move-result-object v0

    invoke-static {v0}, Lccsansan/k/addDownloadListener;->unifiedDownload(Lccsansan/k/addDownloadListener$unifiedDownload;)V

    :pswitch_0
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 12

    move v0, p0

    move-object v2, p2

    .line 133
    nop

    .line 122
    invoke-static/range {p5 .. p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v5, -0x2

    packed-switch v1, :pswitch_data_0

    .line 125
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 133
    :pswitch_0
    sget v1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    const/16 v5, 0x18

    goto :goto_1

    :cond_1
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p5

    .line 125
    :goto_2
    if-eq v0, v4, :cond_4

    .line 133
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 123
    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 125
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_4

    .line 133
    :pswitch_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 125
    :goto_4
    goto :goto_5

    .line 132
    :cond_3
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v11, 0x2

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_5

    .line 133
    :cond_4
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v11, 0x1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    :goto_5
    return-void

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

.method private static removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 13

    .line 33
    nop

    .line 5
    sget-object v0, Lccsansan/au/addDownloadListener$deleteDownItem;->getDownloadingList:[I

    iget v1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-boolean v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mIsForceGpXz:Z

    invoke-static {v1, v2, v3, v4, v6}, Lccsansan/k/deleteDownItem;->getDownloadingList(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lccsansan/k/deleteDownItem$getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_0

    .line 33
    const/16 v2, 0x40

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 23
    :pswitch_0
    nop

    .line 24
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v1, "c_d"

    invoke-static {v1, v0}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v11

    .line 25
    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v8, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v10, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v12, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    const-string v7, "launch_gp"

    invoke-static/range {v6 .. v12}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 26
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    goto/16 :goto_3

    .line 23
    :cond_1
    iget-object v1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    iget-object v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzParams;)V

    goto/16 :goto_3

    .line 26
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    rsub-int v4, v4, 0xa1

    const v6, 0xd9e6

    invoke-static {v0}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    add-int/2addr v0, v6

    int-to-char v0, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    rsub-int/lit8 v6, v10, 0xd

    invoke-static {v4, v0, v6}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {v4, v6}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 33
    sget v4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v4, v4, 0x4b

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v4, v2

    if-nez v4, :cond_3

    .line 27
    :cond_3
    iget-object v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    .line 28
    invoke-static {v4, v6}, Lccsansan/k/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x78

    const-string v7, "\u0002\ufffd\u0000\u0000\ufff5\u0008\u0007"

    invoke-static {v7, v3, v0, v4, v6}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 33
    move-object v7, v0

    goto :goto_1

    .line 32
    :cond_4
    move-object v7, v0

    :goto_1
    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v8, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v10, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v11, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    invoke-static/range {v6 .. v11}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 33
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadStatusByUrl(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    const/16 v0, 0x19

    goto :goto_2

    :cond_5
    const/16 v0, 0xc

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILccsansan/m/getDownloadedList;[Ljava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static/range {p0 .. p5}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILccsansan/m/getDownloadedList;[Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)V
    .locals 7

    .line 44
    const-string p0, ""

    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 22
    const/16 p2, 0x5c

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    packed-switch p2, :pswitch_data_0

    :try_start_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p2

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3d

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    goto :goto_2

    .line 44
    :catchall_0
    move-exception p0

    throw p0

    .line 22
    :goto_1
    if-nez p2, :cond_1

    :goto_2
    return-void

    .line 26
    :cond_1
    :try_start_2
    new-instance v0, Lccsancom/san/cpi/xz/AdXzParams$Builder;

    invoke-direct {v0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;-><init>()V

    invoke-virtual {p2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lccsansan/dt/resume;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v3

    invoke-virtual {p2}, Lccsansan/dt/resume;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lccsansan/dt/resume;->getDownloadedRecordByUrl()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendPkgInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdStatsInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCpiInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p3

    .line 30
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 22
    :cond_2
    sget v1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 44
    :cond_3
    nop

    .line 30
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_4

    .line 22
    const/16 v1, 0x47

    goto :goto_4

    :cond_4
    const/16 v1, 0x3c

    :goto_4
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    .line 44
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    goto :goto_5

    .line 30
    :pswitch_1
    move-object v1, v2

    goto :goto_6

    :cond_5
    :goto_5
    :try_start_4
    invoke-static {p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)[Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {p3, v0, p0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendUrls(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    new-instance p3, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;

    invoke-direct {p3, p1, p2}, Lccsansan/au/addDownloadListener$getDownloadingRecordByUrl;-><init>(Lccsansan/dt/removeDownloadListener;Lccsansan/dt/resume;)V

    .line 31
    invoke-virtual {p0, v2, p3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCallbacks(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    .line 41
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendDeepLinkUrl(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    .line 42
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result p2

    invoke-virtual {p0, p2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    const-string p2, "ad"

    invoke-virtual {p0, p2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdData(Lccsansan/dt/removeDownloadListener;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->build()Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p0

    .line 44
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 52
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 0
    if-eqz p0, :cond_2

    goto :goto_1

    .line 52
    :pswitch_0
    const/16 v0, 0x39

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 8
    :goto_1
    new-instance v0, Lccsansan/au/addDownloadListener$getDownloadedCount;

    invoke-direct {v0, p2, p0, p1}, Lccsansan/au/addDownloadListener$getDownloadedCount;-><init>(Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;)V

    .line 52
    const/4 p0, 0x1

    invoke-static {v0, p0}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/k/addDownloadListener$unifiedDownload;Z)V

    sget p1, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x53

    :goto_0
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x7

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 269
    nop

    .line 239
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 236
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 269
    sget v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    const/16 v3, 0x3d

    add-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 239
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    goto :goto_1

    .line 269
    :catchall_0
    move-exception p0

    throw p0

    .line 239
    :cond_1
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x2a

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    nop

    .line 269
    sget v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 239
    const/16 v2, 0x2c

    goto :goto_2

    :cond_4
    const/16 v2, 0x1e

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 269
    :pswitch_0
    nop

    .line 239
    const-string v2, "unknow"

    :cond_5
    :pswitch_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_2

    goto :goto_4

    .line 245
    :pswitch_2
    iget-object v5, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 246
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v5

    goto :goto_5

    .line 248
    :cond_7
    :goto_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, p1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v5

    :goto_5
    if-eqz v0, :cond_8

    .line 239
    const/16 v6, 0xa

    goto :goto_6

    :cond_8
    const/16 v6, 0x35

    :goto_6
    packed-switch v6, :pswitch_data_3

    .line 251
    iget v6, v0, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v7, Lccsansan/m/getDownloadedList$unifiedDownload;->ADD_XZ_LIST:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v7}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v7

    if-eq v6, v7, :cond_9

    :pswitch_3
    sget-object v6, Lccsansan/au/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    .line 252
    :cond_9
    sget-object v6, Lccsansan/au/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 253
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget v6, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/2addr v6, v4

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v6, v6, 0x2

    .line 255
    :cond_a
    invoke-static {v2, p0, v5, p1}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V

    :cond_b
    if-eqz v0, :cond_c

    .line 239
    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    nop

    :goto_7
    packed-switch v3, :pswitch_data_4

    .line 260
    sget-object v3, Lccsansan/m/getDownloadedList$unifiedDownload;->START_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v3}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v3

    iput v3, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 261
    iput-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 262
    iput-wide p2, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 263
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p2

    invoke-virtual {p2, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 269
    nop

    .line 266
    :pswitch_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p2

    .line 267
    iget-object p3, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_e

    .line 269
    sget p3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p3, p3, 0x3b

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_d

    iget-object p2, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :try_start_1
    array-length p3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_e

    goto :goto_8

    :catchall_1
    move-exception p0

    throw p0

    .line 267
    :cond_d
    iget-object p2, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_e

    :goto_8
    return-void

    .line 269
    :cond_e
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x35
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 15
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    invoke-static/range {p0 .. p5}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x35

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V
    .locals 19

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "si_az_enable"

    const-string v5, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const-string v6, ""

    .line 53
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x14

    invoke-static {v11, v11}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x3

    invoke-static {v11}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v15

    rsub-int/lit8 v15, v15, 0x71

    invoke-static {v5, v10, v13, v14, v15}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 54
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v11}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v15

    const/16 v16, 0x1f

    add-int/lit8 v15, v15, 0x1f

    const v17, 0x9b0c

    invoke-static {v11, v11}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v18

    add-int v7, v18, v17

    int-to-char v7, v7

    invoke-static {v11, v11}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v17

    rsub-int/lit8 v10, v17, 0x14

    invoke-static {v15, v7, v10}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_0

    .line 86
    goto :goto_0

    :cond_0
    const/16 v16, 0x36

    :goto_0
    packed-switch v16, :pswitch_data_0

    sget v7, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v7, v7, 0x6f

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    .line 57
    :cond_1
    :try_start_2
    iget-object v7, v3, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_3

    .line 86
    sget v7, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v7, v7, 0x6d

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 58
    :cond_2
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v7

    iget-object v10, v3, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v7, v10, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_c

    .line 60
    :cond_3
    :pswitch_0
    :try_start_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v7

    invoke-virtual {v7, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 58
    :goto_1
    nop

    .line 86
    sget v7, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v7, v7, 0x75

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4

    .line 63
    :cond_4
    :try_start_5
    invoke-static {v12}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v7

    invoke-static {v7}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v7, :cond_5

    :try_start_6
    invoke-static {v11}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    cmp-long v3, v1, v8

    rsub-int/lit8 v1, v3, 0x4

    invoke-static {v11}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x72

    const/4 v3, 0x1

    invoke-static {v5, v3, v0, v1, v2}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    cmp-long v3, v1, v8

    rsub-int/lit8 v1, v3, 0x34

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {v6, v6, v11, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {v1, v2, v3}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 69
    :cond_5
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13, v2}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v10

    .line 70
    invoke-static/range {p0 .. p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v13, :cond_6

    .line 86
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const/4 v13, 0x1

    :goto_2
    packed-switch v13, :pswitch_data_1

    sget v13, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v13, v13, 0x51

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_7

    .line 71
    :cond_7
    :try_start_7
    invoke-static {v12}, Lccsansan/au/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 86
    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    packed-switch v12, :pswitch_data_2

    .line 73
    invoke-virtual {v10}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lccsansan/au/getDownloadingList;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;J)V

    .line 77
    :pswitch_1
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->unifiedDownload()Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v12, :cond_9

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v12

    cmp-long v14, v12, v8

    add-int/lit8 v14, v14, 0x13

    invoke-static {v6, v6, v11, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x3

    invoke-static {v6}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x70

    const/4 v15, 0x1

    invoke-static {v5, v15, v14, v12, v13}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 78
    :try_start_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v14

    cmp-long v16, v14, v8

    add-int/lit8 v14, v16, 0x57

    invoke-static {v6, v11, v11}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v15

    rsub-int v15, v15, 0x3a86

    int-to-char v15, v15

    invoke-static {v11}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v16

    add-int/lit8 v8, v16, 0x24

    invoke-static {v14, v15, v8}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; filepath = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static/range {p0 .. p0}, Lccsansan/bw/getErrorCode;->getThumbPathByRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 80
    invoke-static {v10}, Lccsansan/au/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 86
    sget v8, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v8, v8, 0x35

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v8, v8, 0x2

    .line 80
    :cond_9
    :try_start_9
    const-string v8, "portal"

    .line 84
    invoke-virtual {v7, v8, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "url"

    .line 85
    invoke-virtual {v7, v8, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v1, :cond_a

    .line 86
    const/16 v0, 0x5b

    goto :goto_4

    :cond_a
    const/16 v0, 0x49

    :goto_4
    packed-switch v0, :pswitch_data_3

    :cond_b
    goto :goto_9

    .line 96
    :pswitch_2
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v8, v0, 0x80

    sput v8, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 86
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_4

    :try_start_a
    iget-object v0, v1, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    goto :goto_7

    :pswitch_3
    iget-object v0, v1, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_6
    goto :goto_8

    :goto_7
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    const/4 v8, 0x0

    :try_start_b
    array-length v8, v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v0, :cond_b

    goto :goto_6

    .line 87
    :goto_8
    :try_start_c
    invoke-virtual {v1, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_9

    .line 96
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 87
    :goto_9
    if-eqz v3, :cond_e

    .line 90
    :try_start_d
    iget-boolean v0, v3, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    if-eqz v0, :cond_d

    .line 96
    goto :goto_a

    .line 90
    :cond_d
    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v3, 0x1

    :goto_b
    invoke-static {v7, v2, v3, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    move-object v7, v8

    :goto_c
    invoke-static {v6, v11}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x71

    const/4 v8, 0x1

    invoke-static {v5, v8, v1, v2, v6}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x7c

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x12

    invoke-static {v2, v3, v4}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v7, :cond_10

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v7, v1, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v7}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    .line 96
    const-string v0, "exception"

    invoke-static {v7, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 86
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    const/4 v10, 0x1

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    :goto_d
    packed-switch v10, :pswitch_data_5

    .line 96
    :cond_10
    :goto_e
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 2

    .line 20
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 1
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->deleteDownItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload()Lccsansan/k/addDownloadListener$unifiedDownload;
    .locals 2

    .line 45
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    if-nez v0, :cond_0

    .line 46
    const-class v0, Lccsancom/san/cpi/xz/removeDownloadListener;

    monitor-enter v0

    .line 47
    :try_start_0
    new-instance v1, Lccsansan/au/addDownloadListener$removeDownloadListener;

    invoke-direct {v1}, Lccsansan/au/addDownloadListener$removeDownloadListener;-><init>()V

    sput-object v1, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    .line 123
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_0
    :goto_0
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    return-object v0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 12

    .line 31
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-static {p0, p1}, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 2
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    invoke-static {p0, v0, v2}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget v3, p1, Lccsancom/san/cpi/xz/AdXzParams;->mMinVersionCode:I

    invoke-static {p0, v2, v3}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 31
    const/16 v4, 0x35

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e

    :goto_0
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 5
    iget v4, p1, Lccsancom/san/cpi/xz/AdXzParams;->mMinVersionCode:I

    if-lez v4, :cond_3

    .line 31
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 5
    if-ne v2, v1, :cond_8

    .line 22
    :pswitch_0
    iget-object p0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz p0, :cond_4

    .line 23
    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {p0, v4, v2}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 31
    nop

    .line 26
    :cond_4
    iget-object p0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    .line 27
    iget-object v2, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    invoke-static {p0, v2}, Lccsansan/k/deleteDownItem;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 31
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_2

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_6

    goto :goto_4

    :goto_3
    :pswitch_1
    move-object v8, p0

    goto :goto_5

    .line 28
    :cond_6
    :goto_4
    iget-object p0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    goto :goto_3

    :goto_5
    const-wide/16 v1, 0x0

    if-ne v0, v3, :cond_7

    invoke-static {v5, v5, v5}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    add-int/lit8 p0, p0, 0x9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-string v0, "\ufffa\uffff\u0004\t\n\ufff7\u0002\u0002\ufffb"

    cmp-long v6, v3, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    rsub-int/lit8 v1, v1, 0x76

    invoke-static {v0, v5, p0, v6, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_7
    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result p0

    const/4 v0, 0x0

    const-string v4, "\u0003\u0004\ufffe\u0008\u0007\ufffa\u000b\ufff4\u000c\u0004\u0001\ufff4\ufff9\ufffa\u0001\u0001\ufff6\t\u0008\u0003\ufffe"

    cmpl-float p0, p0, v0

    add-int/lit8 p0, p0, 0x15

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v1

    add-int/lit8 v0, v0, 0x14

    invoke-static {v5, v5}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x77

    invoke-static {v4, v3, p0, v0, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    move-object v7, p0

    .line 31
    iget-object v6, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v9, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v10, p1, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v11, p1, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    invoke-static/range {v6 .. v11}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    .line 21
    :cond_8
    :pswitch_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/au/addDownloadListener$deleteDownList;

    invoke-direct {v1, p0, p1}, Lccsansan/au/addDownloadListener$deleteDownList;-><init>(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;[Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 4
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static/range {p0 .. p7}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;[Ljava/lang/String;Ljava/lang/String;II)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 75
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x30

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-eqz p3, :cond_2

    .line 75
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_3

    .line 74
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_3

    .line 75
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v8, Lccsansan/au/addDownloadListener$IncentiveSDK;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lccsansan/au/addDownloadListener$IncentiveSDK;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_3
    :goto_3
    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 17

    move-object/from16 v0, p0

    .line 198
    nop

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redirectUrlByWebView url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x14

    const/16 v5, 0x30

    const-string v6, ""

    invoke-static {v6, v5, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    const/4 v6, 0x2

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x71

    const-string v8, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const/4 v9, 0x1

    invoke-static {v8, v9, v4, v5, v7}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sput-boolean v3, Lccsansan/au/addDownloadListener;->unifiedDownload:Z

    .line 106
    invoke-static/range {p0 .. p0}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;

    move-result-object v1

    .line 107
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 108
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v5, v7, :cond_b

    .line 109
    new-instance v5, Lccsanandroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v7

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v7}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 198
    nop

    .line 109
    int-to-byte v7, v3

    add-int/lit8 v8, v7, -0x1

    int-to-byte v8, v8

    neg-int v10, v8

    int-to-byte v10, v10

    :try_start_0
    invoke-static {v7, v8, v10}, Lccsansan/au/addDownloadListener;->getDownloadingList(SII)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget v12, Lccsansan/au/addDownloadListener;->addDownloadListener:I

    and-int/lit8 v13, v12, 0x1

    int-to-byte v13, v13

    sget-object v14, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils:[B

    const/4 v15, 0x4

    aget-byte v9, v14, v15

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v13, v9, v7}, Lccsansan/au/addDownloadListener;->getDownloadingList(SII)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v11, 0x10000

    invoke-virtual {v9, v5, v11}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 198
    sget v16, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v11, v16, 0x7d

    rem-int/lit16 v13, v11, 0x80

    sput v13, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v11, v6

    if-eqz v11, :cond_0

    .line 111
    const/16 v11, 0x5d

    goto :goto_0

    :cond_0
    const/16 v11, 0x37

    :goto_0
    packed-switch v11, :pswitch_data_0

    iget-object v11, v9, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_4

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v11, v9, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    const/16 v13, 0x16

    :try_start_1
    div-int/2addr v13, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/16 v13, 0x44

    :goto_1
    packed-switch v13, :pswitch_data_1

    const/4 v10, 0x1

    goto :goto_3

    .line 198
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 111
    :goto_2
    iget-object v11, v11, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 112
    const-string v13, "android"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    :try_start_2
    invoke-static {v7, v8, v10}, Lccsansan/au/addDownloadListener;->getDownloadingList(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    and-int/lit8 v11, v12, 0x1

    int-to-byte v11, v11

    aget-byte v12, v14, v15

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v11, v12, v7}, Lccsansan/au/addDownloadListener;->getDownloadingList(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v7, 0x10000

    invoke-virtual {v0, v5, v7}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lccsanandroid/content/pm/ResolveInfo;

    .line 198
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr v0, v6

    if-nez v0, :cond_6

    goto :goto_3

    .line 112
    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :cond_3
    const/4 v10, 0x1

    goto :goto_3

    .line 111
    :cond_4
    const/4 v10, 0x1

    goto :goto_3

    .line 109
    :cond_5
    const/4 v10, 0x1

    .line 115
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    .line 111
    const/4 v0, 0x2

    goto :goto_4

    :cond_7
    const/16 v0, 0x63

    :goto_4
    const-string v5, "X-Requested-With"

    packed-switch v0, :pswitch_data_2

    .line 117
    iget-object v0, v9, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 111
    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    :goto_5
    packed-switch v3, :pswitch_data_3

    .line 118
    iget-object v0, v9, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v0, v0, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v0, v6

    if-eqz v0, :cond_b

    goto :goto_6

    .line 118
    :cond_9
    :pswitch_2
    nop

    .line 120
    const-string v0, "com.android.browser"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 109
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    throw v1

    :cond_a
    throw v0

    .line 123
    :cond_b
    :goto_6
    invoke-static/range {p1 .. p1}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 198
    invoke-virtual {v1, v0, v4}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 18

    .line 103
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    const-string v15, ""

    .line 76
    const/16 v16, 0x0

    const/16 v17, 0x1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 76
    if-eqz v13, :cond_4

    goto :goto_5

    .line 83
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v0, v14, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v1, v14, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    move-object/from16 v10, p0

    invoke-static {v10, v4, v11, v0, v1}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "c_d"

    .line 86
    :try_start_1
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 86
    goto :goto_2

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_3

    .line 103
    :goto_2
    const/4 v1, 0x0

    .line 86
    :goto_3
    invoke-static {v0, v1}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v7

    .line 87
    iget-object v2, v14, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "launch_gp"

    :try_start_2
    iget-object v5, v14, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v6, v14, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v8, v14, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    invoke-static/range {v2 .. v8}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v1, 0x4

    .line 89
    iget-object v4, v14, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v5, v14, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    const/4 v6, 0x0

    iget-object v7, v14, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v8, v14, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v0, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move v10, v0

    invoke-static/range {v1 .. v10}, Lccsansan/au/addDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    if-eqz v13, :cond_2

    .line 101
    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 89
    const/4 v0, 0x4

    .line 92
    invoke-interface {v13, v0, v15}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 103
    :goto_5
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 101
    const/4 v0, 0x1

    goto :goto_6

    :cond_3
    const/4 v0, 0x0

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 103
    const/16 v0, 0x39

    goto :goto_7

    .line 76
    :pswitch_2
    const/4 v0, -0x2

    .line 78
    :goto_7
    :try_start_3
    invoke-interface {v13, v0, v15}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 103
    nop

    .line 78
    :cond_4
    nop

    .line 103
    return-void

    .line 92
    :catch_0
    move-exception v0

    if-eqz v13, :cond_5

    const/4 v0, -0x1

    .line 96
    invoke-interface {v13, v0, v15}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 101
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 96
    :cond_5
    :goto_8
    :pswitch_3
    if-eqz v12, :cond_8

    .line 78
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 101
    array-length v0, v12

    const/4 v1, 0x0

    :try_start_4
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v0, :cond_8

    goto :goto_9

    .line 78
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 101
    :cond_6
    array-length v0, v12

    if-lez v0, :cond_8

    .line 102
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 103
    iget-object v0, v14, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    const/16 v16, 0x1

    goto :goto_a

    :cond_7
    nop

    :goto_a
    packed-switch v16, :pswitch_data_4

    .line 103
    iget-object v0, v14, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    :goto_b
    move-object v6, v0

    goto :goto_c

    :pswitch_4
    iget-object v0, v14, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    goto :goto_b

    :goto_c
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    return-void

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
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 322
    nop

    .line 300
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 305
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 322
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 306
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception p0

    throw p0

    .line 306
    :cond_1
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_2
    sget-object v1, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_0
    iget v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->XZING:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v5

    if-eq v1, v5, :cond_4

    .line 306
    sget v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 312
    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 313
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 306
    :catchall_1
    move-exception p0

    throw p0

    .line 312
    :cond_3
    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 313
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 316
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    sub-long/2addr v1, v4

    .line 317
    invoke-static {}, Lccsansan/bt/unifiedDownload;->unifiedDownload()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-ltz v6, :cond_6

    .line 313
    sget p2, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p2, p2, 0x4f

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    .line 318
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0, p1, v0}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V

    goto :goto_8

    :cond_6
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v4, p2, v0

    if-gtz v4, :cond_7

    .line 313
    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 318
    long-to-float p4, p4

    const/high16 p5, 0x42c80000    # 100.0f

    mul-float p4, p4, p5

    long-to-float p2, p2

    div-float p2, p4, p2

    goto :goto_4

    :pswitch_0
    const/4 p2, 0x0

    .line 313
    sget p3, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p3, p3, 0x77

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const/4 p3, 0x0

    goto :goto_3

    :cond_8
    const/4 p3, 0x1

    :goto_3
    packed-switch p3, :pswitch_data_1

    .line 321
    :goto_4
    :pswitch_1
    invoke-static {}, Lccsansan/cy/unifiedDownload;->performAction()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-lez p3, :cond_9

    .line 313
    const/4 p3, 0x0

    goto :goto_5

    :cond_9
    const/4 p3, 0x1

    :goto_5
    packed-switch p3, :pswitch_data_2

    :goto_6
    goto :goto_8

    .line 306
    :pswitch_2
    sget p3, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p3, p3, 0x13

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_a

    .line 321
    :cond_a
    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDownload()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_b

    .line 313
    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    nop

    :goto_7
    packed-switch v3, :pswitch_data_3

    goto :goto_6

    .line 322
    :pswitch_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void

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
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 270
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V
    .locals 2

    .line 19
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V

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
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 66
    nop

    .line 45
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 48
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const-string v4, ""

    const/4 v5, 0x2

    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    goto :goto_2

    .line 66
    :pswitch_0
    sget v3, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 48
    iget-object v3, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const/4 v6, 0x0

    :try_start_0
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    throw p0

    .line 48
    :cond_2
    iget-object v3, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    if-nez v3, :cond_3

    :pswitch_1
    const-string v3, "portal_key"

    invoke-virtual {v0, v3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_2
    const-string v6, "\u000f\ufffe\uffdc\r\u0000\u000b\u0007\u0000\uffe3\uffff\ufffc\n\u0007\t\u0012\n\uffdf\t\n\u0004"

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_8

    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x77

    rem-int/lit16 v10, p2, 0x80

    sput v10, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    .line 51
    :cond_4
    invoke-static {p1, v3}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    .line 48
    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    const/4 p2, 0x1

    :goto_3
    packed-switch p2, :pswitch_data_2

    goto :goto_4

    .line 66
    :pswitch_2
    sget p2, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/2addr p2, v1

    rem-int/lit16 v10, p2, 0x80

    sput v10, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr p2, v5

    if-nez p2, :cond_7

    .line 59
    :cond_7
    sget-object p2, Lccsansan/m/getDownloadedList$unifiedDownload;->XZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {p2}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p2

    iput p2, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 60
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p2

    invoke-virtual {p2, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :goto_4
    invoke-static {v2}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result p2

    cmpl-float p2, p2, v9

    add-int/lit8 p2, p2, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x3

    invoke-static {v7, v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x71

    invoke-static {v6, v1, p2, v5, v9}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    cmp-long v6, v4, v7

    add-int/lit8 v6, v6, 0xf

    invoke-static {v1, v2, v6}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {p2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v1, Lccsansan/au/addDownloadListener$resume;

    invoke-direct {v1, p1, p0, v3, v0}, Lccsansan/au/addDownloadListener$resume;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V

    invoke-virtual {p2, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 66
    return-void

    .line 65
    :cond_8
    :goto_5
    invoke-static {v4}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x15

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide p1

    cmp-long v0, p1, v7

    add-int/2addr v0, v5

    invoke-static {v4}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x71

    invoke-static {v6, v1, p0, v0, p1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x10

    invoke-static {v2, v2}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    add-int/lit16 p2, p2, 0x3a72

    int-to-char p2, p2

    invoke-static {v2, v9, v9}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    cmpl-float v0, v0, v9

    rsub-int/lit8 v0, v0, 0xf

    invoke-static {p1, p2, v0}, Lccsansan/au/addDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/2addr p0, v5

    if-nez p0, :cond_9

    :try_start_1
    div-int/2addr v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
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

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z
    .locals 13

    .line 7
    sget v0, Lccsansan/au/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v12, Lccsansan/au/addDownloadListener$getDownloadingCount;

    move-object v2, v12

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p4

    move-object v8, p0

    move/from16 v9, p7

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lccsansan/au/addDownloadListener$getDownloadingCount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Lccsanandroid/content/Context;ZJ)V

    invoke-virtual {v0, v12}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/au/addDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/au/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    return v2

    .line 5
    :pswitch_1
    return v2

    .line 7
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
