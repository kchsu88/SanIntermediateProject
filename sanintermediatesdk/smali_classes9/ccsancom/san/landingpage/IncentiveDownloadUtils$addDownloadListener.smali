.class Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/resume;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownList:I

.field private static getDownloadStatusByUrl:[C

.field private static getDownloadedCount:Z

.field private static getDownloadingCount:I

.field private static pause:I

.field private static resume:Z


# instance fields
.field IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Lccsansan/dt/resume;

.field final synthetic deleteDownItem:Lccsanandroid/content/Context;

.field final synthetic getDownloadedList:Lccsansan/i/addDownloadListener;

.field final synthetic getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

.field getDownloadingList:I

.field final synthetic getDownloadingRecordByUrl:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

.field removeDownloadListener:I

.field unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    const/16 v1, 0x74

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->deleteDownList:I

    sput-boolean v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->resume:Z

    sput-boolean v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedCount:Z

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadStatusByUrl:[C

    return-void

    :array_0
    .array-data 2
        0xb5s
        0xe9s
        0xe8s
        0xe3s
        0xb8s
        0xebs
        0xe2s
        0xc0s
        0xd5s
        0xd8s
        0xdds
        0xe0s
        0xdbs
        0x94s
        0xe7s
        0xdcs
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsansan/dt/resume;Lccsanandroid/content/Context;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/dt/resume;

    iput-object p3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:Lccsansan/i/addDownloadListener;

    iput-object p5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Z

    .line 3
    iput-boolean p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Z

    .line 4
    iput p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    .line 5
    iput p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:I

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadStatusByUrl:[C

    .line 1166
    sget v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->deleteDownList:I

    .line 1168
    sget-boolean v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->resume:Z

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
    sget-boolean p3, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedCount:Z

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
.method public callBackOnUIThread()V
    .locals 10

    .line 6
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 1
    iget-boolean v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Z

    :try_start_0
    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Z

    if-nez v1, :cond_5

    .line 6
    :goto_0
    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_5

    goto :goto_2

    :catchall_1
    move-exception v0

    throw v0

    .line 1
    :cond_1
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1
    :goto_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Z

    if-nez v0, :cond_3

    .line 3
    const/16 v0, 0x43

    goto :goto_3

    :cond_3
    const/16 v0, 0x22

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 1
    :pswitch_0
    iget v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    iget v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:I

    add-int/2addr v0, v5

    .line 2
    invoke-static {v1}, Lccsansan/bt/getDownloadedRecordByUrl;->removeDownloadListener(I)I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Lccsanandroid/content/Context;

    iget v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:Lccsansan/i/addDownloadListener;

    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    invoke-static {v0, v1, v2, v3, v5}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 1
    :catchall_2
    move-exception v0

    throw v0

    .line 3
    :cond_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Lccsanandroid/content/Context;

    iget v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:Lccsansan/i/addDownloadListener;

    iget-object v4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    .line 6
    :goto_4
    goto :goto_9

    .line 3
    :cond_5
    :goto_5
    :pswitch_1
    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7f

    const-string v1, "\u0086\u0084\u0090\u008f\u008e\u0083\u0084\u0087\u008e\u0084\u008a\u008e\u008d\u0084\u008c\u0089\u008b\u0085\u008a\u0089\u0084\u0088\u0087\u0086\u0084\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v4, v0, v4, v1}, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "LandPageViewControl"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    iget v7, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:I

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    goto :goto_6

    :cond_6
    const/16 v2, 0x21

    :goto_6
    packed-switch v2, :pswitch_data_2

    .line 6
    const-string v0, "0"

    :goto_7
    move-object v8, v0

    goto :goto_8

    .line 3
    :pswitch_2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 6
    :cond_7
    const-string v0, "1"

    goto :goto_7

    :goto_8
    iget-boolean v9, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Z

    invoke-static/range {v3 .. v9}, Lccsansan/bn/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x43
        :pswitch_2
    .end packed-switch
.end method

.method public execute()V
    .locals 5

    .line 9
    nop

    .line 6
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/dt/resume;

    invoke-virtual {v1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/dt/resume;

    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v2

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lccsansan/au/unifiedDownload;->addDownloadListener(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;Z)Z

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/dt/resume;

    invoke-virtual {v1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Z

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 9
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 6
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 9
    goto :goto_1

    .line 3
    :pswitch_0
    nop

    .line 9
    :goto_1
    goto :goto_2

    .line 3
    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v0, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;Z)Z

    .line 4
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/dt/resume;

    invoke-virtual {v1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    const/16 v1, 0x32

    goto :goto_3

    :cond_3
    const/16 v1, 0x30

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 9
    :pswitch_1
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->pause:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 6
    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 9
    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :cond_4
    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Z

    .line 9
    :goto_4
    nop

    .line 8
    :goto_5
    invoke-static {}, Lccsansan/bt/getDownloadingList;->unifiedDownload()I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    .line 9
    invoke-static {}, Lccsansan/au/unifiedDownload;->addDownloadListener()I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch
.end method
