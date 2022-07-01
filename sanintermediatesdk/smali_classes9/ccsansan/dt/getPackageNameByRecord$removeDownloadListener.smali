.class public Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/getPackageNameByRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "removeDownloadListener"
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static unifiedDownload:C


# instance fields
.field private getDownloadingList:Ljava/lang/String;

.field private removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedList:I

    const/4 v1, 0x1

    sput v1, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedRecordByUrl:I

    const-wide v1, -0x61ef7634b2c51ab3L    # -7.179796588271404E-164

    sput-wide v1, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener:J

    sput-char v0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload:C

    sput v0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "\uc286\u854c\u5905\u0574\u457f\uc85f\uaa0a\ube86\uc15e\ue710\u3972\uc7eb"

    const-string v1, "\ue54d\u4d3a\u89cb\u9e10"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    const-string v4, "\u78ee\u1976\u8ba3\u99c3"

    invoke-static {v0, v1, v2, v3, v4}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    const-string v0, "resolution"

    .line 4
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const-string v0, "url"

    .line 5
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    sget-wide v5, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload:C

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
.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method
