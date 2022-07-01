.class Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/deleteDownItem;->getDownloadingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:[B

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:[S

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I


# instance fields
.field IncentiveDownloadUtils:Ljava/lang/String;

.field addDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/p/deleteDownItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:I

    const/16 v0, 0xf

    sput v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    const v0, -0x3ac2c47d

    sput v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadedList:I

    const v0, 0x7fbf27e5

    sput v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:I

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x4ft
        -0x1et
        -0x4ft
        -0x2at
        -0x23t
        -0x58t
        -0x77t
        -0x45t
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/deleteDownItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/deleteDownItem;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadedRecordByUrl:[S

    sget v6, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadedList:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadedRecordByUrl:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 6

    .line 15
    nop

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, -0x7fbf27e5

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v2

    add-int/2addr v2, v0

    const v0, 0x3ac2c4ac

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    int-to-short v3, v3

    invoke-static {v1}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    add-int/lit8 v4, v4, -0x13

    int-to-byte v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, -0x10

    invoke-static {v2, v0, v3, v4, v5}, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lccsansan/p/addDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lccsansan/p/addDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lccsansan/p/addDownloadListener;->startWatching()V

    .line 6
    iget-object v2, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/deleteDownItem;

    invoke-static {v2}, Lccsansan/p/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/p/deleteDownItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x54

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 8
    iget-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 15
    :pswitch_0
    iget-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 9
    :goto_2
    new-instance v0, Lccsansan/p/addDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lccsansan/p/addDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lccsansan/p/addDownloadListener;->startWatching()V

    .line 12
    iget-object v2, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/deleteDownItem;

    invoke-static {v2}, Lccsansan/p/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/p/deleteDownItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Lccsanandroid/util/Pair;

    iget-object v2, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/util/Pair;

    .line 15
    :cond_2
    :pswitch_1
    new-instance v0, Lccsanandroid/util/Pair;

    const-string v2, ""

    invoke-direct {v0, p1, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/util/Pair;

    sget p1, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x44

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    sget v0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3
    const/16 v0, 0x43

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    .line 3
    sget-object v0, Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload:[Ljava/lang/String;

    array-length v3, v0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    .line 3
    sget-object v0, Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload:[Ljava/lang/String;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 4
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    .line 14
    sget v2, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v2, v2, 0xf

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 3
    const/16 v2, 0x4c

    goto :goto_2

    :cond_2
    const/16 v2, 0x3d

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 14
    :pswitch_1
    nop

    .line 8
    :goto_3
    move-object v2, v5

    goto :goto_4

    :cond_3
    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 14
    invoke-static {}, Lccsansan/bn/addDownloadListener;->unifiedDownload()V

    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method
