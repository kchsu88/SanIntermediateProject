.class Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Z

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:Z

.field private static unifiedDownload:[C


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    const/16 v1, 0x51

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadingList:I

    sput-boolean v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    sput-boolean v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Z

    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x95s
        0xc0s
        0xc8s
        0xbfs
        0xbds
        0xb2s
        0xb5s
        0x71s
        0xbas
        0xc4s
        0xc5s
        0xc3s
        0xbes
        0xb6s
        0x72s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/reserve/service/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->unifiedDownload:[C

    .line 1166
    sget v2, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadingList:I

    .line 1168
    sget-boolean v3, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

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
    sget-boolean p3, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Z

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


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 4
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

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
    const-string v3, "wait"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x5e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 4
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto :goto_4

    .line 4
    :cond_2
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    const-string v3, "\u0088\u008b\u008c\u0086\u008b\u008a\u0088\u0085\u0085\u0089\u0083\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v4, v2, v4, v3}, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    goto :goto_5

    .line 1
    :goto_4
    invoke-static {v2, v2}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7f

    const-string v2, "\u008f\u008c\u008e\u008b\u0086\u0085\u0088\u008a\u008b\u0084\u008e\u008d\u0082\u008d\u0088\u008b\u008c\u0086\u008b\u008a\u0088\u0085\u0085\u0089\u0083\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v4, v0, v4, v2}, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    .line 1
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 4
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
