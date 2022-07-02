.class public Lccsancom/san/landingpage/widget/LandingReserveButton;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;
    }
.end annotation


# static fields
.field public static final OPERATE_RESERVE:Ljava/lang/String; = "operate_reserve"

.field private static final TAG:Ljava/lang/String; = "Ad.ReserveButton"

.field private static getDownloadingList:I

.field private static removeDownloadListener:[I

.field private static unifiedDownload:I


# instance fields
.field private clickListener:Lccsanandroid/view/View$OnClickListener;

.field private countdownLayout:Lccsanandroid/widget/RelativeLayout;

.field private day:Lccsanandroid/widget/TextView;

.field private hour:Lccsanandroid/widget/TextView;

.field private isInit:Z

.field private mAdData:Lccsansan/dt/removeDownloadListener;

.field private mChangedListener:Lccsansan/r/addDownloadListener;

.field private mDownloadBtn:Lccsanandroid/widget/Button;

.field private minute:Lccsanandroid/widget/TextView;

.field private pkg:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->removeDownloadListener:[I

    return-void

    :array_0
    .array-data 4
        -0x4add7cc1
        0x165ab070
        -0x32150338
        -0x2e749cf3
        -0x1c2ac104
        0x623ef9df
        -0xda95329
        -0x50104d
        0x59eab4cd
        -0x3dd7cbfd
        -0x28008ba4
        -0x50f72e37
        -0x1885d1e
        0x1660a18a
        0x6daab54c
        -0x413b031f
        0xb3d9bf5
        -0x3c647432
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->isInit:Z

    .line 5
    new-instance v0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$1;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->clickListener:Lccsanandroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$2;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mChangedListener:Lccsansan/r/addDownloadListener;

    .line 41
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 43
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->isInit:Z

    .line 46
    new-instance p2, Lccsancom/san/landingpage/widget/LandingReserveButton$1;

    invoke-direct {p2, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$1;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    iput-object p2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->clickListener:Lccsanandroid/view/View$OnClickListener;

    .line 71
    new-instance p2, Lccsancom/san/landingpage/widget/LandingReserveButton$2;

    invoke-direct {p2, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$2;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    iput-object p2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mChangedListener:Lccsansan/r/addDownloadListener;

    .line 87
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 89
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->isInit:Z

    .line 92
    new-instance p2, Lccsancom/san/landingpage/widget/LandingReserveButton$1;

    invoke-direct {p2, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$1;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    iput-object p2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->clickListener:Lccsanandroid/view/View$OnClickListener;

    .line 117
    new-instance p2, Lccsancom/san/landingpage/widget/LandingReserveButton$2;

    invoke-direct {p2, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$2;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    iput-object p2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mChangedListener:Lccsansan/r/addDownloadListener;

    .line 138
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;
    .locals 2
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingReserveButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingReserveButton;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mAdData:Lccsansan/dt/removeDownloadListener;

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/san/landingpage/widget/LandingReserveButton;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingReserveButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingReserveButton;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->pkg:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5d

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lccsancom/san/landingpage/widget/LandingReserveButton;Lccsansan/aj/getDownloadingList;)V
    .locals 2
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingReserveButton;
    .param p1, "x1"    # Lccsansan/aj/getDownloadingList;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingReserveButton;
    .end local p1    # "x1":Lccsansan/aj/getDownloadingList;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateViewStatus(Lccsansan/aj/getDownloadingList;)V

    sget p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x26

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/landingpage/widget/LandingReserveButton;)Z
    .locals 2
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingReserveButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingReserveButton;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->isInit:Z

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$302(Lccsancom/san/landingpage/widget/LandingReserveButton;Z)Z
    .locals 3
    .param p0, "x0"    # Lccsancom/san/landingpage/widget/LandingReserveButton;
    .param p1, "x1"    # Z

    .line 1
    .end local p0    # "x0":Lccsancom/san/landingpage/widget/LandingReserveButton;
    .end local p1    # "x1":Z
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->isInit:Z

    packed-switch v1, :pswitch_data_0

    const/16 p0, 0x44

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsancom/san/landingpage/widget/LandingReserveButton;->removeDownloadListener:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private cancelCountDownTimer()V
    .locals 3

    .line 3
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    if-eqz v0, :cond_1

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_4

    .line 3
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 2
    :goto_4
    invoke-virtual {v0}, Lccsanandroid/os/CountDownTimer;->cancel()V

    .line 3
    iput-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    :cond_2
    :pswitch_1
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Lccsanandroid/content/Context;

    .line 8
    .end local p1    # "ctx":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "ccsan_san_landing_reserve_button"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    const/16 p1, 0x8

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x10

    invoke-static {p1, v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->addDownloadListener([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/Button;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    .line 3
    const-string p1, "san_layout_countdown"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->countdownLayout:Lccsanandroid/widget/RelativeLayout;

    .line 4
    const-string p1, "san_reserve_countdown_day"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->day:Lccsanandroid/widget/TextView;

    .line 5
    const-string p1, "san_reserve_countdown_hour"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->hour:Lccsanandroid/widget/TextView;

    .line 6
    const-string p1, "san_reserve_countdown_min"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->minute:Lccsanandroid/widget/TextView;

    .line 8
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mChangedListener:Lccsansan/r/addDownloadListener;

    const-string v1, "operate_reserve"

    invoke-virtual {p1, v1, v0}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :array_0
    .array-data 4
        0xa0f5e9a
        -0x7f555260
        -0x7ec121bd
        -0x1013ea26
        -0x619cacf3
        -0x11911800
        -0x75162fc0
        0x324a5a29
    .end array-data
.end method

.method private updateTimeView(J)V
    .locals 9
    .param p1, "timeLeft"    # J

    .line 3
    .end local p1    # "timeLeft":J
    nop

    .line 1
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->cancelCountDownTimer()V

    .line 2
    new-instance v8, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    const-wide/16 v0, 0x3e8

    mul-long v1, p1, v0

    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->day:Lccsanandroid/widget/TextView;

    iget-object v6, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->hour:Lccsanandroid/widget/TextView;

    iget-object v7, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->minute:Lccsanandroid/widget/TextView;

    const-wide/16 v3, 0x7530

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;-><init>(JJLccsanandroid/widget/TextView;Lccsanandroid/widget/TextView;Lccsanandroid/widget/TextView;)V

    iput-object v8, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    .line 3
    invoke-virtual {v8}, Lccsanandroid/os/CountDownTimer;->start()Lccsanandroid/os/CountDownTimer;

    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x12

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateViewStatus(Lccsansan/aj/getDownloadingList;)V
    .locals 8
    .param p1, "reserveInfo"    # Lccsansan/aj/getDownloadingList;

    .line 72
    .end local p1    # "reserveInfo":Lccsansan/aj/getDownloadingList;
    nop

    .line 0
    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lccsansan/aj/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Lccsansan/aj/getDownloadingList$removeDownloadListener;

    move-result-object v0

    .line 2
    sget-object v1, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    .line 4
    :cond_1
    sget-object v1, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    if-ne v0, v1, :cond_2

    .line 72
    const/16 v1, 0x12

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/2addr v0, v4

    if-nez v0, :cond_4

    goto :goto_1

    .line 6
    :pswitch_0
    sget-object v1, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_HAD_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    .line 4
    :cond_4
    :goto_1
    const/4 v2, 0x2

    .line 11
    :goto_2
    invoke-virtual {p1}, Lccsansan/aj/getDownloadingList;->unifiedDownload()J

    move-result-wide v0

    const/16 v6, 0x8

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    .line 72
    const/16 v2, 0x34

    goto :goto_3

    :cond_5
    const/16 v2, 0x44

    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 34
    iget-object v2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    invoke-virtual {v2, v6}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 35
    iget-object v2, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->countdownLayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 36
    invoke-direct {p0, v0, v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateTimeView(J)V

    goto :goto_5

    :pswitch_2
    nop

    .line 38
    const-string v0, "Ad.ReserveButton"

    const-string v1, "NO released and had reserved , but timeLeft is smaller than 0"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 39
    :pswitch_3
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v7}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->countdownLayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-static {v7, v7, v7, v7}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v2

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Lccsancom/san/landingpage/widget/LandingReserveButton;->addDownloadListener([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->clickListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 72
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_3

    :goto_5
    :pswitch_4
    goto :goto_8

    .line 43
    :pswitch_5
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v7}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->countdownLayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->cancelCountDownTimer()V

    .line 46
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->text:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_4

    .line 47
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    const-string v1, "san_reserve_play_book"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(I)V

    goto :goto_7

    .line 49
    :pswitch_6
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    nop

    .line 51
    :goto_7
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->clickListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 71
    :goto_8
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 72
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    const-string v0, "san_ads_open"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/Button;->setText(I)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x44
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        -0x49b24770
        -0x1d2b59ad
        -0x75162fc0
        0x324a5a29
    .end array-data
.end method


# virtual methods
.method public getButton()Lccsanandroid/widget/Button;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x53

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .line 5
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->timer:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    if-eqz v0, :cond_2

    :pswitch_1
    goto :goto_3

    :goto_1
    const/16 v1, 0x15

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/16 v1, 0x43

    goto :goto_2

    :cond_1
    const/16 v1, 0x10

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 2
    :goto_3
    invoke-virtual {v0}, Lccsanandroid/os/CountDownTimer;->cancel()V

    .line 5
    :cond_2
    :goto_4
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mChangedListener:Lccsansan/r/addDownloadListener;

    const-string v2, "operate_reserve"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    .line 5
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .line 3
    .end local p1    # "hasWindowFocus":Z
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    const-string v1, "#onWindowFocusChanged"

    const-string v2, "Ad.ReserveButton"

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateNativeAd(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateNativeAd(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_2

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 2
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 2
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mDownloadBtn:Lccsanandroid/widget/Button;

    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->text:Ljava/lang/String;

    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public startDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "reserveInfo"    # Lccsansan/aj/getDownloadingList;

    .line 8
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "reserveInfo":Lccsansan/aj/getDownloadingList;
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-nez p2, :cond_1

    .line 8
    return-void

    .line 1
    :cond_1
    iget-object v0, p2, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    const/16 v0, 0x63

    goto :goto_0

    :cond_2
    const/16 v0, 0x27

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 2
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p2, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsansan/as/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Z

    :goto_1
    nop

    .line 7
    const-string v0, "landingpage"

    iput-object v0, p2, Lccsansan/aj/getDownloadingList;->ActionTypeDownload:Ljava/lang/String;

    .line 8
    invoke-static {}, Lccsansan/ay/unifiedDownload;->addDownloadListener()Lccsansan/ay/unifiedDownload;

    move-result-object v0

    const-string v1, "landingPage"

    invoke-virtual {v0, p1, p2, v1}, Lccsansan/ay/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public updateNativeAd(Lccsansan/dt/removeDownloadListener;)V
    .locals 2
    .param p1, "nativeAd"    # Lccsansan/dt/removeDownloadListener;

    .line 6
    .end local p1    # "nativeAd":Lccsansan/dt/removeDownloadListener;
    nop

    .line 3
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mAdData:Lccsansan/dt/removeDownloadListener;

    .line 2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    const/16 p1, 0x27

    goto :goto_0

    :cond_2
    const/16 p1, 0x3a

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 6
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton;->unifiedDownload:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 3
    const/16 p1, 0x28

    goto :goto_1

    :cond_3
    const/16 p1, 0x36

    :goto_1
    packed-switch p1, :pswitch_data_1

    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->pkg:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton;->pkg:Ljava/lang/String;

    goto :goto_3

    :goto_2
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_3
    :pswitch_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/widget/LandingReserveButton$3;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method
