.class final Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;
.super Lccsanandroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    const-wide v0, 0x45f0a51c4d1d3a28L    # 8.242186505831662E28

    sput-wide v0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:J

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


# virtual methods
.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    .line 7
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\u3a69\u4602\uc2ce\u4e9a\ucb63\u572b\ud3da\u5fb8\ud817\u64d7\ue09e\u6d64\ue925\u75f9\uf19e\u720a\ufed4\u7a81\u876f\u0331"

    cmp-long v6, v1, v3

    rsub-int v1, v6, 0x7c4a

    invoke-static {v5, v1}, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/au/addDownloadListener;->addDownloadListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const/16 v0, 0x27

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 7
    :pswitch_0
    sget v3, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x5f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v0, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    .line 4
    :cond_2
    invoke-interface {v0, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 7
    :goto_2
    sget v0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 4
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 7
    :pswitch_1
    nop

    .line 4
    :goto_4
    :pswitch_2
    nop

    .line 6
    invoke-static {v1}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Z)Z

    .line 7
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_2
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

.method public onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit16 v1, v1, 0x7c49

    const-string v2, "\u3a69\u4602\uc2ce\u4e9a\ucb63\u572b\ud3da\u5fb8\ud817\u64d7\ue09e\u6d64\ue925\u75f9\uf19e\u720a\ufed4\u7a81\u876f\u0331"

    invoke-static {v2, v1}, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    sget p1, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    nop

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError errorCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  description :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x1007c49

    const/4 p3, 0x0

    invoke-static {p3, p3, p3}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v0

    add-int/2addr v0, p2

    const-string p2, "\u3a69\u4602\uc2ce\u4e9a\ucb63\u572b\ud3da\u5fb8\ud817\u64d7\ue09e\u6d64\ue925\u75f9\uf19e\u720a\ufed4\u7a81\u876f\u0331"

    invoke-static {p2, v0}, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz p1, :cond_0

    .line 4
    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    packed-switch p3, :pswitch_data_0

    sget p2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p2, p2, 0x1b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/16 p2, 0x27

    goto :goto_1

    :cond_1
    const/16 p2, 0x22

    :goto_1
    invoke-interface {p1, p4}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    sget p1, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 42
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x7c49

    const-string v3, "\u3a69\u4602\uc2ce\u4e9a\ucb63\u572b\ud3da\u5fb8\ud817\u64d7\ue09e\u6d64\ue925\u75f9\uf19e\u720a\ufed4\u7a81\u876f\u0331"

    invoke-static {v3, v2}, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    invoke-static {v0}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Z)Z

    .line 3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 11
    nop

    .line 16
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 19
    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 42
    :pswitch_0
    sget v2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    throw p1

    .line 7
    :cond_2
    iget-object v2, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz v2, :cond_3

    .line 8
    :goto_1
    invoke-interface {v2, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-static {}, Lccsansan/cy/addDownloadListener;->unifiedDownload()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 42
    :pswitch_1
    sget v1, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 11
    :cond_5
    invoke-static {p2}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_3
    return v0

    .line 7
    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    packed-switch v5, :pswitch_data_2

    goto :goto_8

    .line 19
    :pswitch_2
    invoke-static {v3}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_8

    .line 21
    :cond_7
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7
    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    packed-switch v3, :pswitch_data_3

    goto :goto_7

    .line 21
    :pswitch_3
    nop

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_b

    .line 28
    iget-object v2, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz v2, :cond_b

    .line 29
    invoke-interface {v2, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 32
    :cond_b
    invoke-static {p2}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 7
    const/4 v1, 0x1

    goto :goto_a

    :cond_c
    nop

    :goto_a
    packed-switch v1, :pswitch_data_4

    .line 33
    iget-object p1, p0, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz p1, :cond_e

    goto :goto_c

    .line 38
    :pswitch_4
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7
    const/16 v2, 0x10

    goto :goto_b

    :cond_d
    const/16 v2, 0x38

    :goto_b
    packed-switch v2, :pswitch_data_5

    .line 42
    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 40
    :pswitch_5
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    .line 42
    return p1

    .line 34
    :goto_c
    invoke-interface {p1, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 7
    sget p1, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    .line 42
    nop

    .line 34
    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method
