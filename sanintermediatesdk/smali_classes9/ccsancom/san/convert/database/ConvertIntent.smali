.class public Lccsancom/san/convert/database/ConvertIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field private static ActionTypeDownload:[C

.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static performAction:I

.field private static performActionWhenOffline:I


# instance fields
.field private ActionTypeDetailPage:J

.field private ActionTypeReserveApp:J

.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private IncentiveSDK:Ljava/lang/String;

.field private IncentiveSDK$1:J

.field private addDownloadListener:J

.field private deleteDownItem:Z

.field private deleteDownList:J

.field private execute:J

.field private getActionType:I

.field private getDownloadStatusByUrl:J

.field private getDownloadedCount:Ljava/lang/String;

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:Ljava/lang/String;

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Z

.field private getPackageNameByRecord:I

.field private getThumbPathByRecord:Ljava/lang/String;

.field private pause:Ljava/lang/String;

.field private removeDownloadListener:I

.field private resolveUrl:J

.field private resume:Ljava/lang/String;

.field private shouldTryHandlingAction:I

.field private trackReportClick:Ljava/lang/String;

.field private trackReportShow:Ljava/lang/String;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    invoke-static {}, Lccsancom/san/convert/database/ConvertIntent;->getActionType()V

    .line 1
    new-instance v2, Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;

    invoke-direct {v2}, Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;-><init>()V

    sput-object v2, Lccsancom/san/convert/database/ConvertIntent;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    sget v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    .line 72
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener:J

    .line 74
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener:I

    .line 77
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    .line 80
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl:Z

    .line 81
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl:J

    .line 82
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList:J

    .line 83
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->resume:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->pause:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord:I

    .line 92
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction:I

    .line 93
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->execute:J

    .line 94
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage:J

    .line 95
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->resolveUrl:J

    .line 96
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1:J

    .line 97
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp:J

    .line 98
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getActionType:I

    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/convert/database/ConvertIntent;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method private static IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;
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
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDownload:[C

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
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

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

.method static getActionType()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDownload:[C

    return-void

    :array_0
    .array-data 2
        0x68s
        0xefs
        0x110s
        0x115s
        0x118s
        0x10fs
        0x10bs
        0x111s
        0xfbs
        0xf7s
        0x110s
        0x113s
        0x111s
        0x113s
        0x106s
        0x103s
        0x110s
        0x10es
        0xf6s
        0x36s
        0x66s
        0x6as
        0x73s
        0x70s
        0x6bs
        0x4as
        0x34s
        0x51s
        0x69s
        0x6bs
        0x5es
        0x63s
        0x73s
        0x6cs
        0x64s
        0x6cs
        0x64s
        0x5fs
    .end array-data
.end method


# virtual methods
.method public ActionTypeDetailPage()J
    .locals 7

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    iget-wide v4, p0, Lccsancom/san/convert/database/ConvertIntent;->execute:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-wide v4

    :goto_3
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v4

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public ActionTypeReserveApp()J
    .locals 4

    .line 4
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-wide v2, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp:J

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0x4d

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide v2

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x1b

    goto :goto_0

    :cond_1
    const/16 v1, 0x60

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
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 2

    .line 4
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    iput p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getActionType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener:J

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p2, 0x3c

    :try_start_0
    div-int/2addr p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public IncentiveSDK()I
    .locals 3

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0xd

    if-nez v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x1b

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :goto_1
    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveSDK$1()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-wide v2, p0, Lccsancom/san/convert/database/ConvertIntent;->resolveUrl:J

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    return-wide v2
.end method

.method public addDownloadListener()I
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v0, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget v1, p0, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public addDownloadListener(I)V
    .locals 4

    .line 4
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v0, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput p1, p0, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction:I

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0xa

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
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

.method public addDownloadListener(J)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->execute:J

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x45

    goto :goto_0

    :cond_1
    const/16 p1, 0x54

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x1b

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Z)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownItem()J
    .locals 4

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl:J

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-wide v1
.end method

.method public deleteDownItem(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const/16 p1, 0x51

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x45

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownList()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 3

    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public execute()I
    .locals 3

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x4d

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl(J)V
    .locals 2

    .line 5
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1:J

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x34

    goto :goto_0

    :cond_1
    const/16 p1, 0x4f

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()Z
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl:Z

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x12

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedCount()Ljava/lang/String;
    .locals 3

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->pause:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    :cond_1
    const/16 v0, 0x58

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedCount(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x4f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v1, 0x1f

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList(J)V
    .locals 2

    .line 5
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp:J

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    const/16 p1, 0x2f

    if-eqz v1, :cond_1

    const/16 p2, 0x2f

    goto :goto_0

    :cond_1
    const/16 p2, 0x4d

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x53

    :goto_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->pause:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 v0, 0x30

    :try_start_1
    div-int/2addr v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl:Ljava/lang/String;

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
    sget v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl(J)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->resolveUrl:J

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x2a

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->resume:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public getDownloadingCount()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-wide v2, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList:J

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x13

    goto :goto_0

    :cond_1
    const/16 v0, 0x35

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide v2

    :pswitch_0
    const/16 v0, 0x28

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingCount(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()J
    .locals 5

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    const/16 v1, 0x23

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-wide v3, p0, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener:J

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v1, 0x16

    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-wide v3

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v3

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(J)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Z)V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x29

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    const/4 v1, 0x0

    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_1
    array-length p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

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
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public getPackageNameByRecord()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getThumbPathByRecord()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch
.end method

.method public pause()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount:Ljava/lang/String;

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

.method public pause(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x35

    goto :goto_0

    :cond_1
    const/16 p1, 0x4e

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x2b

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method public performAction()I
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getActionType:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getActionType:I

    goto :goto_2

    :goto_1
    const/16 v1, 0x49

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public removeDownloadListener(I)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(J)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList:J

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x3a

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    :goto_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x45

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x3d

    goto :goto_1

    :cond_1
    const/16 p1, 0x18

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method public resolveUrl()J
    .locals 3

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage:J

    goto :goto_1

    :pswitch_0
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage:J

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resume()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->resume:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public shouldTryHandlingAction()J
    .locals 5

    .line 4
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-wide v3, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1:J

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x7

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x30

    goto :goto_2

    :cond_1
    const/16 v0, 0x15

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-wide v3

    :goto_3
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v3

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskIntent [ taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",taskState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isApks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",iconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->pause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",imagePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",apkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",lastSubmitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const-string v4, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000"

    invoke-static {v2, v4, v3}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/san/convert/database/ConvertIntent;->execute:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    const-string v3, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0000\u0001"

    invoke-static {v1, v3, v2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",activateActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",activateSuccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x36

    goto :goto_0

    :cond_0
    const/16 v1, 0x51

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x13
        0xa5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x13
        0x13
        0x0
        0x7
    .end array-data
.end method

.method public trackReportClick()Ljava/lang/String;
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow:Ljava/lang/String;

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
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch
.end method

.method public trackReportShow()Ljava/lang/String;
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord:Ljava/lang/String;

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
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils:Ljava/lang/String;

    const/16 v1, 0x62

    :try_start_0
    div-int/lit8 v1, v1, 0x0
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
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(I)V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0x52

    :goto_0
    const/4 v2, 0x0

    iput p1, p0, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener:I

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x25

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(J)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    :goto_0
    iput-wide p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl:J

    packed-switch v0, :pswitch_data_0

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 27
    sget p2, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    add-int/lit8 p2, p2, 0x43

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    :cond_0
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->resume:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->pause:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->execute:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 23
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 24
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->resolveUrl:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 25
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 26
    iget-wide v0, p0, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 27
    iget p2, p0, Lccsancom/san/convert/database/ConvertIntent;->getActionType:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    sget p1, Lccsancom/san/convert/database/ConvertIntent;->performAction:I

    const/16 p2, 0x9

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/convert/database/ConvertIntent;->performActionWhenOffline:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p2, 0x15

    :cond_1
    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x48

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method
