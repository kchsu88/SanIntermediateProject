.class final Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Z

.field private static getDownloadedList:Z

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:[C


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    const/16 v1, 0xe6

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingList:I

    sput-boolean v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedList:Z

    sput-boolean v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->IncentiveDownloadUtils:Z

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->removeDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0x109s
        0x14as
        0x14bs
        0x152s
        0x147s
        0x15fs
        0x135s
        0x156s
        0x154s
        0x127s
        0x106s
        0x158s
        0x15as
        0x15bs
        0x120s
        0x155s
        0x14fs
        0x159s
        0x145s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 1163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    sget-object v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->removeDownloadListener:[C

    .line 1166
    sget v2, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingList:I

    .line 1168
    sget-boolean v3, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedList:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1170
    nop

    .line 1171
    array-length p0, p3

    .line 1172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 1176
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    .line 1174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 1179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 1182
    :cond_3
    sget-boolean p3, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->IncentiveDownloadUtils:Z

    if-eqz p3, :cond_5

    .line 1184
    nop

    .line 1185
    array-length p2, p0

    .line 1186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 1188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 1190
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-char v3, p0, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 1188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 1193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 1198
    :cond_5
    nop

    .line 1199
    array-length p0, p2

    .line 1200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 1204
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget v3, p2, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 1202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 1207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public execute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    nop

    .line 12
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 12
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "OpenAppHelperEx"

    packed-switch v4, :pswitch_data_0

    .line 41
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "#delayOpenApp return : cpiReport info is null"

    if-nez v0, :cond_c

    goto/16 :goto_c

    .line 4
    :pswitch_0
    nop

    .line 10
    const-string v4, "portal_key"

    invoke-virtual {v0, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const-string v7, "ad"

    packed-switch v6, :pswitch_data_1

    .line 10
    invoke-virtual {v0, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 4
    :pswitch_1
    sget v4, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 12
    const/16 v1, 0x3f

    goto :goto_2

    :cond_3
    const/16 v1, 0x57

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 4
    goto :goto_3

    .line 10
    :pswitch_2
    goto :goto_5

    .line 4
    :goto_3
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    throw v0

    .line 41
    :goto_4
    sget v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 11
    :cond_4
    :goto_5
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    sget-object v4, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v1, v4, v7}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    const/16 v4, 0x52

    goto :goto_6

    :cond_5
    const/16 v4, 0x12

    :goto_6
    packed-switch v4, :pswitch_data_3

    :cond_6
    goto :goto_8

    .line 4
    :pswitch_3
    sget v4, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x41

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x33

    :try_start_1
    div-int/2addr v6, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v4, :cond_6

    goto :goto_7

    .line 4
    :catchall_1
    move-exception v0

    throw v0

    .line 12
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 13
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/san/xz/base/XzRecord;

    .line 14
    invoke-static {v4}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v6

    .line 15
    iget-object v7, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 16
    invoke-virtual {v4}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v1

    goto :goto_9

    :cond_9
    :goto_8
    move-object v1, v2

    :goto_9
    const-string v4, "portal"

    if-nez v1, :cond_a

    .line 23
    new-instance v1, Lccsansan/p/getDownloadedList;

    invoke-direct {v1}, Lccsansan/p/getDownloadedList;-><init>()V

    .line 24
    iget-object v6, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V

    .line 25
    iget v6, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    invoke-virtual {v1, v6}, Lccsansan/p/getDownloadedList;->getDownloadingList(I)V

    .line 26
    iget-object v6, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    const-string v7, "url"

    invoke-virtual {v1, v7, v6}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v7, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v1, v6}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/util/List;)V

    .line 34
    :cond_a
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v6, v7}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 12
    const/16 v6, 0x2c

    goto :goto_a

    :cond_b
    const/16 v6, 0x4b

    :goto_a
    packed-switch v6, :pswitch_data_4

    .line 34
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x7f

    const-string v4, "\u0082\u0083\u0084\u0084\u0085\u008d\u0092\u0089\u0091\u008b\u008d\u0090\u0089\u008b\u0088\u0088\u0085\u008b\u008f\u008b\u0089\u008c\u008e\u008d\u0083\u008c\u008b\u0088\u0088\u008a\u0089\u0083\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, v0, v2, v4}, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x7f

    const-string v6, "\u0082\u0083\u0084\u0084\u0085\u008d\u0092\u0089\u0091\u0093\u008d\u0090\u0089\u0093\u0088\u0088\u0085"

    invoke-static {v2, v5, v2, v6}, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v4}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 40
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#delayOpenApp invoke open app: pagePortal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v4}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    invoke-static {v1, v2, v0}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    return-void

    .line 4
    :goto_b
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 41
    return-void

    .line 3
    :goto_c
    invoke-static {v5, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    iget-object v11, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->unifiedDownload:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v8, ""

    const-string v10, "cpi_info_is_null_fail"

    invoke-static/range {v6 .. v11}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1
    :cond_c
    nop

    .line 3
    invoke-static {v5, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->addDownloadListener:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;->unifiedDownload:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v2, ""

    const-string v4, "cpi_info_is_null_fail"

    invoke-static/range {v0 .. v5}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_d
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

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x52
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4b
        :pswitch_4
    .end packed-switch
.end method
