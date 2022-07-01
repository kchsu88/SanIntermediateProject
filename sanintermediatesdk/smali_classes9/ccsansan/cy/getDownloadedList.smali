.class public Lccsansan/cy/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static getErrorCode:I

.field private static getErrorMessage:J

.field private static toString:I


# instance fields
.field private ActionTypeDetailPage:I

.field private ActionTypeDownload:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

.field private ActionTypeReserveApp:Z

.field private AdError:Ljava/lang/String;

.field private IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field private IncentiveSDK:Z

.field private IncentiveSDK$1:J

.field private addDownloadListener:I

.field private deleteDownItem:Ljava/lang/String;

.field private deleteDownList:I

.field private execute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private getActionType:Ljava/lang/String;

.field private getDownloadStatusByUrl:I

.field private getDownloadedCount:J

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:I

.field private getDownloadingList:Z

.field private getDownloadingRecordByUrl:Ljava/lang/String;

.field private getPackageNameByRecord:I

.field private getThumbPathByRecord:I

.field private pause:I

.field private performAction:I

.field private performActionWhenOffline:I

.field private removeDownloadListener:I

.field private resolveUrl:Ljava/lang/String;

.field private resume:I

.field private shouldTryHandlingAction:J

.field private trackReportClick:I

.field private trackReportShow:I

.field private unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cy/getDownloadedList;->toString:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    const-wide v0, 0x22dd23ce13fcac2bL    # 9.558495660033024E-141

    sput-wide v0, Lccsansan/cy/getDownloadedList;->getErrorMessage:J

    return-void
.end method

.method public constructor <init>(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingList:Z

    .line 3
    iput v0, p0, Lccsansan/cy/getDownloadedList;->removeDownloadListener:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    .line 13
    iput v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    .line 14
    const/4 v1, 0x2

    iput v1, p0, Lccsansan/cy/getDownloadedList;->resume:I

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    .line 16
    iput v0, p0, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    .line 18
    iput-boolean v1, p0, Lccsansan/cy/getDownloadedList;->IncentiveSDK:Z

    .line 20
    const/16 v0, 0x3a98

    iput v0, p0, Lccsansan/cy/getDownloadedList;->getPackageNameByRecord:I

    .line 21
    iput v0, p0, Lccsansan/cy/getDownloadedList;->ActionTypeDetailPage:I

    .line 36
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    .line 37
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->unifiedDownload:Ljava/util/List;

    .line 38
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->addDownloadListener:I

    .line 39
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->removeDownloadListener:I

    .line 41
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedList(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    .line 44
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingRecordByUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadStatusByUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedCount:J

    .line 47
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->deleteDownList(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->pause:I

    .line 48
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingCount(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    .line 49
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedCount(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    .line 50
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->pause(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->resume:I

    .line 51
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resume(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    .line 52
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportClick(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    .line 53
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getPackageNameByRecord(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->trackReportClick:I

    .line 54
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportShow(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveSDK:Z

    .line 55
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveSDK(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->getPackageNameByRecord:I

    .line 56
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getThumbPathByRecord(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->ActionTypeDetailPage:I

    .line 58
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeDetailPage(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->execute(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resolveUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveSDK$1:J

    .line 61
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->shouldTryHandlingAction(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadedList;->shouldTryHandlingAction:J

    .line 62
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveSDK$1(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    .line 63
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeDownload(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList;->performAction:I

    .line 64
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getActionType(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->ActionTypeDownload:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    .line 65
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->performAction(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadedList;->ActionTypeReserveApp:Z

    .line 66
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeReserveApp(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadedList;->getActionType:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->performActionWhenOffline(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    return-void
.end method

.method private IncentiveDownloadUtils(I)Ljava/lang/String;
    .locals 6

    .line 85
    nop

    .line 64
    :try_start_0
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    const-string v1, "apps"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 85
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget v4, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v4, v4, 0x5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 66
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/content/pm/PackageInfo;

    .line 67
    iget-object v5, v4, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget v5, v5, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 85
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 67
    const/4 v5, 0x1

    goto :goto_3

    :pswitch_1
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_0

    .line 71
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, p1, :cond_0

    .line 76
    :goto_4
    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    sget v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    .line 78
    :goto_5
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageInfo;

    .line 79
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "n"

    .line 80
    :try_start_3
    iget-object v5, v1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "v"

    .line 81
    :try_start_4
    iget v1, v1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    const-string v1, "s"

    .line 82
    invoke-virtual {v2, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 83
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_5

    .line 85
    :cond_5
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p1, ""

    return-object p1

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

.method private IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
    .locals 30

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 80
    nop

    .line 12
    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {v9, v0}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 13
    iget-object v2, v9, Lccsansan/cy/getDownloadedList;->unifiedDownload:Ljava/util/List;

    iget-boolean v3, v9, Lccsansan/cy/getDownloadedList;->getDownloadingList:Z

    iget v4, v9, Lccsansan/cy/getDownloadedList;->addDownloadListener:I

    iget v5, v9, Lccsansan/cy/getDownloadedList;->removeDownloadListener:I

    iget-wide v7, v9, Lccsansan/cy/getDownloadedList;->getDownloadedCount:J

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lccsansan/cy/getDownloadedList;->unifiedDownload(Ljava/util/List;ZIIZJ)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, v9, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/16 v1, 0x45

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :goto_0
    const-string v2, "AD.CPIRequest"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget v1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 14
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 15
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 16
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPIRequest#doLoadAd, before Base64 load ad request body is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lccsansan/cy/unifiedDownload;->pause()Z

    move-result v3

    const-string v4, "s"

    if-eqz v3, :cond_4

    :try_start_0
    const-string v3, "?"

    .line 20
    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&gz=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 23
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?gz=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :goto_1
    nop

    .line 80
    sget v5, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 25
    :cond_3
    :try_start_1
    invoke-static {v0}, Lccsansan/cb/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v1, v4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    nop

    .line 31
    :try_start_2
    invoke-static {v0}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v10

    goto :goto_3

    .line 26
    :goto_2
    move-object v3, v10

    :goto_3
    nop

    .line 35
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    :goto_4
    move-object v3, v10

    :goto_5
    const-string v29, ""

    .line 40
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 80
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 41
    :cond_6
    iget-object v13, v9, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v14, v9, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v15, v9, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    move/from16 v17, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    move/from16 v18, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    move/from16 v19, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    move/from16 v20, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    move/from16 v21, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    move/from16 v23, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->getActionType:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v12, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v24, "empty post data"

    invoke-static/range {v12 .. v29}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    return-object v4

    .line 44
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPIRequest#doLoadAd, hostUrl is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPIRequest#doLoadAd, load ad request heads is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPIRequest#doLoadAd, load ad request body is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_3
    invoke-static {v3}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 50
    iget-object v3, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v3, :cond_8

    const-string v3, "Host"

    .line 51
    :try_start_4
    iget-object v5, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_8
    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move/from16 v3, p2

    invoke-direct {v9, v1, v11, v0, v3}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Lccsansan/x/addDownloadListener;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatusCode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_9

    .line 61
    iget-object v13, v9, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v14, v9, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v15, v9, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v1, v9, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    move/from16 v17, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    move/from16 v18, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    move/from16 v19, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    move/from16 v20, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    move/from16 v21, v1

    iget-object v1, v9, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    move/from16 v23, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->getActionType:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v12, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v12 .. v29}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 65
    :cond_9
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPIRequest#doLoadAd, load ad result is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    .line 80
    const/16 v0, 0x37

    goto :goto_6

    :cond_a
    const/4 v0, 0x5

    :goto_6
    packed-switch v0, :pswitch_data_1

    :cond_b
    :goto_7
    goto :goto_8

    .line 68
    :pswitch_1
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    goto :goto_7

    .line 72
    :cond_c
    :try_start_5
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ret_code"

    .line 73
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_9

    :goto_8
    const-string v1, "success"

    :goto_9
    move-object/from16 v27, v29

    .line 78
    iget-object v11, v9, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v12, v9, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v13, v9, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v14, v9, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    iget v15, v9, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    iget v0, v9, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    move/from16 v16, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    move/from16 v17, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    move/from16 v18, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    move/from16 v19, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v9, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    move/from16 v21, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->getActionType:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v10, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v10 .. v27}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    const/16 v0, 0x18

    goto :goto_a

    :cond_d
    const/16 v0, 0x58

    :goto_a
    packed-switch v0, :pswitch_data_2

    goto :goto_b

    :pswitch_2
    return-object v1

    :goto_b
    :try_start_6
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 78
    :catch_3
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v13, v9, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v14, v9, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v15, v9, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v1, v9, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    move/from16 v17, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    move/from16 v18, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    move/from16 v19, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    move/from16 v20, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    move/from16 v21, v1

    iget-object v1, v9, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v9, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    move/from16 v23, v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->getActionType:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v12, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v12 .. v29}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cy/getDownloadedList;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object p0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/util/List;ZII)Lccsanorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZII)",
            "Lccsanorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 93
    nop

    .line 86
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 93
    :goto_0
    nop

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "pos_id"

    invoke-virtual {v2, v3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 90
    const-string v1, "ad_count"

    invoke-virtual {v2, v1, p4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 91
    const-string v1, "support_video"

    invoke-virtual {v2, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 92
    const-string v1, "load_type"

    invoke-virtual {v2, v1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 93
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    sget v1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x15

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    goto :goto_0

    :cond_1
    sget p1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p1}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object p0

    :goto_3
    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

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

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/cy/getDownloadedList;->getErrorMessage:J

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

.method static synthetic addDownloadListener(Lccsansan/cy/getDownloadedList;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    .line 339
    nop

    .line 247
    iget-object v0, v1, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    sget v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v2, v2, 0x2

    .line 247
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    const/16 v2, 0x33

    goto :goto_1

    :cond_1
    const/16 v2, 0x52

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cy/getDownloadingRecordByUrl;

    .line 248
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    goto :goto_2

    .line 339
    :pswitch_0
    return-void

    .line 320
    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 251
    sget-object v3, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v6, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 249
    :pswitch_1
    sget-object v3, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v6, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v3, v3, 0x15

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 320
    const/16 v3, 0xc

    goto :goto_4

    :cond_3
    const/16 v3, 0x44

    :goto_4
    packed-switch v3, :pswitch_data_2

    .line 339
    goto :goto_5

    .line 293
    :pswitch_2
    nop

    .line 254
    :goto_5
    iget v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    const-string v6, "1"

    const/4 v7, 0x0

    const-string v8, "s2s_track_status"

    if-eqz v3, :cond_4

    const/16 v9, 0x11

    if-eq v3, v9, :cond_4

    const/4 v9, 0x7

    if-eq v3, v9, :cond_4

    iget v3, v1, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    const/16 v9, 0x16

    if-ne v3, v9, :cond_e

    .line 257
    :cond_4
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 258
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 339
    sget v3, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v3, v3, 0x9

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 320
    const/16 v3, 0x54

    goto :goto_6

    :cond_5
    const/16 v3, 0x8

    :goto_6
    packed-switch v3, :pswitch_data_3

    .line 259
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_7
    goto/16 :goto_0

    :pswitch_3
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    :try_start_0
    array-length v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    goto :goto_7

    .line 339
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 261
    :cond_6
    sget-object v3, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v3

    new-instance v9, Lccsansan/cy/getDownloadedList$getDownloadingList;

    invoke-direct {v9, v1, v2}, Lccsansan/cy/getDownloadedList$getDownloadingList;-><init>(Lccsansan/cy/getDownloadedList;Lccsansan/cy/getDownloadingRecordByUrl;)V

    invoke-virtual {v3, v9}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto/16 :goto_a

    .line 291
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cpiReportCacheWork-->:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "--mPkgName:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "AD.CPIRequest"

    invoke-static {v9, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 320
    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    const/4 v3, 0x1

    :goto_8
    packed-switch v3, :pswitch_data_4

    .line 292
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 259
    sget v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v3, v3, 0x13

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    .line 293
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    :try_start_1
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_b

    goto :goto_9

    .line 259
    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 293
    :cond_a
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 339
    :goto_9
    goto/16 :goto_0

    .line 295
    :cond_b
    sget-object v3, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_c
    :pswitch_4
    iget-object v3, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v10, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v3

    if-nez v3, :cond_d

    .line 300
    iget-object v3, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v3

    :cond_d
    if-eqz v3, :cond_e

    .line 304
    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iput-object v9, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 305
    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    iput-object v9, v3, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 306
    iget-object v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownItem:Ljava/lang/String;

    iput-object v9, v3, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 307
    iget v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedList:I

    iput v9, v3, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 308
    iget v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    iput v9, v3, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 309
    iget-wide v9, v2, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iput-wide v9, v3, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 310
    invoke-virtual {v3, v8, v6}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v3, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 312
    iget-object v9, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v9

    invoke-virtual {v9, v3}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 313
    iget-object v10, v3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v11, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v12, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v15, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    const/4 v14, 0x2

    const-string v13, "success"

    invoke-static/range {v10 .. v15}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    :cond_e
    :goto_a
    iget v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    const/16 v9, 0x12

    if-ne v3, v9, :cond_f

    .line 320
    const/4 v4, 0x1

    goto :goto_b

    :cond_f
    nop

    :goto_b
    packed-switch v4, :pswitch_data_5

    goto/16 :goto_0

    .line 319
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 293
    sget v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v3, v3, 0x1f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_10

    .line 320
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    :try_start_2
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_11

    goto :goto_c

    .line 293
    :catchall_2
    move-exception v0

    move-object v2, v0

    throw v2

    .line 320
    :cond_10
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_c
    return-void

    .line 323
    :cond_11
    iget-object v3, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v4, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 325
    const-string v4, "0"

    invoke-virtual {v3, v8, v4}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 327
    iget-object v4, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 328
    iget-object v5, v3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v6, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v7, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v10, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    const/4 v9, 0x2

    const-string v8, "failed"

    invoke-static/range {v5 .. v10}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_12
    iget-object v3, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    .line 334
    :cond_13
    iget-object v3, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v4, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 336
    invoke-virtual {v3, v8, v6}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 338
    iget-object v4, v1, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 339
    iget-object v5, v3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v6, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v7, v2, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v10, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    const/4 v9, 0x2

    const-string v8, "success"

    invoke-static/range {v5 .. v10}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic getDownloadedList(Lccsansan/cy/getDownloadedList;)I
    .locals 3

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget p0, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    :goto_0
    packed-switch v0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/cy/getDownloadedList;)J
    .locals 3

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsansan/cy/getDownloadedList;->getDownloadedCount:J

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    return-wide v1
.end method

.method private getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 30

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 217
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 151
    :cond_0
    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {v9, v0}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 152
    iget-object v2, v9, Lccsansan/cy/getDownloadedList;->unifiedDownload:Ljava/util/List;

    iget-boolean v3, v9, Lccsansan/cy/getDownloadedList;->getDownloadingList:Z

    iget v4, v9, Lccsansan/cy/getDownloadedList;->addDownloadListener:I

    iget v5, v9, Lccsansan/cy/getDownloadedList;->removeDownloadListener:I

    iget-wide v7, v9, Lccsansan/cy/getDownloadedList;->getDownloadedCount:J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lccsansan/cy/getDownloadedList;->unifiedDownload(Ljava/util/List;ZIIZJ)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v1

    const-string v2, "AD.CPIRequest"

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPIRequest#batchSyncLoadAds, load ad request heads is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPIRequest#batchSyncLoadAds, load ad request body is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object v1, v9, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6

    .line 159
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 160
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 161
    :pswitch_0
    invoke-static {}, Lccsansan/cy/unifiedDownload;->pause()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_1
    const-string v6, "s"

    packed-switch v5, :pswitch_data_1

    .line 161
    :try_start_0
    const-string v5, "?"

    goto :goto_2

    .line 169
    :pswitch_1
    nop

    .line 174
    invoke-static {v0}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    move-object v5, v10

    goto :goto_4

    .line 163
    :goto_2
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&gz=1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 166
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?gz=1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :goto_3
    nop

    .line 217
    sget v7, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v7, v7, 0x75

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 168
    :cond_5
    :try_start_1
    invoke-static {v0}, Lccsansan/cb/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v1, v6, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, v10

    :goto_4
    nop

    .line 178
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    :goto_5
    move-object v5, v10

    :goto_6
    const-string v29, ""

    .line 183
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v6, "fail"

    if-eqz v1, :cond_8

    .line 217
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 184
    :cond_7
    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v25, 0x1

    const-string v24, "empty post data"

    const-string v27, ""

    const-string v28, ""

    invoke-static/range {v12 .. v29}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v6

    .line 190
    :cond_8
    move/from16 v1, p2

    :try_start_2
    invoke-direct {v9, v5, v11, v0, v1}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Lccsansan/x/addDownloadListener;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatusCode : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_9

    .line 198
    iget v1, v9, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    move/from16 v23, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, 0x1

    const-string v27, ""

    const-string v28, ""

    invoke-static/range {v12 .. v29}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 202
    :cond_9
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPIRequest#batchSyncLoadAds, load ad result is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    .line 217
    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    nop

    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 204
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    :pswitch_2
    nop

    .line 217
    const-string v1, "success"

    move-object/from16 v27, v29

    goto :goto_9

    .line 208
    :cond_b
    :try_start_3
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ret_code"

    .line 209
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 210
    iget-object v3, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-direct {v9, v3, v0}, Lccsansan/cy/getDownloadedList;->removeDownloadListener(Ljava/util/List;Lccsanorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPIRequest#batchSyncLoadAds, mCpiParams = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_8
    move-object/from16 v27, v29

    .line 215
    :goto_9
    iget v0, v9, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    move/from16 v21, v0

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v25, ""

    invoke-static/range {v10 .. v27}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v25, 0x1

    const-string v27, ""

    const-string v28, ""

    invoke-static/range {v12 .. v29}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/cy/getDownloadedList;)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x18

    if-nez v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    const/4 v3, 0x0

    iget-object p0, p0, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v2, 0x29

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    nop

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/16 v1, 0x34

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 43
    sget v1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 41
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "User-Agent"

    packed-switch v1, :pswitch_data_1

    .line 43
    nop

    .line 41
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 40
    :pswitch_0
    nop

    .line 41
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_3
    nop

    .line 41
    :pswitch_1
    nop

    .line 42
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIIIIIIIZIZLjava/lang/String;Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p12

    .line 150
    nop

    .line 94
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 95
    const-string v6, "package_type"

    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 97
    const-string v6, "package_name"

    invoke-virtual {v5, v6, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 98
    const-string v6, "version_name"

    move-object v7, p2

    invoke-virtual {v5, v6, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 99
    const-string v6, "version_code"

    move v7, p3

    invoke-virtual {v5, v6, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 101
    const-string v6, "gp_title"

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 129
    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/16 v6, 0x16

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v6, :pswitch_data_0

    .line 101
    if-ne v2, v7, :cond_3

    if-ne v3, v7, :cond_3

    .line 103
    invoke-static/range {p5 .. p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    sget v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/2addr v2, v8

    if-eqz v2, :cond_2

    const/16 v2, 0x62

    goto :goto_2

    :cond_2
    const/16 v2, 0x21

    :goto_2
    const-string v6, "\uac5e\ub6b6\u99a6\ufc9c\uc788\u2ae3\u0df7\u10a3\u7bd7\u5ecf\ua122\u8434\uef23\uf213\ud500\u3872\u0336\u667d\u494f\uac4e"

    packed-switch v2, :pswitch_data_2

    .line 103
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int v2, v2, 0x1af3

    invoke-static {v6, v2}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 129
    :pswitch_1
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shl-int/lit8 v2, v2, 0x50

    mul-int/lit16 v2, v2, 0x6446

    invoke-static {v6, v2}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 103
    :cond_3
    :goto_3
    :pswitch_2
    move-object/from16 v2, p5

    :goto_4
    const v6, 0xc86b

    invoke-static {v9, v9}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    sub-int/2addr v6, v10

    const-string v10, "\uac4c\u6430\u3ca2\uf50e\u8de8\u464b\u1ec7\ud6aa\uef1c\ua789\u7861\u30ed\uc95a\u8136\u599d"

    invoke-static {v10, v6}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    add-int/lit16 v2, v2, 0x6714

    const-string v6, "\uac4c\ucb48\u6252\u9976\u3008\uaf03\uc637\u7dc2\u94dc\u33e1\uaaf1\uc1a5\u78bc\u97b5\u0f5b\ua653"

    invoke-static {v6, v2}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 106
    move-wide/from16 v10, p6

    invoke-virtual {v5, v2, v10, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 108
    const-string v2, "compete_type"

    invoke-virtual {v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 109
    const-string v2, "gp_version"

    move/from16 v3, p10

    invoke-virtual {v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v6, "qcct"

    invoke-virtual {v5, v6, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 112
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadingList()I

    move-result v2

    const-string v3, "qccsv"

    invoke-virtual {v5, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 113
    const-string v2, "hot_app"

    move/from16 v3, p11

    invoke-virtual {v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 114
    const-string v2, "portal"

    invoke-virtual {v5, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 115
    const-string v2, "app_status"

    move/from16 v3, p13

    invoke-virtual {v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 117
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x1002897

    invoke-static {v9, v9, v9}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "\uac42\u84d2\ufd76\ud59a\u0e16\u66b4\u5fcd\ub06f\ue8e1"

    invoke-static {v2, v3}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 118
    const-string v0, "exchange"

    move/from16 v2, p14

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 119
    const-string v0, "upload_status"

    move/from16 v2, p15

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 120
    invoke-static/range {p17 .. p17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_bundle"

    invoke-virtual {v5, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 122
    invoke-static {}, Lccsansan/cy/unifiedDownload;->deleteDownItem()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7fffffff

    .line 123
    invoke-direct {p0, v0}, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    const-string v2, "apps"

    invoke-virtual {v5, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 128
    :cond_4
    iget-object v0, v1, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 150
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/2addr v0, v8

    const-string v2, "sub_portal"

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, v1, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 150
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 129
    :cond_5
    iget-object v0, v1, Lccsansan/cy/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 150
    :goto_5
    nop

    .line 132
    :cond_6
    iget v0, v1, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    const-string v2, "is_retry"

    invoke-virtual {v5, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 134
    iget-wide v2, v1, Lccsansan/cy/getDownloadedList;->IncentiveSDK$1:J

    const-string v0, ""

    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-lez v4, :cond_8

    .line 129
    sget v4, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v4, v4, 0x75

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/2addr v4, v8

    if-nez v4, :cond_7

    .line 134
    :cond_7
    const/16 v4, 0x30

    invoke-static {v0, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int v4, v4, 0x3e76

    const-string v6, "\uac4f\u9233\ud0b2\u1720\u559b\u9417\uda80\u190e\u5fcc\u9e70\udce4\u035b\u41da"

    invoke-static {v6, v4}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v5, v4, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 138
    :cond_8
    iget-wide v2, v1, Lccsansan/cy/getDownloadedList;->shouldTryHandlingAction:J

    cmp-long v4, v2, v10

    if-lez v4, :cond_9

    .line 129
    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    packed-switch v4, :pswitch_data_3

    sget v4, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/2addr v4, v8

    if-eqz v4, :cond_a

    .line 138
    :cond_a
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int v0, v0, 0x3ea1

    const-string v4, "\uac42\u92e4\ud11a\u17bc\u56ce\u9562\udb81\u1a13\u5957\u9feb\ude0c\u1ca5"

    invoke-static {v4, v0}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v5, v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 142
    :pswitch_3
    iget v0, v1, Lccsansan/cy/getDownloadedList;->performAction:I

    if-eqz v0, :cond_b

    invoke-static {v9, v9, v9}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    add-int/lit16 v0, v0, 0x1cb5

    const-string v2, "\uac4f\ub0f1\u9536\ufa5a\ude93\u23cdt\u64bc\u49dc\uae02\ub340\u979c\uf432"

    invoke-static {v2, v0}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 143
    move/from16 v2, p16

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 129
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/2addr v0, v8

    .line 146
    :cond_b
    invoke-static/range {p18 .. p18}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 147
    const-string v0, "true"

    move-object/from16 v2, p18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 129
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    const/16 v2, 0x51

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/2addr v0, v8

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const/16 v2, 0x35

    :goto_7
    packed-switch v2, :pswitch_data_4

    .line 147
    const/4 v7, 0x2

    goto :goto_8

    .line 129
    :pswitch_4
    const/4 v7, 0x5

    goto :goto_8

    :cond_d
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/2addr v0, v8

    .line 147
    :goto_8
    const-string v0, "ad_type"

    invoke-virtual {v5, v0, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 149
    :cond_e
    invoke-static/range {p19 .. p19}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 150
    const-string v0, "ad_id"

    move-object/from16 v2, p19

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 129
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/2addr v0, v8

    .line 150
    nop

    :cond_f
    return-object v5

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x51
        :pswitch_4
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Lccsansan/x/addDownloadListener;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const-string v0, "AD.CPIRequest"

    .line 0
    const/4 v1, 0x0

    .line 19
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 31
    sget v3, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v3, v3, 0x63

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 19
    :cond_0
    :goto_0
    if-gt v1, p4, :cond_1

    const-string v3, "cpi_report"

    .line 22
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget v7, p0, Lccsansan/cy/getDownloadedList;->getPackageNameByRecord:I

    iget v8, p0, Lccsansan/cy/getDownloadedList;->ActionTypeDetailPage:I

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BII)Lccsansan/x/addDownloadListener;

    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#doRetryPost(): response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    sget p1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    return-object v2

    .line 23
    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRetryPost(): URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Retry count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v1, p4, :cond_0

    .line 31
    :try_start_1
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {}, Lccsansan/cy/unifiedDownload;->deleteDownList()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_1
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsansan/cy/getDownloadedList;)I
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget p0, p0, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

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
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/cy/getDownloadedList;)Lccsanandroid/content/Context;
    .locals 3

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v1, v0, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private removeDownloadListener(Ljava/util/List;Lccsanorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;",
            "Lccsanorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;"
        }
    .end annotation

    .line 236
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "placements"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_1

    .line 236
    :catchall_0
    move-exception p1

    throw p1

    .line 218
    :cond_0
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x54

    goto :goto_0

    :cond_1
    const/16 v0, 0x57

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto/16 :goto_5

    .line 223
    :cond_2
    :pswitch_0
    :try_start_1
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p2

    const-string v0, "ads"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    :goto_2
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v2, v1, :cond_5

    .line 218
    sget v1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 226
    :cond_3
    :try_start_2
    invoke-virtual {p2, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v3, "attr_code"

    .line 227
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_info"

    .line 228
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 218
    const/16 v4, 0x62

    goto :goto_3

    :cond_4
    const/16 v4, 0x23

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 228
    const-string v4, "app_package_name"

    .line 230
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto :goto_2

    .line 234
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cy/getDownloadingRecordByUrl;

    .line 235
    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_6

    .line 218
    sget v2, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    .line 235
    :cond_7
    :try_start_3
    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveSDK$1:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    :cond_8
    return-object p1

    :goto_5
    sget p2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 p2, p2, 0x69

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    .line 218
    const/4 p2, 0x0

    goto :goto_6

    :cond_9
    const/4 p2, 0x1

    :goto_6
    packed-switch p2, :pswitch_data_2

    .line 236
    goto :goto_7

    :pswitch_2
    return-object p1

    :goto_7
    const/16 p2, 0x5f

    :try_start_4
    div-int/2addr p2, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;Z)Lccsanorg/json/JSONObject;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 63
    nop

    .line 44
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 45
    new-instance v1, Lccsansan/bw/AdError;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 46
    const-string v2, "key_county_abbreviation"

    invoke-virtual {v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "forced_country"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 47
    const-string v2, "key_city_abbreviation"

    invoke-virtual {v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "forced_city"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const/4 v1, -0x1

    const/16 v21, 0x0

    if-eqz p2, :cond_9

    .line 50
    iget-object v2, v10, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 51
    new-instance v15, Lccsanorg/json/JSONArray;

    invoke-direct {v15}, Lccsanorg/json/JSONArray;-><init>()V

    .line 52
    iget-object v2, v10, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 63
    :pswitch_0
    nop

    .line 52
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 63
    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 52
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lccsansan/cy/getDownloadingRecordByUrl;

    .line 53
    iget-object v2, v14, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 55
    :pswitch_1
    nop

    .line 59
    const-string v1, "package_compete_list"

    invoke-virtual {v0, v1, v15}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 63
    sget v1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v1, v1, 0x2

    move-object v2, v0

    goto/16 :goto_d

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    :goto_4
    :pswitch_2
    goto :goto_8

    :pswitch_3
    sget v2, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    iget-object v2, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_5
    packed-switch v2, :pswitch_data_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 53
    :cond_3
    iget-object v2, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_6
    iget-object v2, v14, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 63
    const/4 v3, 0x0

    goto :goto_7

    :cond_4
    nop

    :goto_7
    packed-switch v3, :pswitch_data_3

    goto :goto_4

    .line 53
    :cond_5
    :goto_8
    iget v13, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    const/16 v2, 0x11

    if-eq v13, v1, :cond_6

    .line 63
    const/16 v3, 0x11

    goto :goto_9

    :cond_6
    const/16 v3, 0x58

    :goto_9
    packed-switch v3, :pswitch_data_4

    move-object/from16 v24, v0

    move-object v0, v15

    move-object/from16 v10, p0

    move-object/from16 v0, v24

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_4
    sget v3, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 54
    :cond_7
    iget v2, v14, Lccsansan/cy/getDownloadingRecordByUrl;->execute:I

    iput v2, v10, Lccsansan/cy/getDownloadedList;->performActionWhenOffline:I

    .line 55
    iget-object v2, v14, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, v14, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownItem:Ljava/lang/String;

    iget v4, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedList:I

    iget-object v5, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    iget-object v6, v14, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-wide v7, v14, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iget v9, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    iget v11, v10, Lccsansan/cy/getDownloadedList;->pause:I

    iget v12, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    iget v1, v14, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    move/from16 v23, v13

    move v13, v1

    iget v1, v14, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedCount:I

    move-object v10, v14

    move v14, v1

    iget v1, v10, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownList:I

    move-object/from16 v24, v0

    move-object v0, v15

    move v15, v1

    iget-boolean v1, v10, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingCount:Z

    move/from16 v16, v1

    iget v1, v10, Lccsansan/cy/getDownloadingRecordByUrl;->getPackageNameByRecord:I

    move/from16 v17, v1

    iget-boolean v1, v10, Lccsansan/cy/getDownloadingRecordByUrl;->resume:Z

    move/from16 v18, v1

    iget-object v1, v10, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeDetailPage:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v10, Lccsansan/cy/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    move-object/from16 v20, v1

    const/4 v10, -0x1

    move-object/from16 v1, p0

    move/from16 v10, v23

    invoke-direct/range {v1 .. v20}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIIIIIIIZIZLjava/lang/String;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    move-object/from16 v10, p0

    move-object v15, v0

    move-object/from16 v0, v24

    const/4 v1, -0x1

    goto/16 :goto_0

    .line 50
    :cond_8
    move-object/from16 v24, v0

    move-object/from16 v2, v24

    goto/16 :goto_d

    .line 47
    :cond_9
    move-object/from16 v24, v0

    .line 62
    move-object/from16 v10, p0

    iget-object v0, v10, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    iget-object v0, v10, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xb

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_a

    const/16 v0, 0x2d

    goto :goto_a

    :cond_a
    const/16 v0, 0x40

    :goto_a
    packed-switch v0, :pswitch_data_5

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 62
    :cond_b
    iget-object v0, v10, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_b
    iget-object v0, v10, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, v24

    goto :goto_d

    :cond_d
    :goto_c
    :pswitch_5
    iget v0, v10, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 63
    sget v1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_e

    :cond_e
    iget-object v2, v10, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v3, v10, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    iget v4, v10, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    iget-object v5, v10, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v6, v10, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-wide v7, v10, Lccsansan/cy/getDownloadedList;->getDownloadedCount:J

    iget v9, v10, Lccsansan/cy/getDownloadedList;->deleteDownList:I

    iget v11, v10, Lccsansan/cy/getDownloadedList;->pause:I

    iget v12, v10, Lccsansan/cy/getDownloadedList;->resume:I

    iget v13, v10, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    iget v14, v10, Lccsansan/cy/getDownloadedList;->trackReportShow:I

    iget v15, v10, Lccsansan/cy/getDownloadedList;->trackReportClick:I

    iget-boolean v1, v10, Lccsansan/cy/getDownloadedList;->IncentiveSDK:Z

    move/from16 v16, v1

    iget v1, v10, Lccsansan/cy/getDownloadedList;->performAction:I

    move/from16 v17, v1

    iget-boolean v1, v10, Lccsansan/cy/getDownloadedList;->ActionTypeReserveApp:Z

    move/from16 v18, v1

    iget-object v1, v10, Lccsansan/cy/getDownloadedList;->getActionType:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v10, Lccsansan/cy/getDownloadedList;->AdError:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move v10, v0

    invoke-direct/range {v1 .. v20}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIIIIIIIZIZLjava/lang/String;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package_compete"

    move-object/from16 v2, v24

    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_d

    .line 62
    :cond_f
    move-object/from16 v2, v24

    .line 63
    :goto_d
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x11
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x40
        :pswitch_5
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/util/List;ZIIZJ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIIZJ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 18
    const-string p6, "AD.CPIRequest"

    .line 3
    new-instance p7, Lccsanorg/json/JSONObject;

    invoke-direct {p7}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v0, "placements"

    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils(Ljava/util/List;ZII)Lccsanorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p7, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "target"

    .line 6
    :try_start_1
    iget-object p2, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {p0, p2, p5}, Lccsansan/cy/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Z)Lccsanorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {p1, p7}, Lccsansan/bw/pause;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    sget p1, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 8
    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createADReteParams error :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createPara ms jsonException :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_1
    invoke-virtual {p7}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 p2, p2, 0x25

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/cy/getDownloadedList;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private unifiedDownload(Ljava/lang/String;)V
    .locals 12

    .line 174
    nop

    .line 81
    iget v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingCount:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto/16 :goto_e

    .line 84
    :cond_0
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v1, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v1, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    iget v0, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    const-string v1, "1"

    const-string v2, "s2s_track_status"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/16 v5, 0x11

    if-eq v0, v5, :cond_3

    .line 174
    sget v5, Lccsansan/cy/getDownloadedList;->toString:I

    const/4 v6, 0x7

    add-int/2addr v5, v6

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 90
    :cond_2
    if-eq v0, v6, :cond_3

    const/16 v5, 0x16

    if-ne v0, v5, :cond_11

    .line 92
    :cond_3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 93
    :cond_4
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    const/16 v0, 0x2e

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 94
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 96
    :cond_6
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    const-string v6, "ad_settings"

    invoke-direct {v0, v5, v6}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 100
    :cond_7
    :pswitch_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v5, Lccsansan/cy/getDownloadedList$unifiedDownload;

    invoke-direct {v5, p0}, Lccsansan/cy/getDownloadedList$unifiedDownload;-><init>(Lccsansan/cy/getDownloadedList;)V

    invoke-virtual {v0, v5}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 174
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_b

    .line 127
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpiReportCacheWork-->:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--mPkgName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AD.CPIRequest"

    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 174
    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_8

    :pswitch_2
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 128
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    .line 174
    :pswitch_3
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x61

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v0, 0x1

    :goto_6
    packed-switch v0, :pswitch_data_4

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 129
    :goto_7
    :pswitch_4
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 174
    return-void

    .line 131
    :cond_d
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_e
    :goto_8
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v6, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-nez v0, :cond_f

    .line 174
    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    packed-switch v5, :pswitch_data_5

    .line 136
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    :pswitch_5
    if-eqz v0, :cond_10

    .line 174
    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    packed-switch v5, :pswitch_data_6

    .line 139
    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iput-object v5, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iput-object v5, v0, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 141
    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    iput-object v5, v0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 142
    iget v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadStatusByUrl:I

    iput v5, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 143
    iget v5, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    iput v5, v0, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 144
    iget-wide v5, p0, Lccsansan/cy/getDownloadedList;->getDownloadedCount:J

    iput-wide v5, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 145
    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 147
    iget-object v5, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 148
    iget-object v6, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v7, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v8, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v11, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const/4 v10, 0x2

    const-string v9, "success"

    invoke-static/range {v6 .. v11}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    :cond_11
    :goto_b
    iget v0, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    const/16 v5, 0x12

    if-ne v0, v5, :cond_12

    .line 174
    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    :goto_c
    packed-switch v3, :pswitch_data_7

    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    .line 154
    :cond_13
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 155
    iget-object p1, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    .line 158
    :cond_14
    iget-object p1, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 160
    const-string v0, "0"

    invoke-virtual {p1, v2, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 162
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 163
    iget-object v1, p1, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v6, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const/4 v5, 0x2

    const-string v4, "failed"

    invoke-static/range {v1 .. v6}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_e

    .line 166
    :cond_15
    iget-object p1, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    .line 169
    :cond_16
    iget-object p1, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 174
    const/16 v0, 0x62

    goto :goto_d

    :cond_17
    const/16 v0, 0x41

    :goto_d
    packed-switch v0, :pswitch_data_8

    .line 169
    nop

    .line 171
    invoke-virtual {p1, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 173
    iget-object v0, p0, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 174
    iget-object v1, p1, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/cy/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/cy/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    iget-object v6, p0, Lccsansan/cy/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const/4 v5, 0x2

    const-string v4, "success"

    invoke-static/range {v1 .. v6}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    :goto_e
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x41
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 4

    .line 11
    sget v0, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/getDownloadedList;->toString:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    :cond_0
    iget v0, p0, Lccsansan/cy/getDownloadedList;->getThumbPathByRecord:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    .line 8
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    const/16 v2, 0x16

    if-ne v0, v2, :cond_4

    .line 3
    :cond_2
    :pswitch_0
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadedCount()I

    move-result v1

    .line 8
    sget v0, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x2f

    goto :goto_1

    :cond_3
    const/16 v0, 0x1c

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 5
    :cond_4
    :pswitch_1
    invoke-static {}, Lccsansan/cw/getDownloadingList;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0, v1}, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lccsansan/cy/getDownloadedList;->ActionTypeDownload:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    if-eqz v1, :cond_6

    .line 11
    sget v2, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 8
    const/16 v2, 0x1b

    goto :goto_2

    :cond_5
    const/16 v2, 0x2d

    :goto_2
    invoke-interface {v1, v0}, Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 11
    :catchall_0
    move-exception v0

    throw v0

    .line 10
    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncLoadAdFsyncLoadAdForCpiorCPI->jsonStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AD.CPIRequest"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v0}, Lccsansan/cy/getDownloadedList;->unifiedDownload(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 6

    .line 246
    nop

    .line 237
    invoke-static {}, Lccsansan/cw/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 238
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsansan/cy/getDownloadedList;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batchSyncLoadAdSForCPI->jsonStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD.CPIRequest"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 241
    :cond_1
    iget-object v1, p0, Lccsansan/cy/getDownloadedList;->execute:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    nop

    .line 241
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    const/16 v2, 0x3f

    goto :goto_2

    :cond_3
    const/16 v2, 0x36

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 241
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cy/getDownloadingRecordByUrl;

    .line 242
    iget-object v2, v2, Lccsansan/cy/getDownloadingRecordByUrl;->shouldTryHandlingAction:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    if-eqz v2, :cond_2

    .line 246
    sget v4, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v4, v4, 0x69

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 243
    invoke-interface {v2, v0}, Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)V

    const/16 v2, 0x60

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v0

    throw v0

    .line 243
    :cond_4
    invoke-interface {v2, v0}, Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :goto_3
    :pswitch_1
    invoke-direct {p0, v0}, Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V

    .line 243
    sget v1, Lccsansan/cy/getDownloadedList;->toString:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/getDownloadedList;->getErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const/16 v1, 0x37

    :try_start_1
    div-int/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    .line 246
    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method
