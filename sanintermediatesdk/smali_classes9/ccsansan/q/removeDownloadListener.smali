.class public Lccsansan/q/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:[C

.field private static deleteDownItem:I

.field private static getDownloadedList:Z

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:Z


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

.field final unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    const/16 v1, 0x88

    sput v1, Lccsansan/q/removeDownloadListener;->getDownloadingList:I

    sput-boolean v0, Lccsansan/q/removeDownloadListener;->getDownloadedList:Z

    sput-boolean v0, Lccsansan/q/removeDownloadListener;->removeDownloadListener:Z

    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/q/removeDownloadListener;->addDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0xccs
        0xf7s
        0xffs
        0xf6s
        0xf4s
        0xe9s
        0xecs
        0xdbs
        0xfcs
        0xfas
        0xeds
        0xe7s
        0xfds
        0xefs
        0xa8s
        0xf1s
        0xf5s
        0xf8s
        0xf0s
        0xa9s
        0xc5s
        0xfbs
        0xebs
        0xees
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/content/ContentValues;
    .locals 6

    .line 98
    nop

    .line 80
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 81
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cloud_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    const-string v5, "\u0085\u008a\u008d\u008c\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087"

    invoke-static {v4, v2, v4, v5}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCompleteTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "complete_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filepath"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ae/getDownloadingList;->getDownloadedCount()Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getReadFlag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_flag"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCookie()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    const/16 v1, 0x2e

    goto :goto_0

    :cond_0
    const/16 v1, 0x2b

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 91
    :cond_1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCookie()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cookie"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :pswitch_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_0
    invoke-virtual {p1, v1}, Lccsancom/san/xz/base/XzRecord;->toJSON(Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    sget p1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x15

    goto :goto_1

    :cond_2
    const/16 p1, 0x3f

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    .line 94
    :catch_0
    move-exception p1

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7e

    const-string v3, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v4, v2, v4, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v3, "record to json failed!"

    invoke-static {v2, v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_2
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "record"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsansan/q/removeDownloadListener;->addDownloadListener:[C

    .line 1166
    sget v2, Lccsansan/q/removeDownloadListener;->getDownloadingList:I

    .line 1168
    sget-boolean v3, Lccsansan/q/removeDownloadListener;->getDownloadedList:Z

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
    sget-boolean p3, Lccsansan/q/removeDownloadListener;->removeDownloadListener:Z

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

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 4
    sget v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const/16 v0, 0x3f

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    sget v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1
    :cond_2
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    :pswitch_0
    sget p1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return p2

    :goto_2
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    return v1

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

.method private removeDownloadListener(Ljava/lang/String;)Z
    .locals 7

    .line 294
    nop

    .line 284
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget p1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    goto/16 :goto_9

    .line 287
    :pswitch_0
    invoke-static {p1}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    sget p1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 288
    nop

    .line 294
    return v2

    .line 290
    :cond_1
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const/16 v0, 0x3b

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    :goto_1
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_6

    goto :goto_5

    .line 291
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 294
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    sget v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 292
    :cond_4
    array-length p1, p1

    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x0

    .line 294
    :goto_4
    sget p1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    packed-switch p1, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    const/4 v1, 0x0

    goto :goto_8

    :goto_7
    sget p1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    :goto_8
    return v1

    :cond_7
    const/4 v1, 0x0

    :goto_9
    packed-switch v1, :pswitch_data_4

    return v2

    .line 284
    :pswitch_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
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
.end method

.method private unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 5

    .line 283
    nop

    .line 274
    const-string v0, "read_flag"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 275
    const-string v1, "record"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 277
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lccsancom/san/xz/base/XzRecord;->createRecord(Lccsanorg/json/JSONObject;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    .line 278
    invoke-virtual {p1, v0}, Lccsancom/san/xz/base/XzRecord;->setRead(I)V

    .line 279
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getPortal()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 283
    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    sget p2, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x11

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    .line 279
    return-object p1

    :catch_0
    move-exception p1

    invoke-static {v3}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x7f

    const-string v0, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, p2, v2, v0}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 283
    const-string v0, "create record from json failed!"

    invoke-static {p2, v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :pswitch_0
    sget p1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-object v2

    :pswitch_1
    const/16 p1, 0x1e

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 2

    .line 79
    sget v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "ad"

    invoke-virtual {p0, p1, v0}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    sget v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "ad"

    invoke-virtual {p0, p1, v0}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sget v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto :goto_0

    :cond_1
    const/16 v0, 0x45

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/cs/unifiedDownload;J)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 77
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "content_type"

    aput-object v5, v4, v2

    const-string v5, "status"

    aput-object v5, v4, v0

    const-string v5, "complete_time"

    aput-object v5, v4, v1

    const-string v5, "%s = ? AND %s = ? AND %s > ?"

    invoke-static {v5, v4}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 78
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    goto :goto_0

    :cond_0
    nop

    .line 80
    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "status"

    aput-object v3, p1, v2

    const-string v3, "complete_time"

    aput-object v3, p1, v0

    const-string v3, "%s = ? AND %s > ?"

    invoke-static {v3, p1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 81
    new-array v3, v1, [Ljava/lang/String;

    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 83
    :goto_0
    monitor-enter p0

    .line 85
    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p2}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iput-object p2, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "SELECT COUNT(_id) FROM %s WHERE (%s)"

    .line 86
    :try_start_1
    new-array p3, v1, [Ljava/lang/Object;

    const-string v1, "sdk_record"

    aput-object v1, p3, v2

    aput-object v4, p3, v0

    invoke-static {p2, p3}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 87
    iget-object p3, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3, p2, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p3
    :try_end_2
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_1

    .line 95
    :try_start_3
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v2

    :cond_1
    nop

    .line 96
    :try_start_4
    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_4
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :try_start_5
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return p1

    :catch_0
    move-exception p3

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_2

    :catch_1
    move-exception p3

    move-object p2, p1

    :goto_1
    :try_start_6
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7f

    const-string v1, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {p1, v0, p1, v1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/16 v3, 0x30

    invoke-static {v1, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    const-string v3, "\u0094\u0087\u008b\u0085\u0090\u0086\u0098\u008f\u0089\u0084\u008d\u0082\u0097\u008f\u0087\u008a\u0082\u0097\u008b\u008a\u008f\u008e\u0084\u0090\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0089\u008b\u008e"

    invoke-static {p1, v1, p1, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {v0, p1, p3}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 103
    :try_start_7
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 105
    monitor-exit p0

    return v2

    .line 100
    :catchall_1
    move-exception p1

    .line 106
    :goto_2
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 107
    throw p1

    .line 105
    :catchall_2
    move-exception p1

    .line 108
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 13

    .line 1
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cloud_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "status"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s = ? AND %s <> ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2
    new-array v9, v0, [Ljava/lang/String;

    aput-object p1, v9, v3

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    .line 3
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v6, "sdk_record"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 6
    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 14
    :try_start_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 15
    :cond_0
    :try_start_3
    invoke-direct {p0, v1, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1
    :try_end_3
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    const-string v2, ""

    const/16 v4, 0x30

    invoke-static {v2, v4, v3, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    const-string v3, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v0, v2, v0, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 20
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x7f

    const-string v5, "\u008f\u0095\u008f\u0087\u0090\u008f\u0094\u0093\u0089\u0086\u0092\u008f\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0091\u008b\u0089\u0090\u008f\u0089\u008b\u008e"

    invoke-static {v0, v4, v0, v5}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :try_start_6
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 24
    monitor-exit p0

    return-object v0

    .line 19
    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 25
    :goto_1
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 26
    throw p1

    :catchall_2
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
    .locals 13

    .line 227
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cloud_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 229
    monitor-enter p0

    .line 231
    const/4 v12, 0x0

    :try_start_0
    iget-object v4, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "sdk_record"

    .line 232
    :try_start_1
    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "cloud_id"

    aput-object v0, v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    invoke-direct {p0, p1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    .line 234
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v5, "sdk_record"

    invoke-virtual {v4, v5, p1, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 237
    :cond_0
    iget-object v1, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sdk_record"

    invoke-virtual {v1, v2, v12, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 243
    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v12

    .line 244
    :goto_0
    :try_start_3
    instance-of v1, p1, Lccsanandroid/database/sqlite/SQLiteException;

    if-nez v1, :cond_1

    invoke-static {v3, v3}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const-string v2, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v12, v1, v12, v2}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add record failed!"

    .line 245
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    :cond_1
    :goto_1
    :try_start_4
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 249
    monitor-exit p0

    return-void

    .line 243
    :catchall_1
    move-exception p1

    move-object v12, v0

    .line 250
    :goto_2
    invoke-static {v12}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 251
    throw p1

    :catchall_2
    move-exception p1

    .line 252
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 2

    .line 42
    sget v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "ad"

    invoke-virtual {p0, p1, v0}, Lccsansan/q/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    sget v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;
    .locals 13

    .line 2
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cloud_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "status"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s = ? AND %s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3
    new-array v9, v0, [Ljava/lang/String;

    aput-object p1, v9, v3

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    .line 4
    monitor-enter p0

    .line 6
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v6, "sdk_record"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 7
    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 19
    :try_start_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :cond_0
    :try_start_3
    const-string v2, "filepath"

    .line 20
    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-direct {p0, v2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_1

    .line 28
    :try_start_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    .line 29
    :cond_1
    :try_start_5
    invoke-direct {p0, v1, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1
    :try_end_5
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 33
    :try_start_6
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    const-string v2, ""

    invoke-static {v2}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    const-string v3, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v0, v2, v0, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 34
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    add-int/lit8 v8, v8, 0x7e

    const-string v4, "\u008f\u0095\u008f\u0087\u0090\u008f\u0094\u0093\u0089\u0086\u0092\u008f\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0091\u008b\u0089\u0090\u008f\u0089\u008b\u008e"

    invoke-static {v0, v8, v0, v4}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 36
    :try_start_8
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 38
    monitor-exit p0

    return-object v0

    .line 33
    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 39
    :goto_1
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 40
    throw p1

    :catchall_2
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public getDownloadingList(Lccsancom/san/xz/base/XzRecord$Status;ZLjava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/san/xz/base/XzRecord$Status;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 179
    move-object v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 186
    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "status"

    aput-object v5, v4, v3

    const-string v5, "%s = ?"

    invoke-static {v5, v4}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 187
    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    move-object v10, v4

    move-object v11, v5

    goto :goto_0

    :cond_0
    nop

    .line 189
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "status"

    aput-object v6, v5, v3

    const-string v6, "status"

    aput-object v6, v5, v0

    const-string v6, "%s <> ? AND %s <> ?"

    invoke-static {v6, v5}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 190
    new-array v4, v4, [Ljava/lang/String;

    sget-object v6, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v6}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual/range {p1 .. p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v11, v4

    move-object v10, v5

    .line 192
    :goto_0
    monitor-enter p0

    .line 194
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, v1, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "sdk_record"

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v5, "%s ASC"

    .line 195
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v0, v3

    invoke-static {v5, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v7 .. v14}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    .line 208
    :try_start_3
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v2

    .line 209
    :cond_1
    move-object/from16 v0, p3

    :try_start_4
    invoke-direct {p0, v3, v0}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_1
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_4
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_1

    .line 218
    :try_start_5
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v4

    :goto_2
    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    add-int/lit16 v5, v5, 0x80

    const-string v6, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v4, v5, v4, v6}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 219
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x7f

    const-string v8, "\u008f\u0094\u0087\u008b\u0085\u0090\u0086\u0098\u008f\u0096\u0087\u008a\u0082\u0097\u008b\u008a\u008f\u008e\u0084\u0090\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0089\u0096\u0090\u0085"

    invoke-static {v4, v7, v4, v8}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p2, :cond_3

    const-string v4, "include"

    goto :goto_3

    :cond_3
    const-string v4, "not include"

    :goto_3
    :try_start_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "status = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 221
    :try_start_8
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 223
    :goto_4
    monitor-exit p0

    return-object v2

    .line 218
    :catchall_1
    move-exception v0

    move-object v4, v3

    .line 224
    :goto_5
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 225
    throw v0

    :catchall_2
    move-exception v0

    .line 226
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getDownloadingList(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 38
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "content_type"

    aput-object v5, v4, v2

    const-string v5, "status"

    aput-object v5, v4, v1

    const-string v5, "%s = ? AND %s <> ?"

    invoke-static {v5, v4}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 39
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    nop

    .line 41
    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "status"

    aput-object v3, p1, v2

    const-string v3, "%s <> ?"

    invoke-static {v3, p1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-array v3, v1, [Ljava/lang/String;

    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    move-object v9, v3

    move-object v8, v4

    .line 44
    :goto_0
    monitor-enter p0

    .line 46
    const/4 p1, 0x0

    :try_start_0
    iget-object v3, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "sdk_record"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v3, "%s ASC"

    .line 47
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_2
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    .line 60
    :try_start_3
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v0

    .line 61
    :cond_1
    :try_start_4
    invoke-direct {p0, v1, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_4
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_1

    .line 70
    :try_start_5
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v1, p1

    :goto_2
    :try_start_6
    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7f

    const-string v4, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {p1, v3, p1, v4}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    const-string v4, "\u0094\u0087\u008b\u0085\u0090\u0086\u0098\u008f\u0096\u0087\u008a\u0082\u0097\u008b\u008a\u008f\u0087\u008b\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0089\u0096\u0090\u0085"

    invoke-static {p1, v2, p1, v4}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v3, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 73
    :try_start_7
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 75
    :goto_3
    monitor-exit p0

    return-object v0

    .line 70
    :catchall_1
    move-exception p1

    .line 76
    :goto_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 77
    throw p1

    .line 75
    :catchall_2
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;
    .locals 12

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cloud_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2
    new-array v8, v0, [Ljava/lang/String;

    aput-object p1, v8, v3

    .line 3
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v5, "sdk_record"

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6
    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 15
    :try_start_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 16
    :cond_0
    :try_start_3
    invoke-direct {p0, v1, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "status"

    .line 17
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lccsancom/san/xz/base/XzRecord$Status;->fromInt(I)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object p1
    :try_end_3
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :try_start_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0

    return-object p1

    :cond_1
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x7f

    const-string v3, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v0, v2, v0, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 23
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    rsub-int/lit8 v4, v4, 0x7f

    const-string v5, "\u008f\u0095\u008f\u0087\u0090\u008f\u0094\u0096\u008d\u0089\u0086\u0089\u0096\u008f\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0091\u008b\u0089\u0090\u008f\u0089\u008b\u008e"

    invoke-static {v0, v4, v0, v5}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 25
    :try_start_6
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 27
    :goto_1
    monitor-exit p0

    return-object v0

    .line 22
    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 28
    :goto_2
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 29
    throw p1

    :catchall_2
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public removeDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 31
    sget v0, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const-string v0, "ad"

    invoke-virtual {p0, p1, v0}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sget v0, Lccsansan/q/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
    .locals 5

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cloud_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 45
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v2, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "sdk_record"

    .line 48
    :try_start_1
    invoke-direct {p0, p1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v2, v4, p1, v1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, ""

    const/16 v1, 0x30

    invoke-static {v0, v1, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    const-string v1, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    const/4 v2, 0x0

    invoke-static {v2, v0, v2, v1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update record failed!"

    .line 50
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeDownloadListener(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 253
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "("

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 257
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 258
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/xz/base/XzRecord;

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x7f

    const-string v7, "\u0085\u008a\u008d\u008c\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087"

    invoke-static {v4, v6, v4, v7}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "%s = \'%s\'"

    invoke-static {v3, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 263
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_2
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object p1, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sdk_record"

    .line 269
    invoke-virtual {p1, v1, v0, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    const-string v1, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v4, v0, v4, v1}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove records failed!"

    .line 271
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_4
    return-void
.end method

.method public unifiedDownload(Lccsansan/cs/unifiedDownload;)I
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 45
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "content_type"

    aput-object v4, v3, v2

    const-string v4, "status"

    aput-object v4, v3, v1

    const-string v4, "%s = ? AND %s <> ?"

    invoke-static {v4, v3}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 46
    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    goto :goto_0

    :cond_0
    nop

    .line 48
    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "status"

    aput-object v3, p1, v2

    const-string v3, "%s <> ?"

    invoke-static {v3, p1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 49
    new-array v4, v1, [Ljava/lang/String;

    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 51
    :goto_0
    monitor-enter p0

    .line 53
    const/4 p1, 0x0

    :try_start_0
    iget-object v5, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "SELECT COUNT(_id) FROM %s WHERE (%s)"

    .line 54
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "sdk_record"

    aput-object v6, v0, v2

    aput-object v3, v0, v1

    invoke-static {v5, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    .line 63
    :try_start_3
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v2

    :cond_1
    nop

    .line 64
    :try_start_4
    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_4
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    :try_start_5
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return p1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v0, p1

    :goto_1
    :try_start_6
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0x7e

    const-string v3, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {p1, v7, p1, v3}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit16 v4, v4, 0x80

    const-string v5, "\u0094\u0087\u008b\u0085\u0090\u0086\u0098\u008f\u0089\u0084\u008d\u0082\u0097\u008f\u0087\u008a\u0082\u0097\u008b\u008a\u008f\u008e\u0084\u0090\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0089\u008b\u008e"

    invoke-static {p1, v4, p1, v5}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {v3, p1, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 71
    :try_start_7
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 73
    monitor-exit p0

    return v2

    .line 68
    :catchall_1
    move-exception p1

    .line 74
    :goto_2
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 75
    throw p1

    .line 73
    :catchall_2
    move-exception p1

    .line 76
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cloud_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2
    new-array v8, v0, [Ljava/lang/String;

    aput-object p1, v8, v3

    .line 3
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v5, "sdk_record"

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6
    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 19
    :try_start_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 20
    :cond_0
    :try_start_3
    invoke-direct {p0, v1, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "filepath"

    .line 21
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-direct {p0, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_1

    .line 30
    :try_start_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    .line 31
    :cond_1
    :try_start_5
    invoke-static {p2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 36
    :try_start_6
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0

    return-object p1

    :cond_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const-string v4, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v0, v2, v0, v4}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 37
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    const-string v6, ""

    invoke-static {v5, v6, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7f

    const-string v5, "\u008f\u0095\u008f\u0087\u0090\u008f\u0094\u0093\u0089\u0086\u0092\u008f\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0091\u008b\u0089\u0090\u008f\u0089\u008b\u008e"

    invoke-static {v0, v3, v0, v5}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 39
    :try_start_8
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 41
    :goto_1
    monitor-exit p0

    return-object v0

    .line 36
    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 42
    :goto_2
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 43
    throw p1

    :catchall_2
    move-exception p1

    .line 44
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 109
    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 116
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "content_type"

    aput-object v7, v6, v4

    const-string v7, "status"

    aput-object v7, v6, v0

    const-string v7, "%s = ? AND %s = ?"

    invoke-static {v7, v6}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 117
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    sget-object v7, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v7}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    move-object v12, v5

    move-object v11, v6

    goto :goto_0

    :cond_0
    nop

    .line 119
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "status"

    aput-object v6, v5, v4

    const-string v6, "%s = ?"

    invoke-static {v6, v5}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 120
    new-array v5, v0, [Ljava/lang/String;

    sget-object v7, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v7}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    move-object v12, v5

    move-object v11, v6

    .line 122
    :goto_0
    monitor-enter p0

    .line 124
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lccsansan/q/removeDownloadListener;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, v1, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "sdk_record"

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v6, "%s DESC"

    .line 125
    :try_start_1
    new-array v7, v0, [Ljava/lang/Object;

    const-string v15, "complete_time"

    aput-object v15, v7, v4

    invoke-static {v6, v7}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v8 .. v15}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-interface {v6}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_1

    .line 148
    :try_start_3
    invoke-static {v6}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v2

    .line 149
    :cond_1
    move-object/from16 v7, p2

    :try_start_4
    invoke-direct {v1, v6, v7}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsanandroid/database/Cursor;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 153
    invoke-virtual {v8}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-direct {v1, v9}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_2
    const/4 v9, 0x1

    .line 156
    :cond_3
    :goto_1
    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    goto :goto_2

    .line 163
    :cond_4
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_5
    :goto_2
    invoke-interface {v6}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_1

    .line 168
    :try_start_5
    invoke-static {v6}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v5

    :goto_3
    :try_start_6
    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7f

    const-string v7, "\u008b\u008a\u0082\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v5, v4, v5, v7}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x7f

    const-string v8, "\u0094\u0087\u008b\u0085\u0090\u0086\u0098\u008f\u0096\u0087\u008a\u0082\u0097\u008b\u008a\u008f\u0087\u008b\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u008f\u0089\u0096\u0090\u0085"

    invoke-static {v5, v7, v5, v8}, Lccsansan/q/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v4, v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 171
    :try_start_7
    invoke-static {v6}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 173
    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 175
    invoke-virtual {v1, v3}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/util/List;)V

    return-object v2

    .line 168
    :catchall_1
    move-exception v0

    move-object v5, v6

    .line 176
    :goto_5
    :try_start_8
    invoke-static {v5}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 177
    throw v0

    .line 175
    :catchall_2
    move-exception v0

    .line 178
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
