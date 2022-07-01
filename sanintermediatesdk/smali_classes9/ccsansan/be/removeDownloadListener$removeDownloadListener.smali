.class final Lccsansan/be/removeDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/be/IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/be/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadedRecordByUrl:I

.field private static removeDownloadListener:J


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/be/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->deleteDownItem:I

    const-wide v0, -0x54f704c6104e6103L    # -2.230732129193597E-101

    sput-wide v0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->removeDownloadListener:J

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsansan/be/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/be/removeDownloadListener$removeDownloadListener;->removeDownloadListener:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/be/removeDownloadListener$removeDownloadListener;->removeDownloadListener:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getDownloadingList()V
    .locals 4

    .line 2
    sget v0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\ufddf\ufdaf\uc25a\u9f0c\ud1e9\u5c95\ua286\u0d41\u8658\ud8df\u2683\u8970\u0a43\u54e0\uaa87\u0558\u8e70\ud0f7\u2ebb\u8156\u1263"

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsansan/be/unifiedDownload;

    invoke-static {v0, v1, v2, v3}, Lccsansan/be/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V

    sget v0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public unifiedDownload(ILjava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsansan/be/unifiedDownload;

    invoke-static {p1, p2, v0}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Lccsansan/be/unifiedDownload;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/be/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsansan/be/unifiedDownload;

    invoke-static {p1, p2, v0}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Lccsansan/be/unifiedDownload;)V

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
    sget p1, Lccsansan/be/removeDownloadListener$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/be/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method
