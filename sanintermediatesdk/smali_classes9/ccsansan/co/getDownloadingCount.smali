.class public Lccsansan/co/getDownloadingCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/getDownloadingCount$getDownloadingList;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static getDownloadingList:[I


# direct methods
.method public static synthetic $r8$lambda$DnsGQQ7GH-pgkRhxn_MU31gyxJc(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;Lccsansan/co/resolveUrl;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;Lccsansan/co/resolveUrl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GLa6wsM9YaYTjgO2ERreu-RrLEE(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;Lccsansan/co/resolveUrl;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsansan/co/getDownloadingCount;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;Lccsansan/co/resolveUrl;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/co/getDownloadingCount;->getDownloadingList:[I

    return-void

    :array_0
    .array-data 4
        0x51dc7191
        -0x307fd3ca
        -0x970ebe8
        -0x1ee8d2ca
        0xd8609bc
        0x604cb0de
        0x5772127a
        0x2e35103a
        -0x5df3045e
        -0x24c965c2
        0x22170258
        -0x200f8a8a
        -0x2839731f
        -0x35dd42b9
        -0x415908d6
        0x6ffbf3ac
        -0x473c4cf9
        -0x5969b6b2
    .end array-data
.end method

.method private static IncentiveDownloadUtils([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsansan/co/getDownloadingCount;->getDownloadingList:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/co/getDownloadingCount$getDownloadingList;)V
    .locals 4

    .line 36
    sget v0, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 36
    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_3
    goto :goto_3

    :pswitch_0
    sget v0, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 27
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 36
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 27
    :goto_2
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 31
    :cond_5
    new-instance v0, Lccsansan/co/trackReportClick;

    invoke-direct {v0, p0, v2}, Lccsansan/co/trackReportClick;-><init>(Lccsanandroid/content/Context;Z)V

    .line 32
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/co/trackReportClick;->getDownloadingList(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/co/trackReportClick;->addDownloadListener(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->setPassengerHBParams()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/co/trackReportClick;->removeDownloadListener(J)V

    .line 35
    new-instance v1, Lccsansan/co/getDownloadingCount$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p3}, Lccsansan/co/getDownloadingCount$$ExternalSyntheticLambda1;-><init>(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;)V

    const-string p1, ""

    invoke-virtual {v0, p2, v1, p1, p0}, Lccsansan/co/trackReportClick;->unifiedDownload(Ljava/lang/String;Lccsansan/co/trackReportClick$addDownloadListener;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void

    .line 36
    :cond_6
    :goto_3
    invoke-interface {p3}, Lccsansan/co/getDownloadingCount$getDownloadingList;->addDownloadListener()V

    sget p0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    const/16 p0, 0x16

    goto :goto_4

    :cond_7
    const/4 p0, 0x5

    :goto_4
    packed-switch p0, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    return-void

    :goto_5
    const/4 p0, 0x7

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

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method private static synthetic IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;Lccsansan/co/resolveUrl;)V
    .locals 10

    .line 26
    sget v0, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "AD.VastHelper"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    const/16 v0, 0x14

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 16
    :goto_1
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    cmp-long v9, v7, v3

    rsub-int/lit8 v3, v9, 0x33

    invoke-static {v6, v3}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadingCount()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/bw/getErrorCode;->getDownloadedRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 26
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_1

    .line 22
    invoke-interface {p1}, Lccsansan/co/getDownloadingCount$getDownloadingList;->addDownloadListener()V

    .line 26
    :goto_3
    :pswitch_0
    goto/16 :goto_6

    .line 24
    :cond_3
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long v7, v5, v3

    add-int/lit8 v7, v7, 0x44

    invoke-static {v0, v7}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 26
    sget p0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    const/16 p0, 0x5d

    goto :goto_4

    :cond_4
    const/16 p0, 0x35

    :goto_4
    const/16 p2, 0x1e

    packed-switch p0, :pswitch_data_2

    new-array p0, p2, [I

    fill-array-data p0, :array_2

    const/16 p2, 0x41

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v3, 0x1

    cmp-long v5, v0, v3

    div-int/2addr p2, v5

    invoke-static {p0, p2}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 24
    :pswitch_2
    new-array p0, p2, [I

    fill-array-data p0, :array_3

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    cmp-long p2, v0, v3

    add-int/lit8 p2, p2, 0x3b

    invoke-static {p0, p2}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 26
    nop

    :goto_5
    invoke-interface {p1, p0}, Lccsansan/co/getDownloadingCount$getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_6
    sget p0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x35
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        -0x136960e0
        -0x2fe89f74
        0x124c8c02
        0x5aabd1a5
        0x18c7c169
        0x2e111a73
        -0x57a4672f
        0x27092137
        0x71fdba7c
        0x7e35aeed
        -0xe871fd8
        -0x5c096d08
        -0x1e1e89c
        0x1789e753
        0x393dd4ea
        0x3649b39a
        -0x65991930
        -0x1077f832
        0x144977c5
        0x64a946e8
        0x40ddbeb3
        0xfb8dbc
        -0x4dd9c47e
        -0x75f552e4
        0x6989590c
        -0x7753b13b
    .end array-data

    :array_1
    .array-data 4
        -0x136960e0
        -0x2fe89f74
        0x124c8c02
        0x5aabd1a5
        0x18c7c169
        0x2e111a73
        -0x57a4672f
        0x27092137
        0x71fdba7c
        0x7e35aeed
        -0xe871fd8
        -0x5c096d08
        -0x1e1e89c
        0x1789e753
        0x393dd4ea
        0x3649b39a
        0x91d5262
        0x66afb9b6
        0x6e86adbf
        0x47d583db
        0x470f066c
        -0x3021551e
        -0x6111fcdd
        0x7f093960
        -0x37f8a886
        0x55ee7c7a
        0x8d0b0cf
        -0x417b4e51
        0x7aeab252
        0x7aef4d20
        0x40ddbeb3
        0xfb8dbc
        -0x69751c05
        0x65a77d2a
        0x7a42929b
        0x29bea906
    .end array-data

    :array_2
    .array-data 4
        -0x136960e0
        -0x2fe89f74
        0x124c8c02
        0x5aabd1a5
        0x18c7c169
        0x2e111a73
        -0x57a4672f
        0x27092137
        0x71fdba7c
        0x7e35aeed
        -0xe871fd8
        -0x5c096d08
        -0x1e1e89c
        0x1789e753
        0x393dd4ea
        0x3649b39a
        0x91d5262
        0x66afb9b6
        0x6e86adbf
        0x47d583db
        0x470f066c
        -0x3021551e
        -0x6111fcdd
        0x7f093960
        -0x37f8a886
        0x55ee7c7a
        0x8d0b0cf
        -0x417b4e51
        0x7aeab252
        0x7aef4d20
    .end array-data

    :array_3
    .array-data 4
        -0x136960e0
        -0x2fe89f74
        0x124c8c02
        0x5aabd1a5
        0x18c7c169
        0x2e111a73
        -0x57a4672f
        0x27092137
        0x71fdba7c
        0x7e35aeed
        -0xe871fd8
        -0x5c096d08
        -0x1e1e89c
        0x1789e753
        0x393dd4ea
        0x3649b39a
        0x91d5262
        0x66afb9b6
        0x6e86adbf
        0x47d583db
        0x470f066c
        -0x3021551e
        -0x6111fcdd
        0x7f093960
        -0x37f8a886
        0x55ee7c7a
        0x8d0b0cf
        -0x417b4e51
        0x7aeab252
        0x7aef4d20
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 4

    .line 37
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_3

    :pswitch_0
    sget v0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_3
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    :pswitch_1
    const/4 v1, 0x0

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12

    .line 112
    sget v0, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, ":"

    packed-switch v0, :pswitch_data_0

    .line 0
    const-wide/16 v4, 0x0

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 111
    array-length v3, p0

    sub-int/2addr v3, v1

    goto :goto_1

    .line 112
    :pswitch_0
    const-wide/16 v4, 0x1

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 111
    array-length v3, p0

    add-int/2addr v3, v2

    .line 112
    :goto_1
    sget v4, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x6f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 111
    :cond_1
    :goto_2
    if-ltz v3, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 112
    goto :goto_4

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    array-length v0, p0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-double v8, v0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long v6, v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :goto_4
    sget p0, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 111
    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 112
    goto :goto_6

    :pswitch_2
    return-object v0

    :goto_6
    const/16 p0, 0x45

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7

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
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;ZLccsansan/co/getDownloadingCount$getDownloadingList;)V
    .locals 4

    .line 15
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 15
    sget v2, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/16 v2, 0x37

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 15
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 15
    :pswitch_0
    sget v2, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 1
    :cond_3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance v0, Lccsansan/co/trackReportClick;

    invoke-direct {v0, p0, p3}, Lccsansan/co/trackReportClick;-><init>(Lccsanandroid/content/Context;Z)V

    .line 9
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lccsansan/co/trackReportClick;->getDownloadingList(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lccsansan/co/trackReportClick;->addDownloadListener(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->setPassengerHBParams()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/co/trackReportClick;->removeDownloadListener(J)V

    .line 12
    new-instance p3, Lccsansan/co/getDownloadingCount$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p4}, Lccsansan/co/getDownloadingCount$$ExternalSyntheticLambda0;-><init>(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;)V

    const-string p1, ""

    invoke-virtual {v0, p2, p3, p1, p0}, Lccsansan/co/trackReportClick;->unifiedDownload(Ljava/lang/String;Lccsansan/co/trackReportClick$addDownloadListener;Ljava/lang/String;Lccsanandroid/content/Context;)V

    .line 15
    return-void

    .line 13
    :cond_5
    :goto_2
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x16

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {v1, v1}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x2a

    invoke-static {p2, p3}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AD.VastHelper"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 1
    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    .line 15
    :pswitch_2
    sget p0, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    .line 13
    :cond_7
    nop

    .line 15
    const-string p0, "No Vast Content"

    invoke-interface {p4, p0}, Lccsansan/co/getDownloadingCount$getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        -0x136960e0
        -0x2fe89f74
        0x124c8c02
        0x5aabd1a5
        0x18c7c169
        0x2e111a73
        -0x57a4672f
        0x27092137
        -0x504d260e
        -0x409eec84
        -0x3d753a5b
        -0x674f301d
        -0x254ae0aa
        0x1eedd1ec
        0x1835fc50
        0x6ec58ac6
        -0x21a6bfac
        0x4177d826
        0x1a8801a0
        0x4af1407
        0x6989590c
        -0x7753b13b
    .end array-data
.end method

.method private static synthetic unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsansan/co/getDownloadingCount$getDownloadingList;Lccsansan/co/resolveUrl;)V
    .locals 10

    .line 108
    const-string v0, "AD.VastHelper"

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->addDownloadListener()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    nop

    .line 1
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/execute;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadingCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v3

    invoke-virtual {v2}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v3

    invoke-virtual {v2}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    sget v3, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 108
    :cond_2
    nop

    .line 8
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v3

    invoke-virtual {v2}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lccsansan/dt/getDownloadStatusByUrl;->unifiedDownload(F)V

    :cond_4
    nop

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vastMediaXmlManager.getMediaUrl() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getType() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Lccsansan/co/execute;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getWidth() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " getHeight() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_5
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->removeDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 37
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    :goto_2
    const-string v5, "  content = "

    packed-switch v2, :pswitch_data_0

    .line 108
    sget v2, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_25

    goto/16 :goto_14

    .line 32
    :pswitch_0
    :try_start_2
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->deleteDownItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    const/16 v2, 0x31

    goto :goto_4

    :cond_9
    const/16 v2, 0x1e

    :goto_4
    const/16 v6, 0x61

    packed-switch v2, :pswitch_data_1

    .line 47
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_d

    .line 32
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/shouldTryHandlingAction;

    if-nez v2, :cond_a

    goto :goto_3

    .line 35
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vastVideoConfig.getFractionalTrackers() Event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v7, Lccsansan/co/unifiedDownload;->FIRST_QUARTILE:Lccsansan/co/unifiedDownload;

    invoke-virtual {v7}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v7, :cond_b

    .line 37
    const/16 v7, 0x3d

    goto :goto_5

    :cond_b
    const/4 v7, 0x7

    :goto_5
    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_2

    sget v7, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v7, v7, 0x6d

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    packed-switch v7, :pswitch_data_3

    :try_start_3
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 36
    :pswitch_2
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 37
    const/4 v6, 0x4

    goto :goto_7

    :cond_d
    nop

    :goto_7
    packed-switch v6, :pswitch_data_4

    goto :goto_9

    :goto_8
    invoke-static {v6}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    array-length v7, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_f

    .line 108
    :goto_9
    sget v6, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/2addr v6, v3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_e

    .line 37
    :try_start_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v6, 0x7

    :try_start_6
    div-int/2addr v6, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    .line 108
    :catchall_0
    move-exception p0

    throw p0

    .line 37
    :cond_e
    :try_start_7
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;)V

    .line 39
    :cond_f
    :goto_a
    :pswitch_3
    sget-object v6, Lccsansan/co/unifiedDownload;->MIDPOINT:Lccsansan/co/unifiedDownload;

    invoke-virtual {v6}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 37
    const/4 v6, 0x1

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_b
    packed-switch v6, :pswitch_data_5

    .line 39
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 40
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsansan/dt/getPackageNameByRecord;->removeDownloadListener(Ljava/lang/String;)V

    .line 108
    nop

    .line 42
    :cond_11
    :pswitch_4
    sget-object v6, Lccsansan/co/unifiedDownload;->THIRD_QUARTILE:Lccsansan/co/unifiedDownload;

    invoke-virtual {v6}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v6, :cond_8

    .line 37
    sget v6, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_13

    :try_start_8
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    :goto_c
    packed-switch v6, :pswitch_data_6

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    throw p0

    .line 42
    :cond_13
    :try_start_a
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 43
    :pswitch_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_3

    .line 37
    :catchall_2
    move-exception p0

    throw p0

    .line 47
    :goto_d
    :try_start_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/shouldTryHandlingAction;

    if-nez v2, :cond_15

    goto :goto_e

    .line 50
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vastVideoConfig.getClickTrackers() Event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 52
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    goto :goto_e

    .line 56
    :cond_16
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 37
    const/4 v2, 0x0

    goto :goto_10

    :cond_18
    const/4 v2, 0x1

    :goto_10
    packed-switch v2, :pswitch_data_7

    .line 65
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl()Ljava/util/List;

    move-result-object v1

    goto :goto_11

    .line 56
    :pswitch_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/shouldTryHandlingAction;

    if-nez v2, :cond_19

    goto :goto_f

    .line 59
    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vastVideoConfig.getAbsoluteTrackers() Event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v7, Lccsansan/co/unifiedDownload;->START:Lccsansan/co/unifiedDownload;

    invoke-virtual {v7}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 61
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v7

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils(Ljava/lang/String;)V

    goto :goto_f

    .line 65
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v2, :cond_1c

    .line 37
    sget v2, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v2, v6

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1a

    .line 65
    :cond_1a
    :try_start_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/shouldTryHandlingAction;

    if-nez v2, :cond_1b

    .line 108
    goto :goto_12

    .line 68
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vastVideoConfig.getCloseTrackers() Event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 71
    :cond_1c
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadedList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/shouldTryHandlingAction;

    if-nez v2, :cond_1e

    goto :goto_13

    .line 74
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vastVideoConfig.getCompleteTrackers() Event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v6, Lccsansan/co/unifiedDownload;->COMPLETE:Lccsansan/co/unifiedDownload;

    invoke-virtual {v6}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 76
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_13

    .line 80
    :cond_1f
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vastVideoConfig.Duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/co/getDownloadingCount;->getDownloadingList(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingList(J)V

    .line 85
    :cond_20
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vastVideoConfig.Title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;)V

    .line 90
    :cond_21
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vastVideoConfig.ClickThrough = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsansan/dt/removeDownloadListener;->getDownloadedList(Ljava/lang/String;)V

    :cond_22
    nop

    .line 95
    invoke-virtual {p2, v4}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p2, v4}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/co/ActionTypeDetailPage;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v1, :cond_24

    .line 37
    sget v1, Lccsansan/co/getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_23

    .line 95
    :cond_23
    nop

    .line 96
    :try_start_d
    invoke-virtual {p2, v4}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/co/ActionTypeDetailPage;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image_url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/co/ActionTypeDetailPage;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p2, v4}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/co/ActionTypeDetailPage;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lccsansan/dt/getDownloadStatusByUrl;->unifiedDownload(Ljava/util/List;)V

    .line 102
    :cond_24
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->pause()V

    .line 103
    invoke-virtual {p0, p2}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/Object;)V

    .line 105
    invoke-interface {p1}, Lccsansan/co/getDownloadingCount$getDownloadingList;->addDownloadListener()V

    goto :goto_15

    .line 23
    :cond_25
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/shouldTryHandlingAction;

    if-nez v2, :cond_26

    goto/16 :goto_1

    .line 26
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vastVideoConfig.getImpressionTrackers Event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 28
    invoke-virtual {v2}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 105
    :catch_0
    move-exception p0

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vast protocol error = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lccsansan/co/getDownloadingCount$getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
