.class public Lccsansan/dt/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveSDK$1:I

.field private static execute:I

.field private static shouldTryHandlingAction:[C


# instance fields
.field private ActionTypeDetailPage:I

.field public IncentiveDownloadUtils:I

.field public IncentiveSDK:Ljava/lang/String;

.field public addDownloadListener:I

.field public deleteDownItem:Ljava/lang/String;

.field public deleteDownList:Ljava/lang/String;

.field public getDownloadStatusByUrl:Lccsansan/dt/deleteDownItem;

.field public getDownloadedCount:Ljava/lang/String;

.field public getDownloadedList:Ljava/lang/String;

.field public getDownloadedRecordByUrl:Ljava/lang/String;

.field public getDownloadingCount:F

.field public getDownloadingList:Ljava/lang/String;

.field public getDownloadingRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getPackageNameByRecord:I

.field public getThumbPathByRecord:Z

.field public pause:F

.field public removeDownloadListener:I

.field private resolveUrl:I

.field public resume:Ljava/lang/String;

.field public trackReportClick:Z

.field private trackReportShow:Z

.field public unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dt/getDownloadStatusByUrl;->shouldTryHandlingAction:[C

    return-void

    :array_0
    .array-data 2
        0x76s
        0xe9s
        0xe0s
        0xd9s
        0xdds
        0xe4s
        0xdes
        0xe2s
        0xebs
        0xe8s
        0xe3s
    .end array-data
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener:I

    .line 3
    const/4 v1, 0x0

    iput v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener:I

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsansan/dt/getDownloadStatusByUrl;->trackReportClick:Z

    .line 39
    iput-boolean v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->trackReportShow:Z

    .line 46
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    .line 47
    const-string v3, "creative_id"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    .line 48
    const-string v3, "creative_ver"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->unifiedDownload:I

    .line 49
    const-string v3, "layout_type"

    invoke-virtual {p1, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener:I

    .line 52
    const-string v3, "scale_type"

    invoke-virtual {p1, v3, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener:I

    .line 53
    const-string v3, "style_type"

    invoke-virtual {p1, v3, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 54
    const-string v3, "width"

    invoke-virtual {p1, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-eq v3, v0, :cond_0

    int-to-float v3, v3

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    .line 55
    :goto_0
    iput v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount:F

    .line 56
    const-string v3, "height"

    invoke-virtual {p1, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_1

    int-to-float v3, v3

    div-float v5, v3, v4

    .line 57
    :cond_1
    iput v5, p0, Lccsansan/dt/getDownloadStatusByUrl;->pause:F

    .line 58
    const-string v3, "landing_page"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/dt/deleteDownItem;->getDownloadingList(Ljava/lang/String;)Lccsansan/dt/deleteDownItem;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl:Lccsansan/dt/deleteDownItem;

    .line 60
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 61
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedList:Ljava/lang/String;

    .line 62
    const-string v3, "icon_url"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/String;

    .line 63
    const-string v3, "btn_txt"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->resume:Ljava/lang/String;

    .line 64
    const-string v3, "effect_type"

    invoke-virtual {p1, v3, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-wide/16 v3, 0x0

    .line 65
    const-string v5, "duration"

    invoke-virtual {p1, v5, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 66
    const-string v3, "play_url"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount:Ljava/lang/String;

    .line 67
    const-string v3, "image_urls"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    :try_start_0
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 70
    :goto_1
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 71
    iget-object v5, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 74
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CreativeData"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    nop

    .line 78
    const-string v3, "thumb_icon_url"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    const-string v3, "thumb_float_icon_url"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    const-string v3, "status_bar_color"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    const-string v3, "has_tip"

    invoke-virtual {p1, v3, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 83
    const-string v3, "tip_guide_text"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    const-string v3, "tip_guide_url"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    const-string v3, "pkg_name"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList:Ljava/lang/String;

    .line 87
    const-string v3, "pkg_size"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 89
    const-string v5, "grade"

    invoke-virtual {p1, v5, v3, v4}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v4, "\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v3, v4, v2}, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p1, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 92
    const-string v0, "js_tag"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK:Ljava/lang/String;

    .line 93
    const-string v0, "need_mraidjs"

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getThumbPathByRecord:Z

    .line 94
    const-string v0, "need_preloadjs"

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 95
    const-string v0, "show_video_mute"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lccsansan/dt/getDownloadStatusByUrl;->trackReportClick:Z

    .line 96
    const-string v0, "ad_animation_type_video"

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    const-string v0, "support_jump"

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 99
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->resume()I

    move-result v0

    const-string v1, "skip_point"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getPackageNameByRecord:I

    .line 100
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->pause()I

    move-result v0

    const-string v1, "close_point"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->resolveUrl:I

    .line 101
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->trackReportShow()I

    move-result v0

    const-string v1, "rewarded_time"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lccsansan/dt/getDownloadStatusByUrl;->ActionTypeDetailPage:I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0x78
        0x0
    .end array-data
.end method

.method private IncentiveDownloadUtils(I)I
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/16 v0, 0x4f

    :goto_0
    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    goto :goto_1

    :pswitch_0
    return v1

    :goto_1
    const/16 v0, 0x25

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    goto :goto_2

    :cond_1
    const/16 v0, 0x54

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :cond_2
    const/4 v0, 0x7

    if-eq p1, v0, :cond_a

    :goto_3
    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/2addr v2, v1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_9

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/2addr v0, v1

    const/16 v3, 0x11

    if-nez v0, :cond_3

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_5

    goto :goto_5

    :cond_3
    if-eq p1, v3, :cond_4

    const/16 v0, 0x28

    goto :goto_4

    :cond_4
    const/16 v0, 0x57

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    :cond_5
    :pswitch_1
    return v3

    :goto_5
    const/16 v0, 0x16

    if-eq p1, v0, :cond_8

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/2addr v2, v1

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    const/4 v3, 0x1

    :goto_6
    packed-switch v3, :pswitch_data_3

    add-int/lit8 v2, v0, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/2addr v2, v1

    goto :goto_7

    :pswitch_2
    return v2

    :goto_7
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_7
    return p1

    :cond_8
    const/4 p1, 0x5

    return p1

    :cond_9
    const/16 p1, 0xb

    return p1

    :cond_a
    :pswitch_3
    const/4 p1, 0x6

    return p1

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;
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
    sget-object v8, Lccsansan/dt/getDownloadStatusByUrl;->shouldTryHandlingAction:[C

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


# virtual methods
.method public ActionTypeDetailPage()Z
    .locals 5

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getPackageNameByRecord:I

    if-eq v0, v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getPackageNameByRecord:I

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    :pswitch_1
    goto :goto_5

    :goto_4
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_6

    :goto_5
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_3
    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public IncentiveDownloadUtils()I
    .locals 4

    .line 3
    nop

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    .line 2
    sget v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v2, 0x25

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 3
    :cond_1
    return v0

    .line 2
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    invoke-direct {p0, v0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils(I)I

    move-result v0

    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :pswitch_1
    return v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(F)V
    .locals 4

    .line 3
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

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

    iput p1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount:F

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveSDK()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->resolveUrl:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->resolveUrl:I

    goto :goto_2

    :goto_1
    const/16 v2, 0xe

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveSDK$1()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getPackageNameByRecord:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x5f

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/16 v1, 0x2f

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v1, v0, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    :goto_0
    iput-object p1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x54

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x4a

    goto :goto_2

    :cond_1
    const/16 p1, 0x8

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x1f

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch
.end method

.method public deleteDownItem()Lccsansan/dt/deleteDownItem;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl:Lccsansan/dt/deleteDownItem;

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public deleteDownList()Ljava/lang/String;
    .locals 2

    .line 4
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    goto :goto_1

    .line 4
    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :goto_1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()I
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v1, v0, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->ActionTypeDetailPage:I

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->ActionTypeDetailPage:I

    goto :goto_2

    :goto_1
    const/16 v3, 0x29

    :try_start_0
    div-int/lit8 v3, v3, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/2addr v0, v2

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Ljava/lang/String;

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
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedCount()Ljava/lang/String;
    .locals 3

    .line 3
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->resume:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getDownloadedList()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedList:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getDownloadingCount()F
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->pause:F

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public getDownloadingList(J)V
    .locals 0

    sget p1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->trackReportShow:Z

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/16 v1, 0x32

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v2, 0x6

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPackageNameByRecord()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getThumbPathByRecord:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getThumbPathByRecord:Z

    const/16 v2, 0x55

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public getThumbPathByRecord()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK:Ljava/lang/String;

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

.method public pause()F
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x61

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount:F

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount:F

    goto :goto_2

    :goto_1
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
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()I
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->addDownloadListener:I

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount:Ljava/lang/String;

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public resume()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public trackReportClick()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x49

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList:Ljava/lang/String;

    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x42

    goto :goto_2

    :cond_1
    const/16 v0, 0x16

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v1

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method public trackReportShow()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->trackReportClick:Z

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public unifiedDownload()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/dt/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(F)V
    .locals 3

    .line 4
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput p1, p0, Lccsansan/dt/getDownloadStatusByUrl;->pause:F

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public unifiedDownload(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget v0, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getDownloadStatusByUrl;->execute:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x4e

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
