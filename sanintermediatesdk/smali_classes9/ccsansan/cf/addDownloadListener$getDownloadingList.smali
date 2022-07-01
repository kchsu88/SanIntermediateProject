.class Lccsansan/cf/addDownloadListener$getDownloadingList;
.super Lccsanandroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cf/addDownloadListener;->unifiedDownload(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:C

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:C

.field private static unifiedDownload:C


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/cf/addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    const v0, 0xab00

    sput-char v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadingList:C

    const v0, 0xb9df

    sput-char v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->addDownloadListener:C

    const/16 v0, 0x247c

    sput-char v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->unifiedDownload:C

    const/16 v0, 0x44eb

    sput-char v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:C

    return-void
.end method

.method constructor <init>(Lccsansan/cf/addDownloadListener;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lccsanandroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/cf/addDownloadListener$getDownloadingList;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/cf/addDownloadListener$getDownloadingList;->unifiedDownload:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/cf/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 2
    nop

    .line 1
    iget-object v0, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-static {v0}, Lccsansan/cf/addDownloadListener;->removeDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsansan/cf/addDownloadListener$unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-static {v0}, Lccsansan/cf/addDownloadListener;->removeDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsansan/cf/addDownloadListener$unifiedDownload;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/cf/addDownloadListener$unifiedDownload;->addDownloadListener()V

    sget v0, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public onTick(J)V
    .locals 5

    .line 7
    nop

    .line 0
    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 2
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/DialogFragment;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    const/16 p1, 0x4f

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    goto/16 :goto_5

    .line 2
    :pswitch_0
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/DialogFragment;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 7
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 2
    :pswitch_1
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-static {p1}, Lccsansan/cf/addDownloadListener;->addDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsanandroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-static {p1}, Lccsansan/cf/addDownloadListener;->unifiedDownload(Lccsansan/cf/addDownloadListener;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    const/4 p1, 0x4

    goto :goto_3

    :cond_3
    const/16 p1, 0xa

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 5
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-static {p1}, Lccsansan/cf/addDownloadListener;->addDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsanandroid/widget/TextView;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x51

    const-string v0, "\ufab5\u4530\u6be2\u6e60\u435c\uaaef\u6adf\u446d\ud65e\u3cd7\ua200\ue04a\ucd78\u8809\u6be2\u6e60\u437e\u5889\ue7c5\uc843\u31f9\uda50\ub7b8\ubb64\u70ba\u04d0\u6aa3\u481c\u3156\u8f4d\uce14\ud95c\u7d5b\u936a\u682e\ud879\u96e9\ueaf5\u5f19\u5b76\uf39d\u0522\ufc2d\u8ea1\uaed6\u198c\u62f6\u6b6f\u1c9d\u412f\u9110\ua8f7\u34e8\u959e\u8a8e\u35a8\u0367\u5fc3\u36ab\u7e77\u2e06\u29d6\u0fbc\u1888\u9177\ub0b1\ubaff\u9d34\uac9c\ue245\udf9e\udd55\u9177\ub0b1\ua92d\uca10\u7b00\u4511\uee97\u2140\u0e91\ue716"

    invoke-static {v0, p2}, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 7
    :pswitch_2
    iget-object p1, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-static {p1}, Lccsansan/cf/addDownloadListener;->addDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsanandroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lccsansan/cf/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cf/addDownloadListener;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/DialogFragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "san_auto_reserve_title"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :goto_4
    sget p1, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cf/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    goto/16 :goto_1

    :cond_4
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch
.end method
