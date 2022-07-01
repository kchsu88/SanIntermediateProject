.class public Lccsansan/aj/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/aj/getDownloadingList$removeDownloadListener;,
        Lccsansan/aj/getDownloadingList$unifiedDownload;,
        Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static ActionTypeReserveApp:C = '\u0000'

.field private static getActionType:C = '\u0000'

.field private static getErrorCode:I = 0x0

.field private static getErrorMessage:C = '\u0000'

.field private static performActionWhenOffline:Ljava/lang/String; = "ReserveInfo"

.field private static setErrorMessage:I

.field private static toString:C


# instance fields
.field public ActionTypeDetailPage:Ljava/lang/String;

.field public ActionTypeDownload:Ljava/lang/String;

.field public IncentiveDownloadUtils:Ljava/lang/String;

.field public IncentiveSDK:J

.field public IncentiveSDK$1:Ljava/lang/Boolean;

.field public addDownloadListener:Ljava/lang/String;

.field public deleteDownItem:Ljava/lang/String;

.field public deleteDownList:Ljava/lang/String;

.field public execute:Ljava/lang/String;

.field public getDownloadStatusByUrl:I

.field public getDownloadedCount:I

.field public getDownloadedList:Ljava/lang/String;

.field public getDownloadedRecordByUrl:Ljava/lang/String;

.field public getDownloadingCount:I

.field public getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

.field public getDownloadingRecordByUrl:Ljava/lang/String;

.field public getPackageNameByRecord:J

.field public getThumbPathByRecord:J

.field public pause:Ljava/lang/String;

.field public performAction:Z

.field public removeDownloadListener:Ljava/lang/Boolean;

.field public resolveUrl:Ljava/lang/String;

.field public resume:Ljava/lang/String;

.field public shouldTryHandlingAction:Ljava/lang/Boolean;

.field public trackReportClick:J

.field public trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    const/4 v0, 0x1

    sput v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    invoke-static {}, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl()V

    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 4
    const-string v1, "unknown"

    iput-object v1, p0, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->IncentiveSDK$1:Ljava/lang/Boolean;

    .line 20
    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/aj/getDownloadingList;->performAction:Z

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 12

    .line 28
    const-string v0, "ampAppId"

    const-string v1, "cpiParam"

    const-string v2, "did"

    const-string v3, "formatId"

    const-string v4, "adnet"

    const-string v5, "rid"

    const-string v6, "placementId"

    const-string v7, "pid"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v8, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v8, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 30
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v8, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 31
    const-string v9, "unknown"

    iput-object v9, p0, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    .line 46
    iput-object v8, p0, Lccsansan/aj/getDownloadingList;->IncentiveSDK$1:Ljava/lang/Boolean;

    .line 47
    iput-object v8, p0, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    .line 54
    const/4 v9, 0x0

    iput-boolean v9, p0, Lccsansan/aj/getDownloadingList;->performAction:Z

    :try_start_0
    const-string v10, "packageName"

    .line 65
    invoke-virtual {p1, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v10, "ad_id"

    .line 66
    invoke-virtual {p1, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v10, "cid"

    .line 67
    invoke-virtual {p1, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 68
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 69
    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    :cond_0
    const-string p2, "name"

    .line 71
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    const-string p2, "versionName"

    .line 72
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    const-string p2, "version_code"

    .line 73
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadStatusByUrl:I

    const-string p2, "\u19c9\u4e58\u5558\u2a77\u8aa6\ua801\u97a6\ue595\uba0e\u649b\u604f\u0bd8"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0xb

    invoke-static {p2, v10}, Lccsansan/aj/getDownloadingList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const-string p2, "gpUrl"

    .line 75
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    const-string p2, "minisiteUrl"

    .line 76
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->deleteDownList:Ljava/lang/String;

    const-string p2, "iconUrl"

    .line 77
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->pause:Ljava/lang/String;

    const-string p2, "minOsVersion"

    .line 78
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadedCount:I

    const-string p2, "appBits"

    .line 79
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadingCount:I

    const-string p2, "packageSize"

    .line 80
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    const-string p2, "useableNetStatus"

    .line 81
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lccsansan/aj/getDownloadingList$unifiedDownload;->fromInt(I)Lccsansan/aj/getDownloadingList$unifiedDownload;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    const-string p2, "releaseTime"

    .line 83
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    .line 84
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p2

    int-to-long v10, p2

    iput-wide v10, p0, Lccsansan/aj/getDownloadingList;->IncentiveSDK:J

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lccsansan/aj/getDownloadingList;->trackReportClick:J

    const-string p2, "autoReservation"

    .line 86
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    const-string p2, "trackUrls"

    const-string v10, ""

    .line 87
    invoke-virtual {p1, p2, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    const-string p2, "md5"

    .line 88
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->resolveUrl:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 91
    iput-object v8, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 92
    sget-object p2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->MINI_SITE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_0

    .line 94
    :cond_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 95
    invoke-virtual {p0}, Lccsansan/aj/getDownloadingList;->getDownloadingList()V

    :goto_0
    nop

    .line 99
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v7, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v6, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v5, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v9, v9, v9, v9}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result p2

    add-int/lit8 p2, p2, 0xa

    const-string p3, "\u3797\u5baa\u077d\u8be0\ucaf7\udca8\uda18\uf4b8\u054c\u0ceb"

    invoke-static {p3, p2}, Lccsansan/aj/getDownloadingList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    :try_start_1
    invoke-static {v9}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0xa

    invoke-static {p3, v1}, Lccsansan/aj/getDownloadingList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    .line 106
    invoke-virtual {p1, p3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object p2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne p1, p2, :cond_2

    const-string p1, "nonmatch"

    .line 110
    invoke-static {p1, p0}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    goto :goto_1

    .line 111
    :cond_2
    sget-object p2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne p1, p2, :cond_3

    const-string p1, "\u77bf\u0a85\u8fbf\u8e6b\u6cef\ubdc2\ud1d2\uc09b\uaa17\uf372\u77bf\u0a85\uffbe\u8832"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int/lit8 p2, p2, 0xe

    invoke-static {p1, p2}, Lccsansan/aj/getDownloadingList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1, p0}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    .line 114
    :cond_3
    :goto_1
    sget-object p1, Lccsansan/aj/getDownloadingList;->performActionWhenOffline:Ljava/lang/String;

    iget-wide p2, p0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    const-string v0, "MM:dd-HH:mm:ss"

    invoke-static {p2, p3, v0}, Lccsansan/bw/AdFormat;->unifiedDownload(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :goto_2
    return-void
.end method

.method static addDownloadListener()I
    .locals 3

    .line 1
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload()Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :pswitch_1
    const/16 v0, 0x40

    goto :goto_4

    :cond_2
    :goto_3
    const/16 v0, 0x20

    :goto_4
    sget v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static getDownloadedRecordByUrl()V
    .locals 1

    const/16 v0, 0x58e7

    sput-char v0, Lccsansan/aj/getDownloadingList;->getActionType:C

    const/16 v0, 0x78e3

    sput-char v0, Lccsansan/aj/getDownloadingList;->getErrorMessage:C

    const v0, 0xe560

    sput-char v0, Lccsansan/aj/getDownloadingList;->toString:C

    const v0, 0x935c

    sput-char v0, Lccsansan/aj/getDownloadingList;->ActionTypeReserveApp:C

    return-void
.end method

.method public static removeDownloadListener(Lccsansan/aj/getDownloadingList;)Lccsansan/aj/getDownloadingList$removeDownloadListener;
    .locals 9

    .line 60
    nop

    .line 39
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->MINI_SITE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v0, v1, :cond_0

    .line 54
    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0x1a

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 47
    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_STORAGE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v0, v1, :cond_5

    goto :goto_3

    .line 42
    :pswitch_0
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lccsansan/aj/getDownloadingList;->getDownloadingList()V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_3

    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 54
    const/16 v4, 0x51

    goto :goto_1

    :cond_2
    nop

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 42
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 60
    :catchall_0
    move-exception p0

    throw p0

    .line 44
    :cond_3
    :goto_2
    invoke-static {p0}, Lccsansan/aj/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Lccsansan/aj/getDownloadingList$removeDownloadListener;

    move-result-object v0

    .line 45
    iput-object v1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 60
    return-object v0

    .line 54
    :goto_3
    sget p0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    .line 48
    :cond_4
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_STORAGE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object p0

    .line 49
    :cond_5
    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 54
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 50
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object p0

    .line 51
    :cond_7
    :pswitch_2
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v0, v1, :cond_9

    .line 54
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 51
    :cond_8
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_HAD_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object p0

    .line 53
    :cond_9
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->toInt()I

    move-result v0

    if-lt v0, v2, :cond_b

    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    sget p0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_a

    .line 54
    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    :goto_5
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    packed-switch v4, :pswitch_data_3

    return-object p0

    :pswitch_3
    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 42
    :catchall_1
    move-exception p0

    throw p0

    .line 55
    :cond_b
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v0, v1, :cond_c

    .line 54
    const/16 v1, 0x21

    goto :goto_6

    :cond_c
    const/16 v1, 0x3d

    :goto_6
    packed-switch v1, :pswitch_data_4

    .line 56
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_AVAILABLE_VERSION:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object p0

    .line 57
    :pswitch_4
    sget-object v1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 57
    :cond_d
    invoke-virtual {p0}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result p0

    if-nez p0, :cond_e

    .line 58
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_HAD_RESERVE_NOT_NET:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    .line 60
    return-object p0

    :cond_e
    sget-object p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->OTHER:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3d
        :pswitch_4
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/aj/getDownloadingList;->getErrorMessage:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/aj/getDownloadingList;->toString:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/aj/getDownloadingList;->ActionTypeReserveApp:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/aj/getDownloadingList;->getActionType:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
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
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 4

    .line 38
    nop

    .line 19
    sget-object v0, Lccsansan/as/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 21
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto/16 :goto_9

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 28
    const/16 p1, 0x1b

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 26
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 27
    iget p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadedCount:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 24
    :pswitch_0
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto/16 :goto_9

    .line 28
    :goto_1
    sget v2, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 27
    :cond_3
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v2, :cond_4

    .line 28
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 38
    :goto_4
    sget p1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 28
    const/16 p1, 0x11

    goto :goto_5

    :cond_5
    const/16 p1, 0xe

    :goto_5
    packed-switch p1, :pswitch_data_3

    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_6

    :pswitch_1
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_7

    :goto_6
    const/16 p1, 0x48

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 38
    :catchall_1
    move-exception p1

    throw p1

    .line 29
    :cond_6
    :pswitch_2
    iget p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingCount:I

    if-eqz p1, :cond_7

    invoke-static {}, Lccsansan/aj/getDownloadingList;->addDownloadListener()I

    move-result v2

    if-le p1, v2, :cond_7

    .line 30
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 38
    sget p1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 p1, p1, 0x2

    :goto_7
    goto :goto_9

    .line 31
    :cond_7
    iget-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/f/unifiedDownload;->getDownloadingList(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    .line 38
    sget p1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_8

    .line 32
    :cond_8
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_9

    .line 33
    :cond_9
    iget-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/f/unifiedDownload;->getDownloadingList(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_a

    .line 28
    goto :goto_8

    :cond_a
    const/4 v0, 0x1

    :goto_8
    packed-switch v0, :pswitch_data_4

    goto :goto_9

    .line 34
    :pswitch_3
    sget-object p1, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 38
    :goto_9
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 13
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 2
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 13
    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_1
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3d

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    :pswitch_0
    return-void

    .line 6
    :cond_3
    :try_start_1
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    sget v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    goto :goto_3

    .line 9
    :cond_4
    :try_start_2
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 13
    :cond_5
    :goto_3
    nop

    .line 12
    invoke-virtual {v0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 13
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils()Z
    .locals 5

    .line 13
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadStatusByUrl(Lccsanandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 13
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/16 v0, 0x4a

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    goto :goto_1

    .line 13
    :pswitch_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    sget-object v3, Lccsansan/aj/getDownloadingList$unifiedDownload;->ALL:Lccsansan/aj/getDownloadingList$unifiedDownload;

    if-ne v0, v3, :cond_4

    .line 13
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v2

    :goto_3
    const/16 v0, 0x15

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    .line 9
    :cond_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 10
    iget-object v3, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    .line 10
    :pswitch_2
    iget-object v3, p0, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    sget-object v4, Lccsansan/aj/getDownloadingList$unifiedDownload;->WIFI:Lccsansan/aj/getDownloadingList$unifiedDownload;

    if-ne v3, v4, :cond_7

    .line 13
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    return v1

    .line 10
    :cond_6
    return v2

    .line 13
    :cond_7
    :goto_5
    iget-object v0, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    :cond_8
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    sget-object v3, Lccsansan/aj/getDownloadingList$unifiedDownload;->MOBILE:Lccsansan/aj/getDownloadingList$unifiedDownload;

    if-ne v0, v3, :cond_9

    return v2

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;I)I
    .locals 3

    .line 18
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    const/16 v1, 0x55

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 14
    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v1, 0x20

    :cond_1
    packed-switch v1, :pswitch_data_1

    :goto_1
    goto :goto_5

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    const/16 v0, 0x4a

    goto :goto_3

    :cond_2
    const/16 v0, 0x41

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 18
    :pswitch_1
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_1
    array-length v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 14
    :cond_3
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    nop

    .line 18
    goto :goto_5

    :cond_4
    :try_start_2
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catch_0
    move-exception p1

    return p2

    :goto_5
    sget p1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 p1, p1, 0x2

    return p2

    :catchall_1
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :pswitch_0
    return-object v1

    :cond_2
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0x2f

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-object p1

    :pswitch_1
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList()V
    .locals 7

    .line 16
    nop

    .line 14
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 14
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x4c

    goto :goto_1

    :cond_2
    const/16 v0, 0x48

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto/16 :goto_6

    .line 3
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    .line 4
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 16
    :pswitch_1
    goto/16 :goto_7

    .line 5
    :cond_3
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1
    const/16 v0, 0x1d

    goto :goto_3

    :cond_4
    const/16 v0, 0x51

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 8
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 9
    iget v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadedCount:I

    if-eqz v0, :cond_6

    goto :goto_4

    .line 16
    :pswitch_2
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 6
    :cond_5
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto/16 :goto_7

    .line 9
    :goto_4
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_6

    .line 10
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_7

    .line 11
    :cond_6
    iget v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingCount:I

    if-eqz v0, :cond_7

    invoke-static {}, Lccsansan/aj/getDownloadingList;->addDownloadListener()I

    move-result v3

    if-le v0, v3, :cond_7

    .line 12
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_AVAilABLE_VERSION:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_7

    .line 13
    :cond_7
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/f/unifiedDownload;->getDownloadingList(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 16
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 14
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 16
    :catchall_1
    move-exception v0

    throw v0

    .line 14
    :cond_8
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    goto :goto_7

    .line 15
    :cond_9
    iget-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/f/unifiedDownload;->getDownloadingList(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 14
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 16
    :cond_a
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 1
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_5

    :cond_b
    const/4 v0, 0x7

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_7

    .line 2
    :goto_6
    sget-object v0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->INSTALLED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 16
    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()J
    .locals 4

    .line 1
    sget v0, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/aj/getDownloadingList;->unifiedDownload()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sget v2, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method public unifiedDownload()J
    .locals 4

    .line 7
    sget v0, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    sget v2, Lccsansan/aj/getDownloadingList;->getErrorCode:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/aj/getDownloadingList;->setErrorMessage:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method
