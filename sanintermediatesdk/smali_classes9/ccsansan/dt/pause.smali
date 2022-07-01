.class public Lccsansan/dt/pause;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static deleteDownItem:J

.field private static getDownloadedList:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:J

.field private removeDownloadListener:Ljava/lang/String;

.field private unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dt/pause;->getDownloadedList:I

    const-wide v0, -0x6e31f5bfac4cc5b3L    # -6.492527336067789E-223

    sput-wide v0, Lccsansan/dt/pause;->deleteDownItem:J

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u3a29\u1967\u7cb0\u53ec\ub735\u8a7b\ue9b2\uccca\u203a\u0743\u5a90\ub9d4\u9d15"

    const-wide/16 v5, 0x0

    const-string v7, "app_launch_time"

    const-wide/16 v8, 0x3e8

    const-string v10, "auto_reservation"

    cmp-long v11, v0, v5

    rsub-int v0, v11, 0x2346

    invoke-static {v4, v0}, Lccsansan/dt/pause;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/pause;->IncentiveDownloadUtils:I

    .line 3
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long v0, v0, v8

    iput-wide v0, p0, Lccsansan/dt/pause;->getDownloadingList:J

    .line 4
    invoke-virtual {p1, v10, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lccsansan/dt/pause;->unifiedDownload:Z

    .line 5
    const-string v0, "md5sum"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/pause;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/dt/pause;->deleteDownItem:J

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
.method public IncentiveDownloadUtils()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/pause;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/pause;->IncentiveDownloadUtils:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/pause;->IncentiveDownloadUtils:I

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/pause;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/pause;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/pause;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener([Ljava/lang/String;)V
    .locals 3

    .line 8
    sget v0, Lccsansan/dt/pause;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_3

    .line 2
    :pswitch_0
    array-length v0, p1

    if-nez v0, :cond_3

    .line 8
    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/pause;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto :goto_1

    .line 2
    :cond_3
    const/4 v0, 0x0

    .line 5
    aget-object v0, p1, v0

    iput-object v0, p0, Lccsansan/dt/pause;->removeDownloadListener:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsansan/dt/pause;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dt/pause;->removeDownloadListener:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_3
    nop

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lccsansan/dt/pause;->removeDownloadListener:Ljava/lang/String;

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/pause;->getDownloadedList:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/pause;->removeDownloadListener:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x53

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_0
    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/dt/pause;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 1

    sget p1, Lccsansan/dt/pause;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public removeDownloadListener()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/pause;->getDownloadedList:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/pause;->unifiedDownload:Z

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x27

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x25

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/pause;->getDownloadedList:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsansan/dt/pause;->getDownloadingList:J

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
