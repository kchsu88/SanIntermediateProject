.class public Lccsansan/be/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:[B

.field private static final addDownloadListener:Ljava/lang/String;

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:J

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:[C

.field private static getDownloadingRecordByUrl:C

.field private static removeDownloadListener:J

.field private static final unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    invoke-static {}, Lccsansan/be/removeDownloadListener;->getDownloadingList()V

    const/16 v2, 0x8

    .line 1
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils:[B

    .line 2
    invoke-static {}, Lccsansan/be/getDownloadedRecordByUrl;->unifiedDownload()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    sget v2, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".myug.MyUGProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4
    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 2
    goto :goto_2

    .line 4
    :pswitch_1
    :try_start_0
    array-length v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const-string v0, "content://com.xyz.myug.XYUGProvider"

    .line 2
    :goto_3
    sput-object v0, Lccsansan/be/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    add-int/lit16 v1, v1, 0xf5

    const v3, 0xddb4

    invoke-static {v2, v2}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v2, v5, v2

    add-int/2addr v2, v3

    int-to-char v2, v2

    const/16 v3, 0x30

    invoke-static {v3}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    invoke-static {v1, v2, v3}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/be/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :try_start_1
    array-length v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :cond_2
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

    :array_0
    .array-data 1
        0x75t
        0x73t
        0x68t
        0x61t
        0x72t
        0x65t
        0x69t
        0x74t
    .end array-data
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

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

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/be/IncentiveDownloadUtils;)V
    .locals 13

    .line 44
    nop

    .line 11
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object p0

    .line 12
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 14
    invoke-static {}, Lccsansan/be/getDownloadedRecordByUrl;->unifiedDownload()Z

    move-result v1

    const-string v2, "binder"

    const/4 v3, 0x1

    const/16 v4, 0xb

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Lccsansan/be/removeDownloadListener$unifiedDownload;

    invoke-direct {v1, p1}, Lccsansan/be/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/be/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBinder(Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 44
    sget v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 29
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".aidl.RemoteSupportCallback"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v7

    .line 31
    new-array v3, v3, [Ljava/lang/Class;

    const-class v9, Lccsansan/be/IncentiveDownloadUtils;

    aput-object v9, v3, v7

    invoke-static {v1, v8, v3}, Lccsansan/bw/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Lccsanandroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBinder(Ljava/lang/String;Lccsanandroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke old QZ version support reflection exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    int-to-char v3, v3

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x15

    invoke-static {v2, v3, v8}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v4}, Lccsansan/be/addDownloadListener;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lccsansan/be/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;)V

    :goto_1
    const-string v1, ""

    invoke-static {v1, v1, v7, v7}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v10, v8, v5

    rsub-int/lit8 v8, v10, 0x16

    invoke-static {v2, v3, v8}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 40
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6c2a\ue2b9\ued26\ucf8a\u2982\ue274\u498c\ue3bd\u65d7\u5046\u6b14\u2e8b\u6937\uce07\ue014\ue17b\uca85\ue253\u5780\u4616\ufa28\u727e\uad2c\u91b7\ud456\ub60a\u80b2\u8fd0\udf96\uf757\u8449\u43c7\u0296\u1f44\ud5f7\uc1e1\u1ed2\u9486"

    const-string v9, "\uc2f2\u349f\u47a0\u6e47"

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v10

    shr-int/lit8 v10, v10, 0x16

    int-to-char v10, v10

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v11

    shr-int/lit8 v11, v11, 0x16

    const-string v12, "\ub057\ua6b4\u4e64\ub89f"

    invoke-static {v8, v9, v10, v11, v12}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lccsansan/be/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v8}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    const-string v3, "query_support_si"

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v3, v8, v0}, Lccsanandroid/content/ContentResolver;->call(Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    rsub-int v2, v2, 0x85

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    cmpl-float v3, v3, v7

    add-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    rsub-int/lit8 v7, v7, 0x20

    invoke-static {v2, v3, v7}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v0

    int-to-byte v0, v0

    rsub-int/lit8 v0, v0, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    cmp-long v7, v2, v5

    add-int/lit8 v7, v7, 0x14

    invoke-static {v0, v1, v7}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v4}, Lccsansan/be/addDownloadListener;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v4, p0}, Lccsansan/be/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V
    .locals 2

    .line 19
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x52

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsansan/be/addDownloadListener;->getDownloadingList(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lccsansan/be/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lccsansan/be/addDownloadListener;->getDownloadingList(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lccsansan/be/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;)V

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

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/be/unifiedDownload;)V
    .locals 2

    .line 2
    nop

    .line 0
    if-eqz p0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    invoke-interface {p0}, Lccsansan/be/unifiedDownload;->getDownloadingList()V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/be/removeDownloadListener;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/be/removeDownloadListener;->removeDownloadListener:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static addDownloadListener(Lccsansan/da/removeDownloadListener;)V
    .locals 3

    .line 101
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/16 v0, 0x30

    if-eqz p0, :cond_1

    .line 101
    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x1c

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_5

    :pswitch_0
    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 94
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    .line 101
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/16 p0, 0x5d

    goto :goto_1

    :cond_3
    const/16 p0, 0x44

    goto :goto_1

    .line 97
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    const/16 v1, 0x20

    goto :goto_2

    :cond_5
    const/16 v1, 0x57

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 100
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    goto :goto_3

    .line 98
    :pswitch_1
    invoke-static {p0}, Lccsansan/au/getDownloadingList;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)V

    .line 100
    :goto_3
    const-string p0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    invoke-static {v1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p0, v0, v1}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    const-string v0, "remove the dest file!"

    .line 101
    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    :goto_4
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/be/IncentiveDownloadUtils;)Z
    .locals 4

    .line 29
    nop

    .line 20
    sget-object v0, Lccsansan/be/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, v0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 29
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 29
    const/16 p0, 0x2759

    .line 21
    invoke-static {p1, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    return v2

    .line 20
    :pswitch_0
    const/16 p0, 0x3e8

    .line 21
    invoke-static {p1, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    return v3

    .line 24
    :cond_1
    invoke-static {p0, v0}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const v0, 0x3dcdfc

    if-ge p0, v0, :cond_3

    .line 21
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x725d

    .line 25
    invoke-static {p1, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    goto :goto_1

    .line 24
    :cond_2
    const/16 p0, 0x3e9

    .line 25
    invoke-static {p1, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    const/4 v2, 0x0

    .line 29
    :goto_1
    return v2

    .line 28
    :cond_3
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p0, v0, :cond_4

    .line 25
    const/16 p0, 0x18

    goto :goto_2

    :cond_4
    const/16 p0, 0x43

    :goto_2
    packed-switch p0, :pswitch_data_1

    .line 29
    goto :goto_3

    :pswitch_1
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    .line 28
    :cond_5
    const/16 p0, 0x3ea

    .line 29
    invoke-static {p1, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return v3

    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    const/16 v0, 0x105

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/be/removeDownloadListener;->getDownloadingList:[C

    const-wide v0, -0x51ea085a98b0f8d0L    # -1.1042801743217319E-86

    sput-wide v0, Lccsansan/be/removeDownloadListener;->removeDownloadListener:J

    const-wide v0, 0x6e4747a0349fc2f2L    # 1.6830066456291944E223

    sput-wide v0, Lccsansan/be/removeDownloadListener;->getDownloadStatusByUrl:J

    const/4 v0, 0x0

    sput-char v0, Lccsansan/be/removeDownloadListener;->getDownloadingRecordByUrl:C

    sput v0, Lccsansan/be/removeDownloadListener;->deleteDownItem:I

    return-void

    nop

    :array_0
    .array-data 2
        0x53s
        0x759s
        0xe0cs
        0x15f5s
        0x1caes
        0x2393s
        0x2b45s
        0x3219s
        0x39ees
        0x40c3s
        0x4794s
        0x4f71s
        0x562cs
        0x5d1cs
        0x64eds
        0x6bb1s
        0x736es
        0x7a51s
        -0x7ef9s
        -0x770bs
        -0x704es
        -0x7bd0s
        -0x7cf9s
        -0x75b1s
        -0x6e5as
        -0x670es
        -0x5834s
        -0x50d0s
        -0x4999s
        -0x4256s
        -0x3b63s
        -0x3c28s
        -0x34dbs
        -0x2d8bs
        -0x26f7s
        -0x1f66s
        -0x101as
        -0x8d7s
        -0x1f0s
        0x57cs
        0xcb1s
        0xbeds
        0x1289s
        0x1a0as
        0x217cs
        0x28bas
        0x378as
        0x3edcs
        0x463as
        0x4d6as
        0x5409s
        0x69s
        0x75es
        0xe16s
        0x15ffs
        0x1cabs
        0x2395s
        0x2b69s
        0x323es
        0x39f3s
        0x40c4s
        0x4781s
        0x4f7cs
        0x562cs
        0x5d50s
        0x64c3s
        0x6bbfs
        0x7370s
        0x7a49s
        -0x7edbs
        -0x7718s
        -0x704cs
        -0x6930s
        -0x61bbs
        -0x5ad8s
        -0x531ds
        -0x4c2bs
        -0x4570s
        -0x3d9cs
        -0x36d7s
        -0x2fe1s
        -0x2832s
        -0x2110s
        -0x19c3s
        -0x12f0s
        0x283es
        0x2f09s
        0x2641s
        0x3da8s
        0x34fcs
        0xbc2s
        0x33es
        0x1a69s
        0x11a4s
        0x6893s
        0x6fd6s
        0x672bs
        0x7e7bs
        0x7507s
        0x4c84s
        0x43efs
        0x5b38s
        0x5212s
        -0x56a5s
        -0x5f5ds
        -0x5849s
        -0x4137s
        -0x49e8s
        -0x728ds
        -0x7b09s
        -0x6476s
        -0x6d28s
        -0x15cfs
        -0x1e8es
        -0x7f9s
        -0x6fs
        -0x912s
        -0x31c5s
        -0x3afes
        -0x23e5s
        -0x2c19s
        0x2af1s
        0x21ces
        0x391bs
        0x3062s
        0x3787s
        0xe86s
        0x5c3s
        0x1d2fs
        0x1437s
        0x6b07s
        0x62cas
        0x79a7s
        0x73s
        0x745s
        0xe10s
        0x15e0s
        0x1cafs
        0x2382s
        0x2b54s
        0x3203s
        0x39e9s
        0x40dcs
        0x4785s
        0x4f7es
        0x5623s
        0x5d15s
        0x64e9s
        0x6bbes
        0x7373s
        0x7a44s
        -0x7effs
        -0x7704s
        -0x7054s
        -0x6936s
        -0x6200s
        -0x5ac1s
        -0x5312s
        -0x4c1es
        -0x457bs
        -0x3d9ds
        -0x36cbs
        -0x2fe4s
        -0x282cs
        -0x2110s
        0x65d1s
        0x62aes
        0x6bf6s
        0x700bs
        0x7953s
        0x4621s
        0x4e8ds
        0x57cas
        0x5c12s
        0x2520s
        0x226bs
        0x2a8as
        0x33f6s
        0x38e1s
        0x12cs
        0xe5bs
        0x169es
        0x1fa3s
        -0x1b0ds
        -0x12d4s
        -0x15a2s
        -0xc9ds
        -0x44ds
        -0x3f33s
        -0x36e2s
        -0x29d4s
        -0x208cs
        0x69s
        0x75es
        0xe16s
        0x15ffs
        0x1cabs
        0x2395s
        0x2b00s
        0x323fs
        0x39ecs
        0x40d4s
        0x47c0s
        0x4f41s
        0x561as
        0x5d50s
        0x64d6s
        0x6bb5s
        0x7372s
        0x7a43s
        -0x7ef7s
        -0x7701s
        -0x7052s
        -0x6930s
        -0x61b7s
        -0x5ac2s
        -0x530ds
        -0x4c3cs
        -0x457fs
        -0x3d84s
        -0x36d4s
        -0x2fb0s
        -0x282es
        -0x214bs
        -0x199as
        -0x12a4s
        -0xbfbs
        -0x40ds
        0x2b4s
        0x999s
        0x114fs
        0x183es
        0x1fa0s
        0x26d5s
        0x2d98s
        0x3573s
        0x3c25s
        0x4300s
        0x4ad4s
        0x51b9s
        0x596fs
        0x605es
        0x6740s
        0x6eads
        0x75e0s
        -0x2265s
        -0x2540s
        -0x2c45s
        -0x37ads
        -0x3ee6s
        -0x1d8s
        -0x905s
        -0x107bs
        -0x1bb0s
        -0x62d5s
        -0x65dbs
        -0x6d2fs
        -0x7463s
        -0x7f5fs
        -0x46a0s
        -0x49b5s
    .end array-data
.end method

.method static synthetic getDownloadingList(Lccsansan/be/unifiedDownload;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/unifiedDownload;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/be/IncentiveDownloadUtils;)Z
    .locals 3

    .line 18
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 6
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_3

    .line 18
    :catchall_0
    move-exception p0

    throw p0

    .line 13
    :goto_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_4

    .line 6
    :goto_3
    :pswitch_1
    const/16 p0, 0x3eb

    .line 7
    invoke-static {p2, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    return v1

    .line 11
    :cond_2
    :goto_4
    invoke-static {p1}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    sget p1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const-string v2, "base.apk"

    if-eqz p1, :cond_3

    .line 13
    invoke-static {p0, v2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    const/16 p1, 0x33

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 6
    :catchall_1
    move-exception p0

    throw p0

    .line 12
    :cond_3
    nop

    .line 13
    invoke-static {p0, v2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 16
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p0

    if-nez p0, :cond_5

    .line 13
    const/16 p0, 0x2e

    goto :goto_6

    :cond_5
    const/16 p0, 0x23

    :goto_6
    packed-switch p0, :pswitch_data_2

    .line 16
    const-string p0, ""

    invoke-static {p0, p0, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    const/high16 v0, -0x1000000

    invoke-static {v1, v1, v1}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-char v0, v0

    invoke-static {p0}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x14

    invoke-static {p1, v0, p0}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 17
    const-string p1, "File type wrong"

    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3ed

    .line 18
    invoke-static {p2, p0}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/be/IncentiveDownloadUtils;I)V

    goto :goto_7

    :pswitch_2
    return v0

    :goto_7
    return v1

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
    .packed-switch 0x23
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;)Z
    .locals 3

    .line 5
    nop

    .line 1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    return v0

    :cond_0
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-le p0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    goto :goto_2

    :pswitch_0
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x15

    goto :goto_1

    :cond_2
    const/16 p0, 0x1f

    :goto_1
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/be/removeDownloadListener;->getDownloadStatusByUrl:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/be/removeDownloadListener;->deleteDownItem:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/be/removeDownloadListener;->getDownloadingRecordByUrl:C

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

.method static synthetic removeDownloadListener(ILjava/lang/String;Lccsansan/be/unifiedDownload;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/be/removeDownloadListener;->unifiedDownload(ILjava/lang/String;Lccsansan/be/unifiedDownload;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/getDownloadingList;)V
    .locals 11

    .line 45
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 30
    :cond_0
    invoke-static {p1}, Lccsansan/be/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v2, v2}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    const-string v7, "\u3581\ud397\u2f77\u439d\ub9d4\u3a25\ud452\uddcc\ueb4d\u8dfa\uacb8\u34eb\u7389\u85a5\u3d4a\uba70\uebe5\u1c5d\u8084\u38ff\ueaa2\u88d5\uc1fa\u9cc7"

    const-string v8, "\uc2f2\u349f\u47a0\u6e47"

    const-string v9, "\ud07e\u91a6\u8e1a\u75ae"

    invoke-static {v7, v8, v5, v6, v9}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x1

    int-to-char v6, v6

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v3

    add-int/lit8 v9, v9, 0x14

    invoke-static {v5, v6, v9}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lccsansan/be/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lccsansan/be/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x1

    int-to-char v6, v6

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x15

    invoke-static {v5, v6, v7}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    cmp-long v8, v6, v3

    add-int/lit8 v8, v8, 0x16

    const v6, 0x8459

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    cmp-long v7, v9, v3

    rsub-int/lit8 v3, v7, 0x1f

    invoke-static {v8, v6, v3}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v5, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p0, p3, v0, p2}, Lccsansan/be/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/be/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-static {p0, p3, p1, p2}, Lccsansan/be/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/be/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, v2}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x33

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p2

    shr-int/lit8 p2, p2, 0x8

    int-to-char p2, p2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p3

    shr-int/lit8 p3, p3, 0x18

    rsub-int/lit8 p3, p3, 0x22

    invoke-static {p1, p2, p3}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    int-to-char p2, p2

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    invoke-static {p1, p2, p3}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p0, p3, p1, p2}, Lccsansan/be/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/be/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x55

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    rsub-int p3, p3, 0x2857

    int-to-char p3, p3

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x30

    invoke-static {p2, p3, v0}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    int-to-char p2, p2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    add-int/lit8 p3, p3, 0x15

    invoke-static {p1, p2, p3}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    :goto_0
    return-void
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/be/removeDownloadListener$getDownloadingList;

    invoke-direct {v0, p3, p1}, Lccsansan/be/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/be/unifiedDownload;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/getDownloadingList;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/be/IncentiveDownloadUtils;)V
    .locals 1

    .line 10
    nop

    .line 4
    invoke-static {p0, p1, p2}, Lccsansan/be/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/be/IncentiveDownloadUtils;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    return-void

    .line 7
    :cond_0
    invoke-static {p0, p2}, Lccsansan/be/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/be/IncentiveDownloadUtils;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 10
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x25

    goto :goto_0

    :cond_1
    const/16 p0, 0x2d

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_0
    array-length p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    invoke-static {p0, p2}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/be/IncentiveDownloadUtils;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_1
    array-length p0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 45
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    invoke-static {p0}, Lccsansan/be/removeDownloadListener;->addDownloadListener(Lccsansan/da/removeDownloadListener;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static unifiedDownload(ILjava/lang/String;Lccsansan/be/unifiedDownload;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-eqz p2, :cond_1

    .line 3
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    :cond_2
    invoke-interface {p2, p0, p1}, Lccsansan/be/unifiedDownload;->addDownloadListener(ILjava/lang/String;)V

    :pswitch_0
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/be/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 93
    nop

    .line 57
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object p0

    .line 58
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 59
    const-string v1, "ug_file"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string p2, "sign"

    invoke-virtual {v0, p2, p3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p2, "r_file"

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p3}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-static {}, Lccsansan/be/getDownloadedRecordByUrl;->unifiedDownload()Z

    move-result p2

    const-string v1, "binder"

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 64
    new-instance p2, Lccsansan/be/removeDownloadListener$addDownloadListener;

    invoke-direct {p2, p1}, Lccsansan/be/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/be/getDownloadingList;)V

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putBinder(Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    goto/16 :goto_0

    .line 80
    :cond_0
    const/4 p2, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/lit16 v5, v5, 0xa5

    invoke-static {p2}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x65ff

    int-to-char v6, v6

    invoke-static {p2, v3, v3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    cmpl-float v7, v7, v3

    rsub-int/lit8 v7, v7, 0x1b

    invoke-static {v5, v6, v7}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    new-array v5, p3, [Ljava/lang/Object;

    aput-object p1, v5, p2

    .line 82
    new-array v6, p3, [Ljava/lang/Class;

    const-class v7, Lccsansan/be/getDownloadingList;

    aput-object v7, v6, p2

    invoke-static {v4, v5, v6}, Lccsansan/bw/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 83
    check-cast v4, Lccsanandroid/os/IBinder;

    invoke-virtual {v0, v1, v4}, Lccsanandroid/os/Bundle;->putBinder(Ljava/lang/String;Lccsanandroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    cmpl-float v5, v5, v3

    add-int/lit16 v5, v5, 0xc0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x35

    invoke-static {v5, v6, v7}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-char v5, v5

    invoke-static {p2}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x15

    invoke-static {v4, v5, p2}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Lccsansan/be/addDownloadListener;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lccsansan/be/getDownloadingList;->IncentiveDownloadUtils(ILjava/lang/String;)V

    .line 90
    :goto_0
    :try_start_1
    sget-object p2, Lccsansan/be/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    const-string v1, "action_sx_ix"

    const/4 v4, 0x0

    invoke-virtual {p0, p2, v1, v4, v0}, Lccsanandroid/content/ContentResolver;->call(Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResult exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v3}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result p2

    const-wide/16 v0, 0x0

    cmpl-float p2, p2, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v0

    sub-int/2addr p3, v5

    int-to-char p3, p3

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x15

    invoke-static {p2, p3, v0}, Lccsansan/be/removeDownloadListener;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v2}, Lccsansan/be/addDownloadListener;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lccsansan/be/getDownloadingList;->IncentiveDownloadUtils(ILjava/lang/String;)V

    :goto_1
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lccsansan/be/removeDownloadListener$removeDownloadListener;

    invoke-direct {v1, p1, p0, p2, p3}, Lccsansan/be/removeDownloadListener$removeDownloadListener;-><init>(Lccsansan/p/getDownloadedList;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V

    invoke-static {p0, v0, v1}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/be/IncentiveDownloadUtils;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

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
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
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

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    nop

    .line 46
    invoke-static {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 50
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_5

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 56
    sget p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_3

    .line 52
    :pswitch_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_5

    .line 50
    :goto_3
    const/16 p1, 0x14

    goto :goto_4

    :cond_2
    const/16 p1, 0xa

    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    packed-switch p1, :pswitch_data_2

    :try_start_0
    array-length p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    throw p0

    .line 55
    :goto_5
    :pswitch_2
    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->addDownloadListener(Ljava/io/File;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lccsansan/au/getDownloadingList;->addDownloadListener(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 50
    sget p0, Lccsansan/be/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/be/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    packed-switch v1, :pswitch_data_3

    .line 56
    return-void

    .line 50
    :pswitch_3
    :try_start_1
    array-length p0, v3
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
