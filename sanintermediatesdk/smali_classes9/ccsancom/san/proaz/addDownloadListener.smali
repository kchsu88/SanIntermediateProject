.class public Lccsancom/san/proaz/addDownloadListener;
.super Lccsancom/san/proaz/getDownloadingList;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsancom/san/proaz/addDownloadListener;

.field private static deleteDownItem:J

.field private static getDownloadedList:[C

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field private addDownloadListener:Lccsanandroid/widget/TextView;

.field private getDownloadStatusByUrl:Lccsanandroid/view/View;

.field private getDownloadingList:Lccsanandroid/widget/ImageView;

.field private removeDownloadListener:Lccsanandroid/widget/ImageView;

.field private unifiedDownload:Lccsanandroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    const/16 v0, 0x21

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedList:[C

    const-wide v0, 0x5d8348dc3bc07e91L    # 2.939536369943579E142

    sput-wide v0, Lccsancom/san/proaz/addDownloadListener;->deleteDownItem:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x207fs
        -0x5efes
        0x22bes
        -0x5be2s
        0x25dfs
        -0x58b7s
        0x28e7s
        -0x558fs
        0x2b1bs
        -0x5379s
        0x2e34s
        -0x506as
        0x314as
        -0x4d36s
        0x3464s
        -0x4a07s
        -0x585ds
        -0x26e0s
        0x5a9cs
        -0x23c4s
        0x5dfds
        -0x2095s
        0x50c5s
        -0x2dads
        0x5339s
        -0x2b5bs
        0x5616s
        -0x284cs
        0x497fs
        -0x351fs
        0x4c51s
        -0x3224s
        0x4ea5s
    .end array-data
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;-><init>()V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 7

    .line 7
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "ccsan_ccsan_san_app_promotion_az_pop_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    .line 2
    const-string v0, "san_app_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    .line 3
    iget-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    const-string v0, "san_app_desc_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    const/16 v0, 0x30

    invoke-static {v0}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    const v1, 0xdff2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v0, v1, v3}, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener:Lccsanandroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    const v0, -0xfffff0

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0xa7cf

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    add-int/2addr v6, v1

    int-to-char v1, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x11

    invoke-static {v0, v1, v2}, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    .line 7
    iget-object p1, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private static getDownloadingList(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsancom/san/proaz/addDownloadListener;->getDownloadedList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/proaz/addDownloadListener;->deleteDownItem:J

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

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Lccsancom/san/proaz/addDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/proaz/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/proaz/addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lccsancom/san/proaz/addDownloadListener;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lccsancom/san/proaz/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/proaz/addDownloadListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lccsancom/san/proaz/addDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/proaz/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    sput-object v0, Lccsancom/san/proaz/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/proaz/addDownloadListener;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object p0, Lccsancom/san/proaz/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/proaz/addDownloadListener;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected IncentiveDownloadUtils()Lccsanandroid/widget/TextView;
    .locals 4

    .line 12
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    const/16 v0, 0x3b

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    if-nez v0, :cond_2

    :goto_1
    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    const/16 v0, 0x54

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 12
    :catchall_0
    move-exception v0

    throw v0

    .line 10
    :goto_3
    invoke-virtual {p0}, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload()Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    .line 12
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 9
    sget v2, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0xf

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 12
    return-object v0

    .line 9
    :pswitch_2
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected IncentiveDownloadUtils(I)Ljava/lang/String;
    .locals 6

    .line 6
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    const v3, 0xdff3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    const/16 v4, 0x30

    invoke-static {v0, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xf

    invoke-static {v2, v3, v0}, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget p1, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :pswitch_0
    const-string p1, "non_button"

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "button"

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected addDownloadListener()Lccsanandroid/widget/ImageView;
    .locals 3

    .line 5
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload()Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    .line 5
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    sget v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDownloadStatusByUrl()Lccsanandroid/widget/ImageView;
    .locals 5

    .line 11
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x16

    if-eqz v0, :cond_0

    .line 8
    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    if-nez v0, :cond_2

    :goto_1
    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 11
    :catchall_0
    move-exception v0

    throw v0

    .line 9
    :goto_3
    invoke-virtual {p0}, Lccsancom/san/proaz/addDownloadListener;->unifiedDownload()Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    .line 11
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    .line 8
    sget v3, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x61

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    .line 11
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x22

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected removeDownloadListener()Lccsanandroid/widget/TextView;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener:Lccsanandroid/widget/TextView;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/addDownloadListener;->addDownloadListener:Lccsanandroid/widget/TextView;

    goto :goto_2

    :goto_1
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v2, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v0

    :goto_4
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected unifiedDownload()Lccsanandroid/app/Activity;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    sget v1, Lccsancom/san/proaz/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
