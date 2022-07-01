.class public final enum Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/aj/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncentiveDownloadUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum DOWNLOADED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum DOWNLOAD_PAUSE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum MINI_SITE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum NO_STORAGE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public static final enum RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field private static addDownloadListener:I

.field private static getDownloadingList:I

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static removeDownloadListener:[C

.field private static unifiedDownload:C


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x0

    sput v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    invoke-static {}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload()V

    .line 1
    new-instance v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const/4 v3, -0x1

    const-string v4, "MINI_SITE"

    invoke-direct {v2, v4, v0, v3}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->MINI_SITE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v3, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v4, "NO_RELEASED"

    invoke-direct {v3, v4, v1, v0}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v5, "RELEASED_WAITING_DOWNLOAD"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v1}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v7, "NO_AVAilABLE_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 2
    new-instance v7, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v9, "NO_STORAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_STORAGE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v9, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v11, "DOWNLOADING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v11, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v13, "DOWNLOAD_PAUSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOAD_PAUSE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v13, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const-string v15, "DOWNLOADED"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    new-instance v15, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v16

    shr-int/lit8 v16, v16, 0x10

    const/16 v14, 0x9

    add-int/lit8 v10, v16, 0x9

    const/16 v8, 0x30

    const-string v6, ""

    invoke-static {v6, v8, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x28

    int-to-byte v6, v6

    const-string v8, "\u0001\u0002\u0000\u0005\u0005\u0003\u0003\u0008m"

    invoke-static {v8, v10, v6}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    invoke-direct {v15, v6, v8, v12}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 3
    new-array v6, v14, [Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    const/4 v2, 0x4

    aput-object v7, v6, v2

    const/4 v2, 0x5

    aput-object v9, v6, v2

    const/4 v2, 0x6

    aput-object v11, v6, v2

    aput-object v13, v6, v12

    aput-object v15, v6, v8

    sput-object v6, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->$VALUES:[Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 13
    new-instance v2, Lccsanandroid/util/SparseArray;

    invoke-direct {v2}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValues:Lccsanandroid/util/SparseArray;

    .line 16
    invoke-static {}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->values()[Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    move-result-object v2

    array-length v3, v2

    .line 17
    sget v4, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v4, v4, 0x1f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_0

    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v3, :cond_1

    .line 17
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 16
    :pswitch_0
    aget-object v5, v2, v4

    .line 17
    sget-object v6, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValues:Lccsanandroid/util/SparseArray;

    iget v7, v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValue:I

    invoke-virtual {v6, v7, v5}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;
    .locals 2
    .param p0, "value"    # I

    .line 1
    .end local p0    # "value":I
    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
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
    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:C

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

.method static unifiedDownload()V
    .locals 1

    const/4 v0, 0x3

    sput-char v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:C

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x49s
        0x4es
        0x53s
        0x54s
        0x41s
        0x4cs
        0x45s
        0x44s
        0x4as
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const-class v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static values()[Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->$VALUES:[Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v0}, [Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->$VALUES:[Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v0}, [Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
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


# virtual methods
.method public toInt()I
    .locals 3

    .line 1
    sget v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValue:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->mValue:I

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch
.end method
