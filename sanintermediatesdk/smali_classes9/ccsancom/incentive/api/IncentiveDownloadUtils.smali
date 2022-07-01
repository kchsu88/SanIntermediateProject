.class public Lccsancom/incentive/api/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static final getDownloadingList:Ljava/lang/String;

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    invoke-static {}, Lccsancom/incentive/api/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 1
    sget-object v0, Lccsancom/san/api/PromotionPortal;->INCENTIVE:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static IncentiveDownloadUtils()V
    .locals 1

    const/16 v0, 0x98

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    return-void

    :array_0
    .array-data 2
        0x6ds
        0xd6s
        0xd1s
        0xd5s
        0xcbs
        0xc3s
        0xc9s
        0xcfs
        0xd4s
        0xd4s
        0xd9s
        0xdas
        0xc0s
        0xbbs
        0xd4s
        0xd6s
        0xd5s
        0xd8s
        0xd0s
        0xcbs
        0xcfs
        0xc2s
        0x69s
        0xccs
        0xa3s
        0xabs
        0xd2s
        0xccs
        0xc8s
        0xc8s
        0xc8s
        0xc5s
        0xb5s
        0xbas
        0xd4s
        0xd3s
        0xces
        0xces
        0xc9s
        0xc3s
        0xa7s
        0x89s
        0x85s
        0x8fs
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x9es
        0x8fs
        0x9ds
        0xc5s
        0xd3s
        0xabs
        0xa7s
        0xd2s
        0xd5s
        0xd4s
        0xabs
        0xa2s
        0xc3s
        0xc7s
        0xcds
        0xa7s
        0x9as
        0xbbs
        0xc8s
        0xb8s
        0xb3s
        0xbcs
        0xbcs
        0xc8s
        0xads
        0xacs
        0xccs
        0xccs
        0xcfs
        0xcfs
        0xc6s
        0xc7s
        0xcbs
        0xd2s
        0xd0s
        0xa7s
        0x89s
        0x85s
        0xa2s
        0xc4s
        0xc6s
        0xcbs
        0x60s
        0xces
        0xf0s
        0x103s
        0x109s
        0x10es
        0x10es
        0x113s
        0x114s
        0xfas
        0xf5s
        0x105s
        0x108s
        0x108s
        0x108s
        0x10cs
        0x112s
        0xeds
        0x8bs
        0x11ds
        0x122s
        0x122s
        0x127s
        0x128s
        0x10es
        0x109s
        0x119s
        0x11cs
        0x11cs
        0x11cs
        0x120s
        0x126s
        0x101s
        0xd6s
        0xe2s
        0x10bs
        0x124s
        0x124s
        0x118s
        0x115s
        0x11cs
        0x117s
        0x11es
        0x118s
        0xefs
        0xf7s
    .end array-data
.end method

.method public static addDownloadListener(Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;)V
    .locals 4
    .param p0, "downloadResultFullListener"    # Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    .line 1
    .end local p0    # "downloadResultFullListener":Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 1
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/api/IDownloadResultListener;)V

    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteDownItem(Lccsancom/san/xz/api/IDownloadService;Lccsancom/san/xz/base/XzRecord;)V
    .locals 3
    .param p0, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;
    .param p1, "record"    # Lccsancom/san/xz/base/XzRecord;

    .line 1
    .end local p0    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    .end local p1    # "record":Lccsancom/san/xz/base/XzRecord;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 1
    return-void

    .line 0
    :cond_1
    if-eqz p0, :cond_2

    .line 1
    const/16 v1, 0x3d

    goto :goto_0

    :cond_2
    const/16 v1, 0x47

    :goto_0
    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x4e

    goto :goto_1

    :cond_3
    const/16 v0, 0x33

    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v2, p1, v1}, Lccsancom/san/xz/api/IDownloadService;->delete(Lccsansan/cs/unifiedDownload;Ljava/util/List;Z)V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteDownList(Lccsancom/san/xz/api/IDownloadService;Ljava/util/List;)V
    .locals 3
    .param p0, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/san/xz/api/IDownloadService;",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    .end local p0    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 1
    return-void

    .line 0
    :cond_1
    if-eqz p0, :cond_2

    .line 1
    const/16 v0, 0x3e

    goto :goto_0

    :cond_2
    const/16 v0, 0x4b

    :goto_0
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    :pswitch_0
    invoke-interface {p0, v2, p1, v0}, Lccsancom/san/xz/api/IDownloadService;->delete(Lccsansan/cs/unifiedDownload;Ljava/util/List;Z)V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl(Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 12
    .end local p0    # "url":Ljava/lang/String;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    .line 7
    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne v0, v3, :cond_2

    .line 12
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x5f

    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 8
    :cond_3
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    .line 10
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    .line 12
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/2addr p0, v4

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    .line 10
    :goto_2
    if-nez v0, :cond_4

    .line 12
    const/16 v4, 0x19

    goto :goto_3

    :cond_4
    nop

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 10
    goto :goto_4

    .line 12
    :pswitch_1
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v1

    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    goto :goto_5

    :goto_4
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    :cond_5
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5f
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedCount(J)I
    .locals 2
    .param p0, "startTime"    # J

    .line 1
    .end local p0    # "startTime":J
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/q/removeDownloadListener;->addDownloadListener(Lccsansan/cs/unifiedDownload;J)I

    move-result p0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/q/removeDownloadListener;->addDownloadListener(Lccsansan/cs/unifiedDownload;J)I

    move-result p0

    :try_start_0
    array-length p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedList(Lccsancom/san/xz/api/IDownloadService;)Ljava/util/List;
    .locals 3
    .param p0, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/san/xz/api/IDownloadService;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 3
    .end local p0    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    nop

    .line 0
    if-eqz p0, :cond_0

    .line 3
    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p0

    sget-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    .line 1
    :cond_1
    :goto_1
    sget-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lccsancom/san/xz/api/IDownloadService;->listDownloadedRecord(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 5
    .end local p0    # "url":Ljava/lang/String;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x56

    goto :goto_1

    :cond_2
    const/16 p0, 0x4c

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 1
    goto :goto_2

    .line 5
    :pswitch_1
    const/16 p0, 0x5c

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingCount(Lccsancom/san/xz/api/IDownloadService;)I
    .locals 2
    .param p0, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;

    .line 3
    .end local p0    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-eqz p0, :cond_1

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-interface {p0, v1}, Lccsancom/san/xz/api/IDownloadService;->getDownloadingItemCount(Lccsansan/cs/unifiedDownload;)I

    move-result p0

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;)I

    move-result p0

    return p0

    :goto_1
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    :cond_0
    check-cast p0, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p1, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p1, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p1, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p1, v7

    .line 1203
    sget-object v8, Lccsancom/incentive/api/IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p0, :cond_3

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

    aget-byte v10, p0, v10

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
    new-array p0, v4, [C

    .line 1236
    invoke-static {v9, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p0, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p0, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p0, v4, [C

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

    aput-char v2, p0, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

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

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

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

.method public static getDownloadingList(Lccsancom/san/xz/api/IDownloadService;)Ljava/util/List;
    .locals 3
    .param p0, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/san/xz/api/IDownloadService;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 3
    .end local p0    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x39

    const/4 v2, 0x0

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/16 v0, 0x4d

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    :goto_2
    :pswitch_1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p0

    sget-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    .line 1
    :goto_3
    sget-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lccsancom/san/xz/api/IDownloadService;->listDownloadingRecord(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingRecordByUrl(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 5
    .end local p0    # "url":Ljava/lang/String;
    nop

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, p0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lccsansan/q/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p0

    return-object p0

    :goto_1
    const/16 v0, 0x3c

    goto :goto_2

    :cond_1
    const/16 v0, 0x2a

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 1
    goto :goto_3

    .line 5
    :pswitch_1
    const/16 v0, 0x30

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    const/4 v0, 0x0

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
    .end packed-switch
.end method

.method public static getPackageNameByRecord(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;
    .locals 2
    .param p0, "xzRecord"    # Lccsancom/san/xz/base/XzRecord;

    .line 1
    .end local p0    # "xzRecord":Lccsancom/san/xz/base/XzRecord;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThumbPathByRecord(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;
    .locals 5
    .param p0, "xzRecord"    # Lccsancom/san/xz/base/XzRecord;

    .line 5
    .end local p0    # "xzRecord":Lccsancom/san/xz/base/XzRecord;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, ""

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_2

    goto :goto_4

    .line 5
    :goto_1
    :try_start_0
    array-length v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    const/16 v0, 0x3e

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 1
    :cond_2
    :pswitch_1
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object p0

    if-nez p0, :cond_3

    .line 5
    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 1
    goto :goto_4

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadingCount()Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    :try_start_1
    array-length v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    return-object p0

    :goto_4
    return-object v3

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static pause(Ljava/lang/String;)V
    .locals 2
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .line 3
    .end local p0    # "downloadUrl":Ljava/lang/String;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    const/16 p0, 0x14

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
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

.method public static pause(Ljava/lang/String;Lccsancom/san/xz/api/IDownloadService;)V
    .locals 3
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;

    .line 1
    .end local p0    # "downloadUrl":Ljava/lang/String;
    .end local p1    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_2

    goto :goto_2

    .line 1
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    :goto_2
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    :goto_3
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p0, 0x4a

    :try_start_1
    div-int/2addr p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_2
    if-eqz p1, :cond_3

    .line 1
    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    invoke-interface {p1, p0}, Lccsancom/san/xz/api/IDownloadService;->pause(Ljava/lang/String;)V

    :goto_5
    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static pause(Ljava/util/List;Lccsancom/san/xz/api/IDownloadService;)V
    .locals 2
    .param p1, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;",
            "Lccsancom/san/xz/api/IDownloadService;",
            ")V"
        }
    .end annotation

    .line 2
    .end local p1    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    nop

    .line 0
    if-nez p0, :cond_0

    .line 2
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 0
    :cond_0
    if-eqz p1, :cond_1

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    invoke-interface {p1, p0}, Lccsancom/san/xz/api/IDownloadService;->pause(Ljava/util/List;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;)V
    .locals 2
    .param p0, "downloadResultFullListener"    # Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    .line 1
    .end local p0    # "downloadResultFullListener":Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
    nop

    .line 0
    if-eqz p0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/16 v0, 0x44

    :goto_1
    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/xz/api/IDownloadResultListener;)V

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/xz/api/IDownloadResultListener;)V

    goto :goto_3

    :goto_2
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :pswitch_1
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public static resume(Ljava/lang/String;)V
    .locals 3
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .line 2
    .end local p0    # "downloadUrl":Ljava/lang/String;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    const/16 v1, 0x21

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/f/getDownloadingList;->getDownloadingList(Ljava/lang/String;)V

    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x48

    :goto_0
    packed-switch v1, :pswitch_data_0

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

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public static resume(Ljava/util/List;Lccsancom/san/xz/api/IDownloadService;)V
    .locals 2
    .param p1, "downloadService"    # Lccsancom/san/xz/api/IDownloadService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;",
            "Lccsancom/san/xz/api/IDownloadService;",
            ")V"
        }
    .end annotation

    .line 1
    .end local p1    # "downloadService":Lccsancom/san/xz/api/IDownloadService;
    sget v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1
    const/16 v0, 0x52

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_3
    invoke-interface {p1, p0}, Lccsancom/san/xz/api/IDownloadService;->resume(Ljava/util/List;)V

    goto :goto_1

    :goto_2
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    const/16 p0, 0x11

    goto :goto_3

    :cond_4
    const/16 p0, 0x58

    :goto_3
    packed-switch p0, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "xzParams"    # Lccsancom/san/cpi/xz/AdXzParams;

    .line 16
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "xzParams":Lccsancom/san/cpi/xz/AdXzParams;
    nop

    .line 1
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->hasInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001"

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-nez v0, :cond_0

    new-array p0, v4, [I

    fill-array-data p0, :array_0

    invoke-static {v2, p0, v3}, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [I

    fill-array-data p1, :array_1

    const-string v0, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v0, p1, v1}, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    const-string v6, "\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v6, v5, v3}, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    invoke-static {v2, v5, v3}, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v5, p1, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 10
    const/16 v6, 0x22

    goto :goto_0

    :cond_1
    const/16 v6, 0x5c

    :goto_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    goto :goto_5

    .line 16
    :pswitch_0
    sget v6, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v6, v6, 0x21

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 9
    :cond_2
    array-length v6, v5

    .line 16
    nop

    .line 9
    :goto_2
    if-ge v1, v6, :cond_3

    .line 10
    const/16 v7, 0x26

    goto :goto_3

    :cond_3
    const/16 v7, 0x36

    :goto_3
    packed-switch v7, :pswitch_data_1

    goto :goto_1

    .line 16
    :pswitch_1
    sget v7, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v7, v7, 0x21

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4

    .line 10
    const/16 v7, 0x50

    goto :goto_4

    :cond_4
    const/16 v7, 0x47

    :goto_4
    const-string v8, " "

    packed-switch v7, :pswitch_data_2

    .line 16
    aget-object v7, v5, v1

    .line 10
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x18

    goto :goto_2

    .line 9
    :pswitch_2
    aget-object v7, v5, v1

    .line 10
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const-string v6, "\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0000"

    invoke-static {v6, v5, v3}, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-static {v2, v1, v3}, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lccsancom/incentive/api/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    .line 15
    const-string v0, "iaction"

    iput-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    .line 16
    invoke-static {p0, p1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 10
    sget p0, Lccsancom/incentive/api/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/incentive/api/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 16
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x16
        0x67
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x16
        0x54
        0x61
        0x20
    .end array-data

    :array_2
    .array-data 4
        0x6a
        0x12
        0xa1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x16
        0x67
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7c
        0x1c
        0xb5
        0xf
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x16
        0x67
        0x0
    .end array-data
.end method
