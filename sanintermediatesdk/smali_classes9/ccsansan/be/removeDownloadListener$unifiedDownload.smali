.class final Lccsansan/be/removeDownloadListener$unifiedDownload;
.super Lccsansan/bf/removeDownloadListener$addDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/be/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:I

.field private static removeDownloadListener:[C

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsansan/be/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/be/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/be/removeDownloadListener$unifiedDownload;->addDownloadListener:I

    const/4 v0, 0x4

    sput-char v0, Lccsansan/be/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/be/removeDownloadListener$unifiedDownload;->removeDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x53s
        0x69s
        0x6cs
        0x65s
        0x6es
        0x63s
        0x49s
        0x73s
        0x74s
        0x61s
        0x4ds
        0x67s
        0x72s
        0x54s
        0x55s
        0x56s
    .end array-data
.end method

.method constructor <init>(Lccsansan/be/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/be/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/be/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsansan/bf/removeDownloadListener$addDownloadListener;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;IB)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsansan/be/removeDownloadListener$unifiedDownload;->removeDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/be/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p1, [C

    .line 1221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p1, p1, -0x1

    .line 1224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 1245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 1253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1261
    goto :goto_1

    .line 1264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 1266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1274
    goto :goto_1

    .line 1281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 1282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 1284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 1291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1292
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public getDownloadingList(Lccsanandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 7
    nop

    .line 1
    const-string v0, "support"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    .line 2
    const-string v3, "result"

    invoke-virtual {p1, v3, v2}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "support : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x30

    invoke-static {v0}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    add-int/lit8 v3, v3, -0x1b

    const-string v4, ""

    invoke-static {v4, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    const-string v4, "\u0001\u0002\u0003\u0000\u0005\u0006\u0002\u0007\u0005\u0004\t\nww\u000b\n\u0005\u0008\u000f\u0007}"

    invoke-static {v4, v3, v0}, Lccsansan/be/removeDownloadListener$unifiedDownload;->getDownloadingList(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 5
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 7
    sget v1, Lccsansan/be/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/be/removeDownloadListener$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsansan/be/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/be/IncentiveDownloadUtils;

    invoke-static {v2}, Lccsansan/be/addDownloadListener;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lccsansan/be/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;)V

    sget p1, Lccsansan/be/removeDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/be/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_4

    .line 5
    :goto_1
    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    iget-object p1, p0, Lccsansan/be/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/be/IncentiveDownloadUtils;

    invoke-interface {p1}, Lccsansan/be/IncentiveDownloadUtils;->getDownloadingList()V

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lccsansan/be/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/be/IncentiveDownloadUtils;

    invoke-interface {p1}, Lccsansan/be/IncentiveDownloadUtils;->getDownloadingList()V

    goto :goto_4

    :goto_3
    const/16 p1, 0x16

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_4
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
