.class Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static deleteDownItem:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:Z

.field private static unifiedDownload:Z


# instance fields
.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedList:I

    const/16 v1, 0xf

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    sput-boolean v0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedRecordByUrl:Z

    sput-boolean v0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->unifiedDownload:Z

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->addDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0x73s
        0x7es
        0x86s
        0x7ds
        0x7bs
        0x70s
        0x2fs
        0x77s
        0x83s
        0x7cs
        0x74s
        0x81s
        0x7fs
        0x6es
        0x82s
    .end array-data
.end method

.method constructor <init>(Lccsansan/br/removeDownloadListener$unifiedDownload;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    iput-object p2, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->addDownloadListener:[C

    .line 1166
    sget v2, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:I

    .line 1168
    sget-boolean v3, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedRecordByUrl:Z

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
    sget-boolean p3, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->unifiedDownload:Z

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
.method public onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 4
    nop

    .line 0
    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x7f

    const/4 v0, 0x0

    const-string v1, "\u008c\u0082\u008c\u008c\u008b\u0087\u0085\u008a\u0089\u0088\u0087\u0081\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v0, p1, v0, v1}, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string v1, "Hybrid"

    invoke-static {v1, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v2}, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener$unifiedDownload;IIZ)Z

    .line 3
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    iget-object p1, p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {p1}, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    const/16 p1, 0x5f

    goto :goto_0

    :cond_0
    const/16 p1, 0x5c

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    :cond_1
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    iget-object p1, p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {p1}, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    iget-object v1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const-string v3, "\u008f\u008b\u008c\u008e\u0081\u0086\u0082\u0085\u0084\u0083\u0082\u0081\u008e\u008b\u008c\u008d"

    invoke-static {v0, v2, v0, v3}, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    invoke-interface {p1, v1, v0, v2, p2}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->deleteDownItem:I

    const/4 v0, 0x2

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    :cond_0
    const-string p1, "Hybrid"

    const-string v1, "interceptRequest saveUrl onResponse"

    invoke-static {p1, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 9
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    const/4 p2, 0x3

    invoke-static {p1, v1, p2, v1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener$unifiedDownload;IIZ)Z

    goto :goto_2

    :pswitch_0
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->deleteDownItem:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 3
    :cond_2
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    iget-object p1, p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lccsanokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/br/removeDownloadListener;->removeDownloadListener(Lccsansan/br/removeDownloadListener;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 4
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    invoke-static {p1, v1, v0, v1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener$unifiedDownload;IIZ)Z

    .line 5
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    iget-object p1, p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {p1}, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    const/16 p1, 0x3f

    goto :goto_1

    :cond_3
    const/16 p1, 0x35

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 6
    :pswitch_1
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/br/removeDownloadListener$unifiedDownload;

    iget-object p1, p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {p1}, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    iget-object p2, p0, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v0

    int-to-byte v0, v0

    rsub-int/lit8 v0, v0, 0x7e

    const/4 v1, 0x0

    const-string v2, "\u008f\u008b\u008c\u008e\u0081\u0086\u0082\u0085\u0084\u0083\u0082\u0081\u008e\u008b\u008c\u008d"

    invoke-static {v1, v0, v1, v2}, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    const-string v2, ""

    invoke-interface {p1, p2, v0, v1, v2}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch
.end method
