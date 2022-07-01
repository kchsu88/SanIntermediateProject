.class public abstract Lccsancom/san/proaz/getDownloadingList;
.super Lccsanandroid/widget/PopupWindow;
.source ""


# static fields
.field private static deleteDownItem:[C

.field private static getDownloadedRecordByUrl:J

.field private static getDownloadingCount:I

.field private static pause:I


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:Lccsansan/p/getDownloadedList;

.field private final getDownloadStatusByUrl:Lccsanandroid/view/View$OnClickListener;

.field private final getDownloadedList:Lccsanandroid/view/View$OnClickListener;

.field private getDownloadingList:Lccsanandroid/content/Context;

.field private getDownloadingRecordByUrl:Z

.field private removeDownloadListener:Lccsanandroid/widget/FrameLayout;

.field private unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    const/16 v0, 0x51

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proaz/getDownloadingList;->deleteDownItem:[C

    const-wide v0, 0x1116cbfdd2630c41L

    sput-wide v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedRecordByUrl:J

    return-void

    nop

    :array_0
    .array-data 2
        0x1affs
        0x16aas
        0x27cs
        0x3e6as
        0x2bfes
        0x27f7s
        0x533ds
        0x4f6es
        0x78f2s
        0x74f1s
        0x6035s
        -0x638cs
        -0x7648s
        -0x7a49s
        -0x4ed0s
        -0x5286s
        -0x2143s
        -0x351bs
        -0x39dcs
        -0xd9as
        -0x1051s
        0x1bebs
        0x1729s
        0x369s
        0x3cees
        0x28a3s
        0x2423s
        0x506ds
        0x4dafs
        0x79e4s
        0x752fs
        0x6125s
        -0x6d72s
        -0x712cs
        -0x45a8s
        -0x49b0s
        -0x5c70s
        -0x2034s
        -0x34f8s
        -0x38a4s
        -0xf62s
        -0x1321s
        0x1850s
        0x145fs
        0x199s
        0x3dc0s
        0x69s
        0xc2fs
        0x18ecs
        0x24a6s
        0x3176s
        0x3d15s
        0x49f4s
        0x55a8s
        0x6265s
        0x6e26s
        0x7afes
        -0x795es
        -0x6c9ds
        -0x60dds
        -0x5439s
        -0x485fs
        -0x3b9ds
        -0x2fdbs
        -0x230ds
        -0x1741s
        -0xa88s
        0x105s
        0xdf9s
        0x19a7s
        0x266ds
        0x3229s
        0x3eccs
        0x4ab2s
        0x5779s
        0x632as
        0x6fbes
        0x7bacs
        -0x77b8s
        -0x6bf2s
        -0x5f2bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroid/widget/PopupWindow;-><init>()V

    .line 2
    new-instance v0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;

    invoke-direct {v0, p0}, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;-><init>(Lccsancom/san/proaz/getDownloadingList;)V

    iput-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    .line 9
    new-instance v0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsancom/san/proaz/getDownloadingList;)V

    iput-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/view/View$OnClickListener;

    .line 20
    const-string v0, "BaseInnerPromotionAzPopupView"

    const-string v1, "#InitPromotionPopup"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/proaz/getDownloadingList;->deleteDownItem:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/proaz/getDownloadingList;->getDownloadedRecordByUrl:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic addDownloadListener(Lccsancom/san/proaz/getDownloadingList;)Lccsansan/p/getDownloadedList;
    .locals 3

    .line 2
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v1, v0, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private deleteDownItem()V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5f

    .line 1
    invoke-static {v0}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v0

    iput v0, p0, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils:I

    .line 2
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bt/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v1}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v1

    ushr-int/2addr v0, v1

    goto :goto_1

    .line 0
    :pswitch_0
    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v0

    iput v0, p0, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils:I

    .line 2
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bt/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)I

    move-result v0

    const/16 v1, 0x32

    invoke-static {v1}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lccsancom/san/proaz/getDownloadingList;->unifiedDownload:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private deleteDownList()V
    .locals 11

    .line 36
    nop

    .line 1
    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->getDownloadStatusByUrl()Lccsanandroid/widget/ImageView;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils()Lccsanandroid/widget/TextView;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener()Lccsanandroid/widget/TextView;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener()Lccsanandroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 13
    sget v5, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v5, v5, 0x51

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 7
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    :try_start_0
    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    throw v0

    .line 7
    :cond_0
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 36
    :goto_0
    nop

    .line 7
    :cond_1
    if-eqz v1, :cond_2

    .line 10
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    const/16 v5, 0x13

    goto :goto_1

    :cond_3
    const/16 v5, 0x16

    :goto_1
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 16
    sget v5, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v5, v5, 0x41

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 7
    const/16 v5, 0x52

    goto :goto_2

    :cond_4
    const/16 v5, 0x15

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 13
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_3

    :pswitch_0
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    const/16 v2, 0x34

    :try_start_1
    div-int/2addr v2, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 16
    :catchall_1
    move-exception v0

    throw v0

    .line 13
    :goto_3
    :pswitch_1
    const/4 v2, 0x1

    if-eqz v3, :cond_5

    .line 7
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/4 v5, 0x1

    :goto_4
    packed-switch v5, :pswitch_data_2

    .line 36
    sget v5, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v5, v5, 0x21

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 7
    const/16 v5, 0x3a

    goto :goto_5

    :cond_6
    const/16 v5, 0x42

    :goto_5
    packed-switch v5, :pswitch_data_3

    .line 16
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_6

    :pswitch_2
    iget-object v5, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_7

    :goto_6
    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_7
    :pswitch_3
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v3, "inner_dialog"

    cmp-long v5, v7, v9

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x1ada

    int-to-char v7, v7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    rsub-int/lit8 v8, v8, 0x2e

    invoke-static {v5, v7, v8}, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_9

    .line 7
    sget v7, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v7, v7, 0x3b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 16
    :cond_7
    nop

    .line 22
    :try_start_3
    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v8}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 13
    sget v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    .line 36
    :cond_8
    nop

    .line 25
    :cond_9
    :try_start_4
    invoke-direct {p0, v0}, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener(Lccsanandroid/widget/ImageView;)V

    .line 27
    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->unifiedDownload()Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    iget v1, p0, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils:I

    iget v5, p0, Lccsancom/san/proaz/getDownloadingList;->unifiedDownload:I

    invoke-virtual {p0, v0, v6, v1, v5}, Lccsanandroid/widget/PopupWindow;->showAtLocation(Lccsanandroid/view/View;III)V

    .line 29
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2, v4}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 32
    iput-boolean v2, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingRecordByUrl:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 34
    iput-boolean v6, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingRecordByUrl:Z

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#show exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseInnerPromotionAzPopupView"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v6, v0}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_8
    nop

    .line 13
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/16 v0, 0x1d

    :try_start_5
    div-int/2addr v0, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

    .line 36
    :cond_a
    return-void

    :catchall_3
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_2
    .end packed-switch
.end method

.method private getDownloadedList()V
    .locals 3

    .line 12
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bt/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)I

    move-result v0

    iget v1, p0, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/16 v1, 0x60

    .line 2
    invoke-static {v1}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    invoke-virtual {p0, v1}, Lccsanandroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    new-instance v0, Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    .line 7
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-virtual {p0, v1}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object v2, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setContentView(Lccsanandroid/view/View;)V

    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private getDownloadedRecordByUrl()Z
    .locals 6

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    const-string v1, "BaseInnerPromotionAzPopupView"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 7
    sget v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    nop

    .line 2
    const-string v0, "#show return, getTopActivity() = null"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    return v2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 7
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v4, v0, 0x5d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 6
    :cond_3
    iget-boolean v4, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingRecordByUrl:Z

    if-eqz v4, :cond_6

    .line 7
    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    const-string v0, "#show return,mPromotionPopup is showing"

    packed-switch v3, :pswitch_data_1

    .line 6
    nop

    .line 7
    :pswitch_1
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/16 v0, 0x24

    goto :goto_1

    :cond_5
    const/16 v0, 0x5e

    :goto_1
    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_2
    return v2

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    :goto_3
    return v3

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
    .packed-switch 0x5e
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsancom/san/proaz/getDownloadingList;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/proaz/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    sget p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x5b

    goto :goto_0

    :cond_1
    const/16 p0, 0x49

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x2a

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0x44

    :goto_0
    invoke-static {p0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x30

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl()V
    .locals 2

    .line 4
    sget v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;->deleteDownItem()V

    .line 2
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;->getDownloadedList()V

    .line 4
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;->deleteDownList()V

    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private removeDownloadListener(Lccsanandroid/widget/ImageView;)V
    .locals 3

    .line 15
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 12
    :cond_0
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v1}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x63

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    goto :goto_4

    .line 12
    :pswitch_1
    if-eqz p1, :cond_2

    .line 15
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v1, 0x59

    goto :goto_3

    :cond_3
    const/4 v1, 0x6

    :goto_3
    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_4
    sget p1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x59
        :pswitch_2
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 18
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const-string v0, "InnerPromotion"

    .line 16
    :try_start_0
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v1}, Lccsancom/san/proaz/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/p/getDownloadedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "inner_dialog"

    .line 18
    :try_start_1
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lccsansan/bn/getDownloadedCount;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    sget p1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method


# virtual methods
.method protected abstract IncentiveDownloadUtils()Lccsanandroid/widget/TextView;
.end method

.method protected abstract IncentiveDownloadUtils(I)Ljava/lang/String;
.end method

.method protected abstract addDownloadListener()Lccsanandroid/widget/ImageView;
.end method

.method public addDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 4

    .line 11
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3
    :cond_0
    iput-object p1, p0, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener:Lccsansan/p/getDownloadedList;

    .line 5
    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->unifiedDownload()Lccsanandroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    .line 6
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;->getDownloadedRecordByUrl()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x2e

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v0

    int-to-char v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v2

    const-string v3, "BaseInnerPromotionAzPopupView"

    cmpl-float v1, v2, v1

    add-int/lit8 v1, v1, 0x23

    invoke-static {p1, v0, v1}, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingRecordByUrl()V

    sget p1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method protected abstract getDownloadStatusByUrl()Lccsanandroid/widget/ImageView;
.end method

.method public abstract getDownloadingList(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
.end method

.method public getDownloadingList()V
    .locals 5

    .line 13
    sget v0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList:Lccsanandroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 13
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsancom/san/proaz/getDownloadingList;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/proaz/getDownloadingList;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_3

    .line 4
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lccsanandroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    .line 7
    :goto_3
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 13
    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    .line 7
    :pswitch_1
    const/16 v2, 0x8

    .line 8
    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iput-object v0, p0, Lccsancom/san/proaz/getDownloadingList;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    :goto_5
    nop

    .line 13
    iput-boolean v3, p0, Lccsancom/san/proaz/getDownloadingList;->getDownloadingRecordByUrl:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract removeDownloadListener()Lccsanandroid/widget/TextView;
.end method

.method protected abstract unifiedDownload()Lccsanandroid/app/Activity;
.end method
