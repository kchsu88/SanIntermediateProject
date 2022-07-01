.class final Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/widget/TextProgressButton;->isShowNetGuideDialog(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:Lccsansan/dt/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->unifiedDownload:I

    const-wide v0, 0x3088a3855673a01eL    # 6.80910165360087E-75

    sput-wide v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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
    sget-wide v1, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->IncentiveDownloadUtils:J

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

    sget-wide v6, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->IncentiveDownloadUtils:J

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
.method public callBackOnUIThread()V
    .locals 7

    .line 2
    nop

    .line 1
    invoke-static {}, Lccsancom/san/widget/TextProgressButton;->access$1700()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1800(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 1
    :cond_1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/action/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x50

    :goto_1
    const-string v3, "\uf612\uf653\u1792\u41d3\u526a\ub7e8\u018b\ub255\u760e\u975e\uc14b\ud2e8\uf6c2\u16a2\u40c8\u5368\u7714\u9602\uc040\ud3f6\uf796\u1636\u43c3\u500e\u7439\u95f5\uc36c\ud0c9\uf4e2\u1545\u42e8\u5111\u7534\u94eb\uc26c\ud183\uf5f2\u1458\u4212\u563b\u725d\u93d1\uc58d\ud6ac\uf282\u1352\u4508\u577f\u737d\u92eb\uc4bb\ud7f7\uf3fb\u1202\u4477\u57e1\u7045\u9189\uc7f1"

    const-string v4, "san_no_net_guide_network_dialog_connect"

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v2, v2, v2}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v3, v2}, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v5, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v1, v2, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v3, v1}, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1, v4}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1702(Z)Z

    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
