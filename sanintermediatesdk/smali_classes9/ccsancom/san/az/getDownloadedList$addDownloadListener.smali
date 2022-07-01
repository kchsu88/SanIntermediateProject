.class final Lccsancom/san/az/getDownloadedList$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadedList:I

.field private static unifiedDownload:[C


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroidx/core/app/NotificationCompat$Builder;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->getDownloadedList:I

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x64s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iput p2, p0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->removeDownloadListener:I

    iput-object p3, p0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static unifiedDownload(ZLjava/lang/String;[I)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p2, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p2, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p2, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p2, v7

    .line 1203
    sget-object v8, Lccsancom/san/az/getDownloadedList$addDownloadListener;->unifiedDownload:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p0, :cond_6

    .line 1244
    new-array p0, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_5

    .line 1248
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p1

    .line 1246
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p0

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p0, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p0, v4, :cond_7

    .line 1259
    sget p0, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p1, v9, p1

    aget v1, p2, v5

    sub-int/2addr p1, v1

    int-to-char p1, p1

    aput-char p1, v9, p0

    .line 1257
    sget p0, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p0, v3

    sput p0, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
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
.method public callBackOnUIThread()V
    .locals 5

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    if-eqz v0, :cond_3

    .line 7
    sget v1, Lccsancom/san/az/getDownloadedList$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedList$addDownloadListener;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 3
    const/16 v1, 0x24

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    :goto_0
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x53

    if-lt v1, v3, :cond_2

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :goto_2
    const/4 v1, 0x4

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const-string v4, "\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000"

    invoke-static {v2, v4, v3}, Lccsancom/san/az/getDownloadedList$addDownloadListener;->unifiedDownload(ZLjava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v2, v4, v1}, Lccsancom/san/az/getDownloadedList$addDownloadListener;->unifiedDownload(ZLjava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v3, v1}, Lccsansan/bz/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 3
    sget v1, Lccsancom/san/az/getDownloadedList$addDownloadListener;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedList$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 7
    :cond_2
    :goto_3
    iget v1, p0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->removeDownloadListener:I

    iget-object v2, p0, Lccsancom/san/az/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x8
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x8
        0x0
        0x1
    .end array-data
.end method
