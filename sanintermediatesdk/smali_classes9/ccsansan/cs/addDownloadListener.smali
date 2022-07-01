.class public Lccsansan/cs/addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsansan/cs/addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static deleteDownItem:J

.field private static getDownloadedList:C

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:I

.field public static final getDownloadingList:J

.field private static pause:I

.field private static final unifiedDownload:J


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:J

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/lang/String;

.field private removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/cs/addDownloadListener;->pause:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    invoke-static {}, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl()V

    .line 1
    invoke-static {}, Lccsansan/cl/unifiedDownload;->pause()J

    move-result-wide v0

    sput-wide v0, Lccsansan/cs/addDownloadListener;->unifiedDownload:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    sput-wide v2, Lccsansan/cs/addDownloadListener;->getDownloadingList:J

    .line 81
    new-instance v0, Lccsansan/cs/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/cs/addDownloadListener$IncentiveDownloadUtils;-><init>()V

    sput-object v0, Lccsansan/cs/addDownloadListener;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    sget v0, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cs/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    .line 11
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsansan/cs/addDownloadListener;->removeDownloadListener:I

    .line 12
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cs/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_0

    .line 4
    sget-wide p2, Lccsansan/cs/addDownloadListener;->getDownloadingList:J

    :cond_0
    iput-wide p2, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    .line 5
    iput p4, p0, Lccsansan/cs/addDownloadListener;->removeDownloadListener:I

    .line 6
    iput-object p5, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lccsansan/cs/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method static getDownloadStatusByUrl()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/cs/addDownloadListener;->deleteDownItem:J

    const v0, 0xa2fc

    sput-char v0, Lccsansan/cs/addDownloadListener;->getDownloadedList:C

    const/4 v0, 0x0

    sput v0, Lccsansan/cs/addDownloadListener;->getDownloadedRecordByUrl:I

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/cs/addDownloadListener;->deleteDownItem:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/cs/addDownloadListener;->getDownloadedRecordByUrl:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/cs/addDownloadListener;->getDownloadedList:C

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
.method public IncentiveDownloadUtils()J
    .locals 5

    .line 1
    sget v0, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-wide v3, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    goto :goto_1

    :pswitch_0
    iget-wide v1, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    goto :goto_2

    :goto_1
    const/16 v1, 0x25

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v3

    :goto_2
    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/cs/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cs/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public describeContents()I
    .locals 2

    sget v0, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cs/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 5

    .line 6
    nop

    .line 1
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "\uc1f5\uc394\u4a1b\u177d\u70f2\u9b0d\u200b\u6767\u9415\u8a60\uf15f"

    const-string v1, "\u0000\u0000\u0000\u0000"

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v2

    int-to-char v2, v2

    const v3, -0x4f207cad

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    const-string v3, "\u5364\udf83\u2ab0\u3221"

    invoke-static {p1, v1, v2, v4, v3}, Lccsansan/cs/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string p1, "expire"

    .line 3
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    const-string p1, "priority"

    .line 4
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lccsansan/cs/addDownloadListener;->removeDownloadListener:I

    const-string p1, "fileType"

    .line 5
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string p1, "extra"

    .line 6
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cs/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p1, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 7

    .line 15
    const-string v0, ""

    .line 7
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    invoke-static {v0, v0, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-char v2, v2

    const v3, -0x4f207cad

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    const-string v4, "\uc1f5\uc394\u4a1b\u177d\u70f2\u9b0d\u200b\u6767\u9415\u8a60\uf15f"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u5364\udf83\u2ab0\u3221"

    invoke-static {v4, v5, v2, v3, v6}, Lccsansan/cs/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 8
    :try_start_1
    iget-object v3, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "expire"

    .line 9
    :try_start_2
    iget-wide v3, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    invoke-virtual {v1, v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "priority"

    .line 10
    :try_start_3
    iget v3, p0, Lccsansan/cs/addDownloadListener;->removeDownloadListener:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "fileType"

    .line 11
    :try_start_4
    iget-object v3, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "extra"

    .line 12
    :try_start_5
    iget-object v3, p0, Lccsansan/cs/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 13
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 15
    sget v1, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 5
    sget p2, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/cs/addDownloadListener;->pause:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    :cond_0
    iget-object p2, p0, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lccsansan/cs/addDownloadListener;->addDownloadListener:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 3
    iget p2, p0, Lccsansan/cs/addDownloadListener;->removeDownloadListener:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lccsansan/cs/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lccsansan/cs/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget p1, Lccsansan/cs/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cs/addDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
