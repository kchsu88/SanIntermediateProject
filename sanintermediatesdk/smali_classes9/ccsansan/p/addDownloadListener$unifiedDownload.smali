.class Lccsansan/p/addDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:[C

.field private static getDownloadStatusByUrl:Z

.field private static getDownloadedList:Z

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/p/addDownloadListener;

.field removeDownloadListener:Lccsansan/p/getDownloadedList;

.field unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingCount:I

    const/16 v1, 0xf5

    sput v1, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadedRecordByUrl:I

    sput-boolean v0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadedList:Z

    sput-boolean v0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadStatusByUrl:Z

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/addDownloadListener$unifiedDownload;->deleteDownItem:[C

    return-void

    :array_0
    .array-data 2
        0x156s
        0x159s
        0x154s
        0x157s
        0x167s
        0x164s
        0x16cs
        0x168s
        0x15as
        0x15es
        0x163s
        0x169s
        0x161s
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/p/addDownloadListener;

    iput-object p2, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 3
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    .line 4
    const-string p2, ""

    iput-object p2, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsansan/p/addDownloadListener$unifiedDownload;->deleteDownItem:[C

    .line 1166
    sget v2, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadedRecordByUrl:I

    .line 1168
    sget-boolean v3, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadedList:Z

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
    sget-boolean p3, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadStatusByUrl:Z

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
.method public callBack(Ljava/lang/Exception;)V
    .locals 5

    .line 6
    sget p1, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, p1, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    if-nez v0, :cond_1

    .line 6
    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_3

    .line 6
    :goto_1
    const/16 v3, 0x60

    goto :goto_2

    :cond_3
    const/16 v3, 0x26

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 4
    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 6
    :pswitch_1
    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    .line 4
    :goto_3
    invoke-virtual {p1, v0}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v2, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v2, v1, p1}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    .line 6
    iget-object p1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/p/addDownloadListener;

    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-static {p1, v0}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_1
    .end packed-switch
.end method

.method public execute()V
    .locals 8

    .line 21
    nop

    .line 1
    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/p/addDownloadListener;

    invoke-static {v0}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/p/addDownloadListener;

    iget-object v4, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-static {v3, v4}, Lccsansan/p/addDownloadListener;->removeDownloadListener(Lccsansan/p/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/p/addDownloadListener;

    invoke-static {v4, v2}, Lccsansan/p/addDownloadListener;->getDownloadingList(Lccsansan/p/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsansan/p/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/p/addDownloadListener;

    invoke-static {v2, v1, v0}, Lccsansan/p/addDownloadListener;->getDownloadingList(Lccsansan/p/addDownloadListener;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v1

    iput-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    const/16 v1, 0x42

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_4

    .line 21
    :pswitch_0
    sget v1, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 8
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    goto :goto_4

    :goto_3
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 21
    :catchall_0
    move-exception v0

    throw v0

    .line 11
    :goto_4
    invoke-static {v0}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    iput-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    if-eqz v0, :cond_3

    .line 13
    iget-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v4, "portal"

    invoke-virtual {v0, v4, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v0, v4, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lccsansan/p/removeDownloadListener;

    invoke-static {v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    const-string v6, "\u008d\u008d\u0081\u008c\u0088\u008b\u008a\u0083\u0085\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    cmp-long v7, v1, v4

    add-int/lit8 v7, v7, 0x7f

    invoke-static {v3, v7, v3, v6}, Lccsansan/p/addDownloadListener$unifiedDownload;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/p/removeDownloadListener;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsansan/p/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lccsansan/p/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$getDownloadingList;

    if-nez v0, :cond_4

    return-void

    .line 21
    :cond_4
    invoke-static {v0}, Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    sget v0, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener$unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
