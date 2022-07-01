.class Lccsansan/af/getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/af/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/af/getDownloadingList;->addDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:Z

.field private static getDownloadedRecordByUrl:Z

.field private static getDownloadingList:[C

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/bw/AdError;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/af/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    const/16 v1, 0x9d

    sput v1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadingRecordByUrl:I

    sput-boolean v0, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadedList:Z

    sput-boolean v0, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadedRecordByUrl:Z

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadingList:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x101s
        0x10cs
        0x114s
        0x10bs
        0x109s
        0xfes
    .end array-data
.end method

.method constructor <init>(Lccsansan/af/getDownloadingList;Lccsansan/af/unifiedDownload;Ljava/lang/String;Lccsansan/bw/AdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;

    iput-object p3, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError;

    iput-object p5, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
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

    .line 3
    nop

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "url"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadingList:[C

    .line 1166
    sget v2, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadingRecordByUrl:I

    .line 1168
    sget-boolean v3, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadedList:Z

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
    sget-boolean p3, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadedRecordByUrl:Z

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
.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 12
    nop

    .line 6
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "total"

    .line 7
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "completed"

    .line 8
    :try_start_2
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string p3, "pause"

    .line 10
    invoke-virtual {p2, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 11
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;

    if-eqz p1, :cond_0

    .line 12
    const/16 p3, 0x4f

    goto :goto_0

    :cond_0
    const/16 p3, 0x62

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p3, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x2f

    :try_start_3
    div-int/2addr p1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 18
    const-string v0, "delete"

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 10
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x63

    const-string v2, "action"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 17
    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 13
    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/16 p1, 0x31

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 17
    goto :goto_1

    .line 12
    :pswitch_0
    nop

    .line 13
    :try_start_1
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_2

    :goto_1
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    array-length p1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_2
    goto :goto_3

    .line 17
    :catchall_0
    move-exception p1

    throw p1

    .line 13
    :cond_1
    :try_start_3
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x7f

    const-string v0, "\u0081\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, p1, v3, v0}, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 13
    :goto_3
    nop

    .line 18
    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 17
    :try_start_4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_2

    .line 13
    const/16 p2, 0x12

    goto :goto_4

    :cond_2
    const/16 p2, 0x45

    :goto_4
    packed-switch p2, :pswitch_data_1

    goto :goto_5

    .line 18
    :catchall_1
    move-exception p1

    throw p1

    .line 17
    :cond_3
    :try_start_6
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;

    if-eqz p1, :cond_4

    .line 18
    :goto_5
    iget-object p2, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    :cond_4
    :goto_6
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string v0, "failed"

    .line 3
    invoke-virtual {p2, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 5
    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string v0, "complete"

    .line 3
    invoke-virtual {p2, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x15

    goto :goto_1

    :cond_2
    const/16 p1, 0x1d

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 8
    nop

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "total"

    .line 2
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "completed"

    .line 3
    :try_start_2
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string p3, "progress"

    .line 5
    invoke-virtual {p2, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 6
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/bw/AdError;

    iget-object p3, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 8
    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    :goto_0
    packed-switch p4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget p4, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p4, p4, 0x3

    rem-int/lit16 p5, p4, 0x80

    sput p5, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p4, p4, 0x2

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    packed-switch p3, :pswitch_data_1

    :try_start_3
    iget-object p3, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iget-object p3, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p1, 0x0

    :try_start_4
    array-length p1, p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_5
    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_3
    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x12

    :try_start_6
    div-int/2addr p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_2
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

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    nop

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "action"

    const-string v0, "start"

    .line 3
    invoke-virtual {p2, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object p1, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->unifiedDownload:Lccsansan/af/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p1, Lccsansan/af/getDownloadingList$unifiedDownload;->deleteDownItem:I

    const/16 p2, 0x57

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/af/getDownloadingList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x44

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
