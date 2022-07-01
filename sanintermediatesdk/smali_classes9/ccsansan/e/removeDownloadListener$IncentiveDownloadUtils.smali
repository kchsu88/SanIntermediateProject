.class Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/e/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static addDownloadListener:Z

.field private static deleteDownItem:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:Z


# instance fields
.field final synthetic getDownloadingList:Lccsansan/e/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    const/16 v1, 0x56

    sput v1, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    sput-boolean v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Z

    sput-boolean v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Z

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    return-void

    :array_0
    .array-data 2
        0xbes
        0xb7s
        0xc4s
        0xbas
        0xc2s
        0xbbs
        0x9as
        0xc5s
        0xcds
        0xabs
        0xc8s
        0xbfs
        0x99s
        0xbds
        0x7es
        0x7fs
        0x76s
        0xc9s
        0xcas
        0xcbs
        0xc6s
        0xc1s
        0x84s
    .end array-data
.end method

.method constructor <init>(Lccsansan/e/removeDownloadListener;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/e/removeDownloadListener;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

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
    sget-object v1, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    .line 1166
    sget v2, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    .line 1168
    sget-boolean v3, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Z

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
    sget-boolean p3, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Z

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
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 7

    .line 34
    sget v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 34
    const/16 v2, 0x5c

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 34
    :pswitch_0
    sget v2, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1
    :cond_2
    if-eq v0, v1, :cond_3

    .line 34
    :goto_1
    goto :goto_3

    .line 1
    :cond_3
    :try_start_1
    const-string v0, "CPINotifyObserver"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x7f

    const-string v3, "\u0097\u0096\u0092\u0082\u0093\u0091\u0085\u0085\u0082\u0093\u0092\u0083\u008c\u0091\u0084\u0082\u0088\u0085\u0095\u0094\u0091\u0093\u008b\u0082\u0093\u0092\u0091\u0090\u008f\u0086\u008e\u0083\u0082\u0081\u008d\u008c\u008b\u008a\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    const/4 v4, 0x0

    invoke-static {v4, v2, v4, v3}, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsansan/cy/resume;

    .line 28
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v2}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    goto :goto_1

    .line 29
    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, "adId"

    .line 32
    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg"

    .line 33
    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v3

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v6, p0, v2, v0}, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;-><init>(Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1, v5, v6}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 34
    :goto_3
    sget p1, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/2addr p1, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method
