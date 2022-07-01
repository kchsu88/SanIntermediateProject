.class public Lccsansan/ai/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final unifiedDownload:I


# instance fields
.field private ActionTypeDetailPage:Ljava/lang/String;

.field private ActionTypeDownload:Ljava/lang/String;

.field private ActionTypeReserveApp:Ljava/lang/String;

.field private AdError:Ljava/lang/String;

.field private IncentiveDownloadUtils:I

.field private IncentiveSDK:Ljava/lang/String;

.field private IncentiveSDK$1:Ljava/lang/String;

.field private addDownloadListener:I

.field private deleteDownItem:Ljava/lang/String;

.field private deleteDownList:I

.field private execute:Ljava/lang/String;

.field private getActionType:Ljava/lang/String;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:Ljava/lang/String;

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:Ljava/lang/String;

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/lang/String;

.field private getErrorCode:Ljava/lang/String;

.field private getErrorMessage:Ljava/lang/String;

.field private getPackageNameByRecord:Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field private getThumbPathByRecord:Ljava/lang/String;

.field private pause:Ljava/lang/String;

.field private performAction:Ljava/lang/String;

.field private performActionWhenOffline:I

.field private removeDownloadListener:Ljava/lang/String;

.field private resolveUrl:I

.field private resume:Ljava/lang/String;

.field private setErrorMessage:Lccsansan/ab/removeDownloadListener$getDownloadingList;

.field private shouldTryHandlingAction:Ljava/lang/String;

.field private toString:Ljava/lang/String;

.field private trackReportClick:Ljava/lang/String;

.field private trackReportShow:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bl/addDownloadListener;->unifiedDownload()I

    move-result v0

    sput v0, Lccsansan/ai/addDownloadListener;->unifiedDownload:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move v1, p1

    iput v1, v0, Lccsansan/ai/addDownloadListener;->addDownloadListener:I

    .line 3
    move v1, p2

    iput v1, v0, Lccsansan/ai/addDownloadListener;->IncentiveDownloadUtils:I

    .line 4
    move-object v1, p3

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 5
    move-object v1, p4

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 7
    move-object v1, p5

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 8
    move-object v1, p6

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 9
    move-object v1, p7

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 11
    move-object v1, p8

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    .line 12
    move v1, p9

    iput v1, v0, Lccsansan/ai/addDownloadListener;->deleteDownList:I

    .line 13
    move-object v1, p10

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    .line 14
    move-object v1, p11

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    .line 15
    move-object v1, p12

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->resume:Ljava/lang/String;

    .line 16
    move-object v1, p13

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->pause:Ljava/lang/String;

    .line 17
    move-object/from16 v1, p14

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->trackReportShow:Ljava/lang/String;

    .line 18
    move-object/from16 v1, p15

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    .line 19
    move-object/from16 v1, p16

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    .line 21
    move-object/from16 v1, p17

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    .line 22
    move-object/from16 v1, p18

    iput-object v1, v0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsansan/ai/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 25
    sget v1, Lccsansan/ai/addDownloadListener;->unifiedDownload:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-static {}, Lccsansan/bw/toString;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lccsansan/ai/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    sget-object v6, Lccsansan/ai/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    sget-object v8, Lccsansan/ai/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    sget v9, Lccsansan/ai/getDownloadingList;->getDownloadingList:I

    sget-object v10, Lccsansan/ai/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    sget v11, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v17, Lccsansan/ai/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    sget-object v18, Lccsansan/ai/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    .line 27
    const-string v11, "android"

    invoke-direct/range {v0 .. v18}, Lccsansan/ai/addDownloadListener;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveSDK()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ai/addDownloadListener;->IncentiveDownloadUtils:I

    return v0
.end method

.method public deleteDownItem()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ai/addDownloadListener;->deleteDownList:I

    return v0
.end method

.method public deleteDownList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->resume:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->trackReportShow:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingList()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ai/addDownloadListener;->addDownloadListener:I

    return v0
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameByRecord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPathByRecord()Lccsanorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "sdk_ver"

    .line 3
    :try_start_0
    iget v2, p0, Lccsansan/ai/addDownloadListener;->addDownloadListener:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "time_zone"

    .line 4
    :try_start_1
    iget v2, p0, Lccsansan/ai/addDownloadListener;->IncentiveDownloadUtils:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "commit_id"

    .line 5
    :try_start_2
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "pid"

    .line 6
    :try_start_3
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "commit_time"

    .line 7
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "app_token"

    .line 9
    :try_start_5
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "app_id"

    .line 10
    :try_start_6
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v1, :cond_0

    const-string v1, "beyla_id"

    .line 12
    :try_start_7
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_0
    const-string v1, "release_channel"

    .line 15
    :try_start_8
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v3, "unknown"

    if-nez v2, :cond_1

    :try_start_9
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "app_ver_code"

    .line 16
    :try_start_a
    iget v2, p0, Lccsansan/ai/addDownloadListener;->deleteDownList:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_a
    .catch Lccsanorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "app_ver_name"

    .line 17
    :try_start_b
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_b
    .catch Lccsanorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "os_name"

    .line 18
    :try_start_c
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_c
    .catch Lccsanorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "os_ver"

    .line 19
    :try_start_d
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->resume:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->resume:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_d
    .catch Lccsanorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string v1, "language"

    .line 20
    :try_start_e
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->pause:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->pause:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_e
    .catch Lccsanorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string v1, "manufacture"

    .line 21
    :try_start_f
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_f
    .catch Lccsanorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string v1, "device_model"

    .line 22
    :try_start_10
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v2, v3

    :goto_6
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_10
    .catch Lccsanorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    const-string v1, "resolution"

    .line 23
    :try_start_11
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->trackReportClick:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->trackReportClick:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_11
    .catch Lccsanorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    const-string v1, "net_type"

    .line 24
    :try_start_12
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getPackageNameByRecord:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v2}, Lccsansan/ab/removeDownloadListener$addDownloadListener;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_12
    .catch Lccsanorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    const-string v1, "sim_count"

    .line 26
    :try_start_13
    iget v2, p0, Lccsansan/ai/addDownloadListener;->resolveUrl:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_13
    .catch Lccsanorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    const-string v1, "sim_active_cnt"

    .line 27
    :try_start_14
    iget v2, p0, Lccsansan/ai/addDownloadListener;->performActionWhenOffline:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 28
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getActionType:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_14
    .catch Lccsanorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0

    if-nez v1, :cond_9

    const-string v1, "cid_sn"

    .line 29
    :try_start_15
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getActionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 30
    :cond_9
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->AdError:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_15
    .catch Lccsanorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0

    if-nez v1, :cond_a

    const-string v1, "build_num"

    .line 31
    :try_start_16
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->AdError:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 32
    :cond_a
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->setErrorMessage:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->UNKNOWN:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_16
    .catch Lccsanorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_0

    if-eq v1, v2, :cond_b

    const-string v2, "mobile_data_type"

    .line 33
    :try_start_17
    invoke-virtual {v1}, Lccsansan/ab/removeDownloadListener$getDownloadingList;->getValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 34
    :cond_b
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->toString:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_17
    .catch Lccsanorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_0

    if-nez v1, :cond_c

    const-string v1, "promotion_channel"

    .line 35
    :try_start_18
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->toString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 36
    :cond_c
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_18
    .catch Lccsanorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    if-nez v1, :cond_d

    const-string v1, "carrier"

    .line 37
    :try_start_19
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 38
    :cond_d
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v1
    :try_end_19
    .catch Lccsanorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_0

    if-eqz v1, :cond_17

    const-string v1, "device_id"

    .line 39
    :try_start_1a
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1a
    .catch Lccsanorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_0

    const-string v1, "device_id_type"

    .line 40
    :try_start_1b
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bw/getMinIntervalToReturn$getDownloadingList;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/bw/getMinIntervalToReturn$getDownloadingList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1b
    .catch Lccsanorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_0

    if-nez v1, :cond_e

    const-string v1, "app_device_id"

    .line 42
    :try_start_1c
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 43
    :cond_e
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1c
    .catch Lccsanorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_0

    if-nez v1, :cond_f

    const-string v1, "mac"

    .line 44
    :try_start_1d
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 45
    :cond_f
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->execute:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1d
    .catch Lccsanorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_0

    if-nez v1, :cond_10

    const-string v1, "android_id"

    .line 46
    :try_start_1e
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 47
    :cond_10
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1e
    .catch Lccsanorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_0

    if-nez v1, :cond_11

    const-string v1, "account"

    .line 48
    :try_start_1f
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 50
    :cond_11
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getErrorCode:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1f
    .catch Lccsanorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_0

    if-nez v1, :cond_12

    const-string v1, "gaid"

    .line 51
    :try_start_20
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->getErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 53
    :cond_12
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->ActionTypeReserveApp:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_20
    .catch Lccsanorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_0

    if-nez v1, :cond_13

    const-string v1, "imei"

    .line 54
    :try_start_21
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->ActionTypeReserveApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 55
    :cond_13
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->performAction:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_21
    .catch Lccsanorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_0

    const-string v2, "imsi"

    if-nez v1, :cond_14

    .line 56
    :try_start_22
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_8

    :cond_14
    nop

    .line 58
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 56
    :goto_8
    nop

    .line 60
    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_22
    .catch Lccsanorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_0

    if-nez v1, :cond_15

    const-string v1, "imsi_minor"

    .line 61
    :try_start_23
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_23
    .catch Lccsanorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_0

    :cond_15
    const-string v1, "country"

    .line 62
    :try_start_24
    iget-object v2, p0, Lccsansan/ai/addDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v3, p0, Lccsansan/ai/addDownloadListener;->trackReportShow:Ljava/lang/String;

    :cond_16
    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_17
    const-string v1, "pcount"

    const/16 v2, 0x20

    .line 65
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_24
    .catch Lccsanorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_0

    goto :goto_9

    :catch_0
    move-exception v1

    .line 68
    const-string v1, "impossible"

    invoke-static {v1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/String;)V

    :goto_9
    return-object v0
.end method

.method public pause()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public resume()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->pause:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderEntity [mSdkVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/ai/addDownloadListener;->addDownloadListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/ai/addDownloadListener;->IncentiveDownloadUtils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCommitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bw/getMinIntervalToReturn$getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/bw/getMinIntervalToReturn$getDownloadingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReleaseChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppVerCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/ai/addDownloadListener;->deleteDownList:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppVerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOsVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->pause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getPackageNameByRecord:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMacAddres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAndroidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->ActionTypeReserveApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCidSn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBuildNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->AdError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMobileDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->setErrorMessage:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPromotionChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->toString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGAid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/addDownloadListener;->getErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackReportShow()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lccsansan/ai/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    .line 7
    :cond_1
    invoke-static {}, Lccsansan/bw/execute;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->getDownloadedList:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v1

    iput-object v1, p0, Lccsansan/ai/addDownloadListener;->getPackageNameByRecord:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 10
    invoke-virtual {v0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    iput-object v1, p0, Lccsansan/ai/addDownloadListener;->setErrorMessage:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    .line 11
    invoke-virtual {v0}, Lccsansan/ab/removeDownloadListener;->getDownloadedList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->getErrorMessage:Ljava/lang/String;

    .line 12
    sget-object v0, Lccsansan/ai/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->toString:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadStatusByUrl(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->trackReportClick:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->execute:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->resume(Lccsanandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccsansan/ai/addDownloadListener;->resolveUrl:I

    .line 19
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->pause(Lccsanandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccsansan/ai/addDownloadListener;->performActionWhenOffline:I

    .line 20
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->ActionTypeReserveApp:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->deleteDownList(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lccsansan/ai/addDownloadListener;->performAction:Ljava/lang/String;

    .line 24
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    .line 27
    :cond_3
    invoke-static {p1}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->performAction:Ljava/lang/String;

    .line 29
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->getActionType:Ljava/lang/String;

    .line 30
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ai/addDownloadListener;->AdError:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ai/addDownloadListener;->getErrorCode:Ljava/lang/String;

    return-void
.end method
