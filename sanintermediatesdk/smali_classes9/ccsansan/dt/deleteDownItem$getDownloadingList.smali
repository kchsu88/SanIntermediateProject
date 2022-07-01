.class public Lccsansan/dt/deleteDownItem$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/deleteDownItem$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDownloadingList"
.end annotation


# static fields
.field private static addDownloadListener:[C

.field private static getDownloadingList:Z

.field private static removeDownloadListener:I

.field private static unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x71

    sput v0, Lccsansan/dt/deleteDownItem$getDownloadingList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/dt/deleteDownItem$getDownloadingList;->unifiedDownload:Z

    sput-boolean v0, Lccsansan/dt/deleteDownItem$getDownloadingList;->getDownloadingList:Z

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dt/deleteDownItem$getDownloadingList;->addDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xd5s
        0xe0s
        0xe8s
        0xdfs
        0xdds
        0xd2s
        0xd0s
        0xe6s
        0xe3s
    .end array-data
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    const-string v2, "\u0085\u0089\u0088\u0087\u0081\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v2}, Lccsansan/dt/deleteDownItem$getDownloadingList;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 6
    const-string v0, "app_version_name"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    const-string v0, "impre_track_url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    const-string v0, "click_track_url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    const-string v0, "attribution_tracker_url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    const-string v0, "app_button_text"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    const-string v0, "app_size"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    const-string v0, "txt"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 1163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    sget-object v1, Lccsansan/dt/deleteDownItem$getDownloadingList;->addDownloadListener:[C

    .line 1166
    sget v2, Lccsansan/dt/deleteDownItem$getDownloadingList;->removeDownloadListener:I

    .line 1168
    sget-boolean v3, Lccsansan/dt/deleteDownItem$getDownloadingList;->unifiedDownload:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1170
    nop

    .line 1171
    array-length p0, p3

    .line 1172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 1176
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    .line 1174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 1179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 1182
    :cond_3
    sget-boolean p3, Lccsansan/dt/deleteDownItem$getDownloadingList;->getDownloadingList:Z

    if-eqz p3, :cond_5

    .line 1184
    nop

    .line 1185
    array-length p2, p0

    .line 1186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 1188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 1190
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-char v3, p0, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 1188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 1193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 1198
    :cond_5
    nop

    .line 1199
    array-length p0, p2

    .line 1200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 1204
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget v3, p2, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 1202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 1207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
