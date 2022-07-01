.class public Lccsansan/dt/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dt/removeDownloadListener$addDownloadListener;
    }
.end annotation


# static fields
.field private static getRemainedDelayTime:I

.field private static hasFinished:C

.field private static hasSucceed:I

.field private static hasSucceedByPassingRestrictions:C

.field private static isRunning:C

.field private static onPlacementStartEnd:C


# instance fields
.field private ActionTypeDetailPage:Z

.field private ActionTypeDownload:J

.field private ActionTypeReserveApp:I

.field private final AdError:Z

.field private final AdError$ErrorCode:Z

.field private AdFormat:I

.field private AdInfo:Lccsansan/dt/addDownloadListener;

.field private IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

.field private final IncentiveSDK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private IncentiveSDK$1:Ljava/lang/String;

.field private final addDownloadListener:Ljava/lang/String;

.field private final deleteDownItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteDownList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private execute:Ljava/lang/String;

.field private getActionType:I

.field private getAdFormat:Lccsansan/dt/pause;

.field private getAdSize:Lccsansan/dt/getPackageNameByRecord;

.field private final getDownloadStatusByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingList:J

.field private final getDownloadingRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getErrorCode:Z

.field private getErrorMessage:I

.field private getLoadStatus:Lccsansan/dt/removeDownloadListener$addDownloadListener;

.field private getLoaderClassName:Lccsansan/dt/getDownloadedRecordByUrl;

.field private getLocalExtras:Lccsansan/dt/resume;

.field private getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

.field private getMinIntervalToStart:Ljava/lang/Object;

.field private getName:Ljava/lang/String;

.field private getNetworkId:Ljava/lang/String;

.field private getPackageNameByRecord:Ljava/lang/String;

.field private getThumbPathByRecord:Ljava/lang/String;

.field private isIdle:Z

.field private onPlacementStartLoad:Ljava/lang/String;

.field private final pause:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private performAction:I

.field private final performActionWhenOffline:Z

.field private final removeDownloadListener:I

.field private resolveUrl:Ljava/lang/String;

.field private final resume:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private setAdFormat:Ljava/lang/String;

.field private setAdSize:Ljava/lang/String;

.field private setErrorMessage:Z

.field private setLoadStartTime:Ljava/lang/String;

.field private setLoaderClassName:I

.field private setLocalExtras:J

.field private setNetworkId:I

.field private shouldTryHandlingAction:I

.field private final toString:Z

.field private final trackReportClick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackReportShow:Ljava/lang/String;

.field private final unifiedDownload:Z

.field private updateLoadStatus:I

.field private valueOf:Ljava/lang/String;

.field private values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    const/16 v0, 0x4f7f

    sput-char v0, Lccsansan/dt/removeDownloadListener;->isRunning:C

    const/16 v0, 0x1cd3

    sput-char v0, Lccsansan/dt/removeDownloadListener;->hasSucceedByPassingRestrictions:C

    const v0, 0xb9e6

    sput-char v0, Lccsansan/dt/removeDownloadListener;->hasFinished:C

    const v0, 0xed36

    sput-char v0, Lccsansan/dt/removeDownloadListener;->onPlacementStartEnd:C

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->pause:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingCount:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedCount:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->resume:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->deleteDownList:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->trackReportClick:Ljava/util/List;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload:J

    .line 29
    const/4 v2, 0x0

    iput v2, p0, Lccsansan/dt/removeDownloadListener;->getActionType:I

    .line 30
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->performAction:I

    .line 31
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp:I

    .line 39
    const/4 v3, 0x1

    iput v3, p0, Lccsansan/dt/removeDownloadListener;->AdFormat:I

    .line 46
    const-string v4, "-1"

    iput-object v4, p0, Lccsansan/dt/removeDownloadListener;->setAdSize:Ljava/lang/String;

    .line 61
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->setLoaderClassName:I

    .line 62
    const-string v4, "NORMAL"

    iput-object v4, p0, Lccsansan/dt/removeDownloadListener;->getNetworkId:Ljava/lang/String;

    .line 63
    const-string v4, ""

    iput-object v4, p0, Lccsansan/dt/removeDownloadListener;->setLoadStartTime:Ljava/lang/String;

    .line 64
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->setNetworkId:I

    .line 65
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->updateLoadStatus:I

    .line 66
    iput-wide v0, p0, Lccsansan/dt/removeDownloadListener;->setLocalExtras:J

    .line 69
    const-string v5, "0"

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 73
    const-string v5, "ad_id"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/String;

    .line 74
    const-string v5, "order_id"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    const-string v5, "view_id"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    .line 76
    const-string v5, "action_type"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lccsansan/dt/removeDownloadListener;->shouldTryHandlingAction:I

    .line 77
    const-string v5, "sub_action_type"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 78
    const-string v5, "valid_imp_duration"

    const-wide/32 v6, 0x36ee80

    invoke-virtual {p1, v5, v6, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 79
    const-string v5, "landing_page"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    .line 80
    const-string v5, "deeplink_url"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->execute:Ljava/lang/String;

    .line 81
    const-string v5, "ad_logo"

    invoke-virtual {p1, v5, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage:Z

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/lit8 v5, v5, 0x14

    const-string v6, "\u92ef\ub35f\uf015\u666a\u3083\ubc0f\ud50c\ua6eb\udbfc\u1530\uf6a5\u0656\uec3a\u0aac\ud5fc\u3556\ua6f2\ue13d\u7ecb\u2290"

    invoke-static {v6, v5}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/getName;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Lccsanorg/json/JSONObject;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    .line 89
    const-string v5, "modify_time"

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingList:J

    .line 90
    const-string v5, "support_cache"

    invoke-virtual {p1, v5, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline:Z

    .line 91
    const-string v5, "bid"

    invoke-virtual {p1, v5, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload:J

    .line 92
    const-string v0, "ad_type"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->getActionType:I

    .line 93
    const-string v0, "dsp_type"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->performAction:I

    .line 94
    const-string v0, "dsp_id"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp:I

    .line 95
    const-string v0, "match_app_pkg"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 97
    const-string v0, "is_offline"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->setErrorMessage:Z

    .line 98
    const-string v0, "is_bottom"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->AdError:Z

    .line 99
    const-string v0, "is_startup"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->toString:Z

    .line 100
    const-string v0, "is_new_cache"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->getErrorCode:Z

    .line 101
    const-string v0, "cycle_play_count"

    invoke-virtual {p1, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 103
    const-string v0, "bind_oneshot_id"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(Lccsanorg/json/JSONObject;)V

    .line 107
    const-string v0, "animation_type"

    invoke-virtual {p1, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->removeDownloadListener:I

    const/16 v0, 0x30

    invoke-static {v4, v0, v2, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    const-string v1, "\uac0e\ub05f\u0187\uf840\u8bd2\u2fc9\uf663\u2f50\u08d8\ufad4\uda4f\u11d9\u494f\ue546"

    invoke-static {v1, v0}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->getErrorMessage:I

    .line 110
    const-string v0, "need_landing_page"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->unifiedDownload:Z

    .line 111
    const-string v0, "ad_in_keep_popup"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    const-string v1, "\u7a6f\ub1d7\u89e3\ufa53\u8666\u91c4\u1ab5\uc8f5\u3292\u5b69\u3982\ucbbe\u0dca\ua7f6\ud80a\u03e8"

    invoke-static {v1, v0}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->AdFormat:I

    .line 114
    iput-boolean v3, p0, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode:Z

    .line 116
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;)V

    .line 117
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(Lccsanorg/json/JSONObject;)V

    .line 118
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->deleteDownItem(Lccsanorg/json/JSONObject;)V

    .line 119
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedList(Lccsanorg/json/JSONObject;)V

    .line 120
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl(Lccsanorg/json/JSONObject;)V

    .line 121
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl(Lccsanorg/json/JSONObject;)V

    .line 122
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->pause:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingCount:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedCount:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->resume:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->deleteDownList:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->trackReportClick:Ljava/util/List;

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload:J

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lccsansan/dt/removeDownloadListener;->getActionType:I

    .line 152
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->performAction:I

    .line 153
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp:I

    .line 161
    const/4 v3, 0x1

    iput v3, p0, Lccsansan/dt/removeDownloadListener;->AdFormat:I

    .line 168
    const-string v4, "-1"

    iput-object v4, p0, Lccsansan/dt/removeDownloadListener;->setAdSize:Ljava/lang/String;

    .line 183
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->setLoaderClassName:I

    .line 184
    const-string v4, "NORMAL"

    iput-object v4, p0, Lccsansan/dt/removeDownloadListener;->getNetworkId:Ljava/lang/String;

    .line 185
    const-string v4, ""

    iput-object v4, p0, Lccsansan/dt/removeDownloadListener;->setLoadStartTime:Ljava/lang/String;

    .line 186
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->setNetworkId:I

    .line 187
    iput v2, p0, Lccsansan/dt/removeDownloadListener;->updateLoadStatus:I

    .line 188
    iput-wide v0, p0, Lccsansan/dt/removeDownloadListener;->setLocalExtras:J

    .line 191
    const-string v0, "0"

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad:Ljava/lang/String;

    .line 271
    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/String;

    .line 272
    const-string v0, "match_app_pkg"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 273
    const-string v0, "modify_time"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingList:J

    .line 274
    const-string v0, "animation_type"

    invoke-virtual {p1, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/removeDownloadListener;->removeDownloadListener:I

    .line 275
    const-string v0, "need_landing_page"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->unifiedDownload:Z

    .line 276
    const-string v0, "ad_in_keep_popup"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 277
    const-string v0, "bind_oneshot_id"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    const-string v0, "is_offline"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->setErrorMessage:Z

    .line 280
    const-string v0, "is_bottom"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->AdError:Z

    .line 281
    const-string v0, "is_startup"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->toString:Z

    .line 282
    const-string v0, "support_cache"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline:Z

    .line 283
    const-string v0, "is_new_cache"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->getErrorCode:Z

    .line 284
    iput-boolean v3, p0, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    div-long/2addr v0, v3

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    .line 289
    invoke-direct {p0, p1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Lccsanorg/json/JSONObject;)V

    if-eqz p3, :cond_7

    .line 292
    const-string p3, "offline"

    invoke-virtual {p1, p3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 293
    new-instance v0, Lccsansan/dt/deleteDownList;

    invoke-virtual {p1, p3}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p3

    invoke-direct {v0, p3, p0}, Lccsansan/dt/deleteDownList;-><init>(Lccsanorg/json/JSONObject;Lccsansan/dt/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    :cond_6
    nop

    .line 294
    const-string p3, "view_id"

    invoke-virtual {p1, p3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    :cond_7
    if-eqz p2, :cond_a

    .line 298
    const-string p2, "video_ext"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 299
    new-instance p3, Lccsansan/dt/getPackageNameByRecord;

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p3, p2, p0}, Lccsansan/dt/getPackageNameByRecord;-><init>(Lccsanorg/json/JSONObject;Lccsansan/dt/removeDownloadListener;)V

    iput-object p3, p0, Lccsansan/dt/removeDownloadListener;->getAdSize:Lccsansan/dt/getPackageNameByRecord;

    :cond_8
    nop

    .line 301
    const-string p2, "vast"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 302
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 303
    const-string p2, "content"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 304
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    goto :goto_6

    :cond_9
    nop

    .line 305
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 306
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    :cond_a
    :goto_6
    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanorg/json/JSONObject;)V
    .locals 8

    .line 78
    const-string v0, "effect_track_urls"

    .line 1
    const-string v1, "imp_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 45
    sget v4, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v4, v4, 0x73

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x7c

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 78
    :goto_1
    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lccsansan/dt/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload(Ljava/util/List;)Lccsansan/dt/getDownloadedRecordByUrl;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dt/removeDownloadListener;->getLoaderClassName:Lccsansan/dt/getDownloadedRecordByUrl;

    :cond_2
    nop

    .line 11
    const-string v1, "second_imp_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x4d

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 14
    :goto_2
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 5
    const/16 v5, 0x8

    goto :goto_3

    :cond_3
    const/16 v5, 0x4d

    :goto_3
    packed-switch v5, :pswitch_data_0

    goto :goto_6

    .line 32
    :pswitch_0
    sget v5, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v5, v5, 0x75

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 5
    const/16 v5, 0x51

    goto :goto_4

    :cond_4
    const/16 v5, 0x43

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 15
    iget-object v5, p0, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0xa

    goto :goto_5

    :pswitch_1
    iget-object v5, p0, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 78
    :goto_5
    goto :goto_2

    .line 15
    :cond_5
    :goto_6
    nop

    .line 20
    const-string v1, "click_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    .line 5
    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_2

    .line 20
    nop

    .line 21
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    .line 23
    :goto_8
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 78
    sget v6, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/2addr v6, v4

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_7

    .line 24
    iget-object v6, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x3

    goto :goto_8

    :cond_7
    iget-object v6, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    :pswitch_2
    nop

    .line 28
    const-string v1, "second_click_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 29
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5
    const/16 v2, 0x27

    goto :goto_9

    :cond_9
    const/16 v2, 0x4e

    :goto_9
    packed-switch v2, :pswitch_data_3

    goto :goto_b

    .line 29
    :pswitch_3
    nop

    .line 78
    const/4 v2, 0x0

    .line 31
    :goto_a
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 24
    sget v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v4, v4, 0x5d

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    .line 32
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x3d

    goto :goto_a

    :cond_a
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    nop

    .line 36
    const-string v1, "landing_page_imp_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 37
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    .line 39
    :goto_c
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 40
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->pause:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_c
    nop

    .line 44
    const-string v1, "landing_page_click_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 15
    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    .line 5
    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    const/4 v2, 0x1

    :goto_d
    packed-switch v2, :pswitch_data_4

    .line 15
    nop

    .line 45
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    goto :goto_f

    .line 44
    :pswitch_4
    nop

    .line 45
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_f

    :goto_e
    goto :goto_10

    :goto_f
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_f

    goto :goto_e

    .line 78
    :goto_10
    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_e

    .line 45
    :cond_e
    const/4 v2, 0x0

    .line 47
    :goto_11
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_f

    .line 48
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 15
    :catchall_0
    move-exception p1

    throw p1

    .line 48
    :cond_f
    nop

    .line 52
    const-string v1, "detail_page_imp_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5
    goto :goto_12

    :cond_10
    const/4 v5, 0x0

    :goto_12
    packed-switch v5, :pswitch_data_5

    goto :goto_14

    .line 32
    :pswitch_5
    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0x29

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_11

    .line 52
    :cond_11
    nop

    .line 53
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    .line 55
    :goto_13
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 56
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedCount:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_12
    :goto_14
    nop

    .line 60
    const-string v1, "detail_page_click_track_urls"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 32
    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_13

    .line 60
    :cond_13
    nop

    .line 61
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_15

    const/4 v2, 0x0

    .line 63
    :goto_15
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_15

    .line 45
    sget v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v4, v4, 0x15

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    .line 64
    :cond_14
    iget-object v4, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingCount:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_15
    nop

    .line 69
    :try_start_1
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 70
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 72
    :goto_16
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_16

    .line 73
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->resume:Ljava/util/List;

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 78
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x27
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

.method private addDownloadListener(Lccsanorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 10
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "offline"

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    .line 10
    :pswitch_0
    nop

    .line 1
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :goto_2
    new-instance v0, Lccsansan/dt/deleteDownList;

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lccsansan/dt/deleteDownList;-><init>(Lccsanorg/json/JSONObject;Lccsansan/dt/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    :cond_1
    nop

    .line 4
    const-string v0, "video_ext"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    new-instance v3, Lccsansan/dt/getPackageNameByRecord;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v3, v0, p0}, Lccsansan/dt/getPackageNameByRecord;-><init>(Lccsanorg/json/JSONObject;Lccsansan/dt/removeDownloadListener;)V

    iput-object v3, p0, Lccsansan/dt/removeDownloadListener;->getAdSize:Lccsansan/dt/getPackageNameByRecord;

    :cond_2
    nop

    .line 7
    const-string v0, "ext"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 8
    :cond_3
    nop

    .line 10
    const-string v0, "auto_landing"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 1
    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 10
    :pswitch_1
    nop

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private deleteDownItem(Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 12
    const-string v0, "filters"

    const-string v1, "landing_ext"

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    .line 12
    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "cache"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 2
    :try_start_1
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x42

    :try_start_2
    div-int/2addr v2, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 12
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    nop

    .line 2
    :try_start_3
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    :goto_1
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 12
    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 3
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 4
    :cond_3
    :pswitch_0
    nop

    .line 5
    :try_start_4
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_2

    goto :goto_5

    .line 5
    :pswitch_1
    nop

    .line 6
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 7
    :goto_4
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 8
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->deleteDownList:Ljava/util/List;

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 12
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadStatusByUrl(Lccsanorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 6
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "vast"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 3
    const/16 v1, 0x1b

    goto :goto_0

    :cond_1
    const/16 v1, 0x43

    :goto_0
    const/4 v2, 0x0

    const-string v3, "content"

    packed-switch v1, :pswitch_data_0

    .line 6
    nop

    .line 2
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 1
    :pswitch_0
    nop

    .line 2
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v1, 0x27

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :goto_3
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    .line 6
    :goto_4
    goto :goto_7

    .line 4
    :cond_2
    nop

    .line 5
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 3
    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_1

    .line 6
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    goto :goto_6

    .line 5
    :pswitch_1
    nop

    .line 6
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    goto :goto_7

    :goto_6
    const/16 p1, 0x8

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadedList(Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 18
    const-string v0, "advertiser_tracker"

    const-string v1, "action_tracker"

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 3
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 18
    :pswitch_1
    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v2, v2, 0x2

    const-string v5, "adshonor_tracker"

    if-eqz v2, :cond_1

    .line 2
    :try_start_1
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    :try_start_2
    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :pswitch_2
    goto :goto_2

    .line 18
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    nop

    .line 2
    :try_start_3
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 18
    :goto_2
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3
    :cond_3
    nop

    .line 4
    :try_start_4
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 4
    :goto_3
    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 6
    iget-object v5, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK:Ljava/util/List;

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_3

    .line 6
    :cond_4
    :goto_4
    nop

    .line 10
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 10
    nop

    .line 11
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 11
    :goto_6
    if-eqz p1, :cond_6

    .line 3
    const/16 v1, 0x56

    goto :goto_7

    :cond_6
    const/16 v1, 0x24

    :goto_7
    packed-switch v1, :pswitch_data_3

    .line 12
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 3
    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    const/4 v1, 0x1

    :goto_8
    packed-switch v1, :pswitch_data_4

    .line 13
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->trackReportClick:Ljava/util/List;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 18
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadedRecordByUrl(Lccsanorg/json/JSONObject;)V
    .locals 3

    .line 4
    const-string v0, "product_info"

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Lccsansan/dt/resume;

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsansan/dt/resume;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object v1, p0, Lccsansan/dt/removeDownloadListener;->getLocalExtras:Lccsansan/dt/resume;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsansan/dt/removeDownloadListener;->hasSucceedByPassingRestrictions:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dt/removeDownloadListener;->hasFinished:C

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

    sget-char v11, Lccsansan/dt/removeDownloadListener;->onPlacementStartEnd:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dt/removeDownloadListener;->isRunning:C

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

.method private getDownloadingList(Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 6
    const-string v0, "reservation_app"

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    new-instance v1, Lccsansan/dt/pause;

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsansan/dt/pause;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object v1, p0, Lccsansan/dt/removeDownloadListener;->getAdFormat:Lccsansan/dt/pause;

    .line 3
    iget-object p1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 6
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :pswitch_0
    const-string p1, ""

    goto :goto_3

    .line 6
    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 3
    :try_start_1
    iget-object p1, p1, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/String;

    goto :goto_2

    .line 6
    :pswitch_1
    iget-object p1, p1, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x4a

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    nop

    .line 3
    :goto_3
    :try_start_3
    invoke-virtual {v1, p1}, Lccsansan/dt/pause;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#parseReserveData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    sget p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanorg/json/JSONObject;)V
    .locals 2

    .line 4
    const-string v0, "app_info"

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lccsansan/dt/addDownloadListener;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lccsansan/dt/addDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object v1, p0, Lccsansan/dt/removeDownloadListener;->AdInfo:Lccsansan/dt/addDownloadListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x23

    goto :goto_1

    :cond_1
    const/16 p1, 0x2c

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :goto_2
    const/16 p1, 0x45

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanorg/json/JSONObject;)V
    .locals 4

    .line 7
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "creative"

    packed-switch v0, :pswitch_data_0

    .line 0
    goto :goto_1

    .line 7
    :pswitch_0
    nop

    .line 1
    :try_start_0
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2a

    :try_start_1
    div-int/2addr v3, v1
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_1
    :try_start_2
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :goto_2
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lccsansan/dt/getDownloadStatusByUrl;

    invoke-direct {p1, v0}, Lccsansan/dt/getDownloadStatusByUrl;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1
    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    .line 7
    goto :goto_3

    .line 4
    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#parseCreativeData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.AdData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ActionTypeDetailPage()I
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result v2

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public ActionTypeReserveApp()Lccsansan/dt/resume;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLocalExtras:Lccsansan/dt/resume;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLocalExtras:Lccsansan/dt/resume;

    goto :goto_2

    :goto_1
    const/16 v2, 0x36

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public AdError()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x48

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x41

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public AdError$ErrorCode()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x5b

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method public AdFormat()I
    .locals 2

    .line 11
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/removeDownloadListener;->shouldTryHandlingAction:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->shouldTryHandlingAction:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public AdInfo()Z
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage:Z

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->AdFormat:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x23

    goto :goto_0

    :cond_1
    const/16 v1, 0x39

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x2c

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 3

    .line 20
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput p1, p0, Lccsansan/dt/removeDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x52

    :try_start_0
    div-int/2addr v0, p1
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

.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 5

    .line 31
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 26
    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result p1

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 31
    :catchall_0
    move-exception p1

    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 27
    :goto_2
    :pswitch_1
    iput-boolean v4, p0, Lccsansan/dt/removeDownloadListener;->setErrorMessage:Z

    .line 28
    iget-object p1, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    invoke-virtual {p1, v1}, Lccsansan/dt/deleteDownList;->getDownloadingList(I)V

    .line 31
    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_3

    goto :goto_4

    .line 28
    :goto_3
    nop

    .line 30
    iput-boolean v3, p0, Lccsansan/dt/removeDownloadListener;->setErrorMessage:Z

    .line 31
    iget-object p1, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lccsansan/dt/deleteDownList;->getDownloadingList(I)V

    :cond_3
    :goto_4
    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_4

    .line 26
    const/16 p1, 0x11

    goto :goto_5

    :cond_4
    const/16 p1, 0x3f

    :goto_5
    packed-switch p1, :pswitch_data_2

    .line 31
    return-void

    :pswitch_2
    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_2
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 7
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->getName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public IncentiveSDK()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->values:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public IncentiveSDK$1()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode:Z

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x3a

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x5f

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public addDownloadListener(I)V
    .locals 2

    .line 9
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x52

    :goto_0
    iput p1, p0, Lccsansan/dt/removeDownloadListener;->updateLoadStatus:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x5

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(J)Z
    .locals 6

    .line 24
    nop

    .line 23
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    if-eqz v0, :cond_0

    .line 24
    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x35

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :pswitch_0
    return v2

    :goto_1
    const/16 v1, 0x1a

    goto :goto_2

    :cond_1
    const/16 v1, 0x14

    :goto_2
    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_1

    .line 23
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    goto :goto_3

    .line 24
    :pswitch_1
    const-wide/16 v4, 0x1

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    :goto_3
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->IncentiveDownloadUtils()J

    move-result-wide v0

    cmp-long v4, p1, v0

    if-gez v4, :cond_3

    sget p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_2

    :pswitch_2
    add-int/lit8 p2, p2, 0x6f

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v2, 0x1

    goto :goto_6

    :cond_3
    sget p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    packed-switch v3, :pswitch_data_3

    :goto_6
    :pswitch_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public buildParams()I
    .locals 3

    .line 3
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLoadStatus:Lccsansan/dt/removeDownloadListener$addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lccsansan/dt/removeDownloadListener$addDownloadListener;

    invoke-direct {v0}, Lccsansan/dt/removeDownloadListener$addDownloadListener;-><init>()V

    iput-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLoadStatus:Lccsansan/dt/removeDownloadListener$addDownloadListener;

    .line 3
    :cond_1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLoadStatus:Lccsansan/dt/removeDownloadListener$addDownloadListener;

    iget v0, v0, Lccsansan/dt/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public deleteDownItem()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget v1, p0, Lccsansan/dt/removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    goto :goto_0

    :cond_1
    const/16 v0, 0x60

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownItem(Ljava/lang/String;)V
    .locals 3

    .line 79
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setLoadStartTime:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1b

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/16 p1, 0x5c

    :try_start_1
    div-int/2addr p1, v2
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
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public deleteDownList()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload:J

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownList(Ljava/lang/String;)V
    .locals 2

    .line 13
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->setAdSize:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x3b

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public execute()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->resume:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getActionType()Lccsansan/dt/pause;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getAdFormat:Lccsansan/dt/pause;

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getAdFormat()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v0, ""

    goto :goto_1

    :pswitch_0
    sget v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v3, v3, 0x13

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    :cond_1
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    sget v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v3, v3, 0xb

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    packed-switch v1, :pswitch_data_1

    :goto_1
    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getAdSize()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->getNetworkId:Ljava/lang/String;

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
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()Z
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->AdError:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->AdError:Z

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v0

    :goto_3
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedCount()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/removeDownloadListener;->getErrorCode:Z

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public getDownloadedList()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget v1, p0, Lccsansan/dt/removeDownloadListener;->getErrorMessage:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public getDownloadedList(Ljava/lang/String;)V
    .locals 3

    .line 5
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x36

    goto :goto_0

    :cond_0
    const/16 v1, 0x49

    :goto_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl(Ljava/lang/String;)V
    .locals 1

    .line 8
    nop

    .line 7
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lccsansan/dt/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload(Ljava/util/List;)Lccsansan/dt/getDownloadedRecordByUrl;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->getLoaderClassName:Lccsansan/dt/getDownloadedRecordByUrl;

    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public getDownloadedRecordByUrl()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/removeDownloadListener;->setErrorMessage:Z

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x41

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingCount()I
    .locals 3

    .line 7
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/removeDownloadListener;->getActionType:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->getActionType:I

    const/16 v2, 0x1c

    :try_start_0
    div-int/2addr v2, v1
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0x55

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->getLocalExtras:Lccsansan/dt/resume;

    if-nez v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->getLocalExtras:Lccsansan/dt/resume;

    const/16 v3, 0x18

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/16 v2, 0x50

    goto :goto_1

    :cond_1
    const/16 v2, 0x4e

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_2

    :goto_3
    goto :goto_5

    :pswitch_1
    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    :goto_4
    const-string v0, ""

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Lccsansan/dt/resume;->pause()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(I)V
    .locals 3

    .line 5
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput p1, p0, Lccsansan/dt/removeDownloadListener;->getErrorMessage:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadingList(J)V
    .locals 2

    .line 9
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsansan/dt/removeDownloadListener;->setLocalExtras:J

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 3

    .line 13
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x34

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x1d

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl(Ljava/lang/String;)V
    .locals 2

    .line 21
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x40

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->unifiedDownload:Z

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    goto :goto_0

    :cond_1
    const/16 v1, 0x4b

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
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 3

    .line 6
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 6
    :goto_1
    const/16 v0, 0xa

    goto :goto_2

    :cond_2
    const/16 v0, 0x1c

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdError()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 3

    .line 8
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getHBResultData()Lccsansan/dt/deleteDownList;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLoadStatus()Ljava/lang/String;
    .locals 4

    .line 3
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLoaderClassName:Lccsansan/dt/getDownloadedRecordByUrl;

    if-nez v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getLoaderClassName:Lccsansan/dt/getDownloadedRecordByUrl;

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    .line 3
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/16 v2, 0x11

    goto :goto_3

    :cond_2
    const/4 v2, 0x6

    :goto_3
    packed-switch v2, :pswitch_data_2

    :goto_4
    goto :goto_5

    .line 3
    :pswitch_1
    invoke-virtual {v0}, Lccsansan/dt/getDownloadedRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/16 v2, 0x26

    :try_start_1
    div-int/2addr v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    return-object v0

    .line 1
    :goto_5
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method public getLoaderClassName()I
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    const/16 v3, 0x26

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_2
    goto :goto_3

    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x3d

    goto :goto_2

    :cond_3
    const/16 v0, 0x41

    :goto_2
    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->unifiedDownload()I

    move-result v2

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    throw v0

    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method public getLocalExtras()I
    .locals 10

    .line 11
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    goto :goto_4

    :goto_2
    :try_start_0
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    const/16 v4, 0x4f

    goto :goto_3

    :cond_1
    const/16 v4, 0x29

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 3
    :goto_4
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v4, v0

    if-ne v4, v1, :cond_3

    .line 6
    :try_start_1
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 7
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 2
    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_2

    :try_start_2
    array-length v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 11
    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mads.AdData"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :pswitch_1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/2addr v0, v1

    return v2

    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch
.end method

.method public getMinIntervalToReturn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getMinIntervalToStart()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

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
    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Lccsansan/dt/deleteDownItem;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/getDownloadStatusByUrl;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :cond_2
    goto :goto_3

    :goto_2
    const/16 v1, 0x2f

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :pswitch_1
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    goto :goto_4

    :goto_3
    const/4 v0, 0x0

    :goto_4
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

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

.method public getNetworkId()Lccsansan/ck/IncentiveDownloadUtils;
    .locals 4

    .line 8
    new-instance v0, Lccsansan/ck/IncentiveDownloadUtils;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lccsansan/ck/IncentiveDownloadUtils;-><init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;I)V

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getPackageNameByRecord()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getPassengerHBParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    nop

    .line 1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadedList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_1
    const/4 v1, 0x1

    :cond_1
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_1

    .line 1
    goto :goto_2

    .line 3
    :pswitch_1
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getPlacementId()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    const/16 v4, 0x55

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 3
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 3
    :goto_1
    :pswitch_1
    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 1
    const/16 v0, 0x46

    goto :goto_2

    :cond_3
    const/16 v0, 0x12

    :goto_2
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2

    .line 3
    return-object v1

    :pswitch_2
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    throw v0

    :goto_3
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->deleteDownItem()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_2
    .end packed-switch
.end method

.method public getRemainedDelayTime()I
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/removeDownloadListener;->setNetworkId:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->setNetworkId:I

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    .line 6
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad:Ljava/lang/String;

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSpotId()Ljava/lang/String;
    .locals 3

    .line 80
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->setAdSize:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x40

    goto :goto_0

    :cond_1
    const/16 v1, 0x5c

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public getThumbPathByRecord()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public hasDelayTimeRestrictions()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x52

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->setLoadStartTime:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->setLoadStartTime:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public hasFinished()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    iget-wide v2, p0, Lccsansan/dt/removeDownloadListener;->setLocalExtras:J

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-wide v2

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public hasHBSucceed()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->isIdle:Z

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public hasSucceed()I
    .locals 4

    .line 5
    nop

    .line 1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    const/16 v2, 0x55

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->unifiedDownload()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    .line 1
    :pswitch_0
    const/4 v0, -0x1

    .line 5
    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/2addr v2, v1

    return v0

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_2

    const/16 v2, 0x4e

    goto :goto_3

    :cond_2
    const/16 v2, 0x63

    :goto_3
    packed-switch v2, :pswitch_data_2

    const/16 v3, 0x4c

    goto :goto_4

    :pswitch_2
    const/16 v3, 0x64

    :goto_4
    add-int/2addr v0, v3

    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0xf

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/2addr v2, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
    .end packed-switch
.end method

.method public hasSucceedByPassingRestrictions()I
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/removeDownloadListener;->updateLoadStatus:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->updateLoadStatus:I

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
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public isIdle()Z
    .locals 7

    .line 2
    nop

    .line 1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v3, v3, 0x1b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_0
    return v2

    :goto_1
    const/16 v3, 0x42

    goto :goto_2

    :cond_1
    const/16 v3, 0x56

    :goto_2
    packed-switch v3, :pswitch_data_1

    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->IncentiveDownloadUtils()J

    move-result-wide v3

    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lccsansan/bw/AdFormat;->addDownloadListener(JJ)Z

    move-result v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->IncentiveDownloadUtils()J

    move-result-wide v3

    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lccsansan/bw/AdFormat;->addDownloadListener(JJ)Z

    move-result v0

    goto :goto_4

    :goto_3
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    sget v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_2

    return v0

    :pswitch_2
    const/16 v1, 0x22

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 4

    .line 2
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    const/4 v2, 0x4

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    :cond_0
    const/16 v2, 0x51

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 2
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    if-eqz v0, :cond_2

    const/16 v2, 0x16

    goto :goto_1

    :cond_2
    const/16 v2, 0x42

    :goto_1
    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 2
    :goto_2
    :pswitch_1
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadingList()J

    move-result-wide v0

    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lccsansan/bw/AdFormat;->IncentiveDownloadUtils(JJ)Z

    move-result v0

    .line 1
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0

    .line 2
    :cond_3
    return v0

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method public onPlacementStartEnd()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getNetworkId:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public onPlacementStartLoad()Z
    .locals 7

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x62

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline:Z

    goto :goto_2

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline:Z

    if-nez v0, :cond_5

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_5

    goto :goto_1

    :goto_3
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->setErrorMessage:Z

    if-nez v0, :cond_5

    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v5, v0, 0x45

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    :cond_1
    iget-boolean v5, p0, Lccsansan/dt/removeDownloadListener;->AdError:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lccsansan/dt/removeDownloadListener;->toString:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_1

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    const/16 v1, 0x4e

    :goto_5
    iget-boolean v0, p0, Lccsansan/dt/removeDownloadListener;->getErrorCode:Z

    packed-switch v1, :pswitch_data_2

    goto :goto_7

    :pswitch_1
    if-eqz v0, :cond_4

    const/16 v0, 0x63

    goto :goto_6

    :cond_4
    const/16 v0, 0x1f

    :goto_6
    packed-switch v0, :pswitch_data_3

    goto :goto_8

    :goto_7
    :try_start_1
    array-length v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_8

    :catchall_0
    move-exception v0

    throw v0

    :cond_5
    :goto_8
    :pswitch_2
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    if-eqz v0, :cond_6

    goto :goto_9

    :cond_6
    :pswitch_3
    const/4 v2, 0x0

    :goto_9
    return v2

    :catchall_1
    move-exception v0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_3
    .end packed-switch
.end method

.method public pause()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingList:J

    goto :goto_1

    :pswitch_0
    iget-wide v0, p0, Lccsansan/dt/removeDownloadListener;->getDownloadingList:J

    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2

    .line 10
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

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

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public performAction()Lccsansan/dt/getPackageNameByRecord;
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getAdSize:Lccsansan/dt/getPackageNameByRecord;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getAdSize:Lccsansan/dt/getPackageNameByRecord;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performActionWhenOffline()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v2, 0x30

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x5e

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

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
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(I)V
    .locals 2

    .line 12
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lccsansan/dt/removeDownloadListener;->setNetworkId:I

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->valueOf:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public removeDownloadListener(Z)V
    .locals 3

    .line 25
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsansan/dt/removeDownloadListener;->isIdle:Z

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public resolveUrl()Lccsansan/dt/addDownloadListener;
    .locals 3

    .line 2
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->AdInfo:Lccsansan/dt/addDownloadListener;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->AdInfo:Lccsansan/dt/addDownloadListener;

    const/4 v2, 0x5

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public resume()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/removeDownloadListener;->toString:Z

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public setAdFormat()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdSize()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->trackReportClick:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public setErrorMessage()Ljava/lang/String;
    .locals 3

    .line 6
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->getLocalExtras:Lccsansan/dt/resume;

    if-nez v1, :cond_1

    const/16 v2, 0x51

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Lccsansan/dt/resume;->getDownloadingCount()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    const-string v0, ""

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method public setHBResultData()J
    .locals 4

    .line 3
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    if-nez v1, :cond_1

    .line 3
    const/16 v2, 0x16

    goto :goto_0

    :cond_1
    const/16 v2, 0x48

    :goto_0
    packed-switch v2, :pswitch_data_0

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Lccsansan/dt/deleteDownList;->addDownloadListener()J

    move-result-wide v0

    sget v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setLoadStartTime()V
    .locals 3

    .line 22
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget v1, p0, Lccsansan/dt/removeDownloadListener;->setLoaderClassName:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsansan/dt/removeDownloadListener;->setLoaderClassName:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setLoaderClassName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->pause:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->pause:Ljava/util/List;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public setLocalExtras()I
    .locals 3

    .line 14
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_4

    :goto_1
    const/16 v0, 0x4c

    goto :goto_2

    :cond_2
    const/16 v0, 0x1d

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v0

    :goto_3
    move v1, v0

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method

.method public setNetworkId()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->setLoaderClassName:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/16 v0, 0x5d

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :goto_0
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_2

    :goto_1
    const/16 v0, 0x44

    goto :goto_2

    :cond_2
    const/16 v0, 0x15

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public setPassengerHBParams()J
    .locals 4

    .line 3
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn:Lccsansan/dt/deleteDownList;

    if-nez v0, :cond_1

    .line 3
    const/16 v2, 0xe

    goto :goto_0

    :cond_1
    const/16 v2, 0x23

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadingList()J

    move-result-wide v0

    goto :goto_1

    .line 1
    :pswitch_0
    const-wide/16 v2, -0x1

    .line 3
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-wide v2

    :goto_1
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public shouldTryHandlingAction()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v1, v0, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x3b

    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x20

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public trackReportClick()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->valueOf:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public trackReportShow()I
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x37

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/removeDownloadListener;->performAction:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->performAction:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x1

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->setAdFormat:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/Object;)V
    .locals 3

    .line 19
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x59

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 8
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dt/removeDownloadListener;->values:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x41

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateLoadStatus()Z
    .locals 5

    .line 1
    iget v0, p0, Lccsansan/dt/removeDownloadListener;->setLoaderClassName:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x37

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_1

    :pswitch_0
    move v2, v0

    :pswitch_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public valueOf()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v0, p0}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/removeDownloadListener;->hasSucceed:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
