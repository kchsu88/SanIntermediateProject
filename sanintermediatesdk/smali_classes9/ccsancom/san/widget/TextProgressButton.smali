.class public Lccsancom/san/widget/TextProgressButton;
.super Lccsansan/j/unifiedDownload;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;
.implements Lccsansan/k/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/widget/TextProgressButton$OnStateClickListener;,
        Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;,
        Lccsancom/san/widget/TextProgressButton$Status;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I = 0x0

.field public static TAG:Ljava/lang/String; = "AD.TextProgressButton"

.field private static addDownloadListener:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:J

.field private static sIsNetWorkAvailable:Z


# instance fields
.field azStatus:I

.field private callback:Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;

.field downloadStatus:I

.field private hadRegisterReceiver:Z

.field private mActionType:I

.field private mAppDownHelper:Lccsansan/aa/addDownloadListener;

.field private mDownUrl:Ljava/lang/String;

.field private mLastCheck:J

.field private mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

.field private mOriginalUrl:Ljava/lang/String;

.field private mPorterDuffXfermode:Lccsanandroid/graphics/PorterDuffXfermode;

.field private mReceiver:Lccsanandroid/content/BroadcastReceiver;

.field private final mSecondProgress:I

.field private mState:Lccsancom/san/widget/TextProgressButton$Status;

.field private pkgName:Ljava/lang/String;

.field private record:Lccsansan/k/unifiedDownload;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    invoke-static {}, Lccsancom/san/widget/TextProgressButton;->removeDownloadListener()V

    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lccsansan/j/unifiedDownload;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    .line 8
    const/16 p1, 0x4b0

    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->mSecondProgress:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/san/widget/TextProgressButton;->mLastCheck:J

    .line 14
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    .line 15
    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    .line 518
    new-instance v0, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 541
    iput-boolean p1, p0, Lccsancom/san/widget/TextProgressButton;->hadRegisterReceiver:Z

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 542
    invoke-direct {p0, p1, p2}, Lccsansan/j/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 543
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    .line 549
    const/16 p1, 0x4b0

    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->mSecondProgress:I

    .line 553
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lccsancom/san/widget/TextProgressButton;->mLastCheck:J

    .line 555
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    .line 556
    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    .line 557
    const/4 p2, -0x1

    iput p2, p0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    .line 1059
    new-instance p2, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 1082
    iput-boolean p1, p0, Lccsancom/san/widget/TextProgressButton;->hadRegisterReceiver:Z

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 1083
    invoke-direct {p0, p1, p2, p3}, Lccsansan/j/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 1084
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    .line 1090
    const/16 p1, 0x4b0

    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->mSecondProgress:I

    .line 1094
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lccsancom/san/widget/TextProgressButton;->mLastCheck:J

    .line 1096
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    .line 1097
    iput p1, p0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    .line 1098
    const/4 p2, -0x1

    iput p2, p0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    .line 1600
    new-instance p2, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsancom/san/widget/TextProgressButton$IncentiveDownloadUtils;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 1623
    iput-boolean p1, p0, Lccsancom/san/widget/TextProgressButton;->hadRegisterReceiver:Z

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;
    .param p1, "x1"    # Lccsancom/san/widget/TextProgressButton$Status;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    .end local p1    # "x1":Lccsancom/san/widget/TextProgressButton$Status;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    sget p0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x21

    goto :goto_0

    :cond_1
    const/16 p0, 0x28

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lccsancom/san/widget/TextProgressButton;)I
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget p0, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lccsancom/san/widget/TextProgressButton;)I
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget p0, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method static synthetic access$1100(Lccsancom/san/widget/TextProgressButton;)I
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    :goto_0
    iget p0, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x33

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1200(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    :goto_0
    const/4 v2, 0x0

    iget-object p0, p0, Lccsancom/san/widget/TextProgressButton;->mOriginalUrl:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object p0

    :goto_3
    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1300(Lccsancom/san/widget/TextProgressButton;)Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    iget-object p0, p0, Lccsancom/san/widget/TextProgressButton;->callback:Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x4f

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/16 v0, 0xf

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1500(Lccsancom/san/widget/TextProgressButton;)V
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->checkBottomStatus()V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0xb

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1600(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 4
    .param p0, "x0"    # Lccsanandroid/content/Context;
    .param p1, "x1"    # Lccsansan/dt/removeDownloadListener;

    .line 1
    .end local p0    # "x0":Lccsanandroid/content/Context;
    .end local p1    # "x1":Lccsansan/dt/removeDownloadListener;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p1}, Lccsancom/san/widget/TextProgressButton;->isShowNetGuideDialog(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1700()Z
    .locals 3

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sget-boolean v0, Lccsancom/san/widget/TextProgressButton;->sIsNetWorkAvailable:Z

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/16 v1, 0x36

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1702(Z)Z
    .locals 3
    .param p0, "x0"    # Z

    .line 1
    .end local p0    # "x0":Z
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    :cond_0
    sput-boolean p0, Lccsancom/san/widget/TextProgressButton;->sIsNetWorkAvailable:Z

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1800(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2
    .param p0, "x0"    # Lccsansan/dt/removeDownloadListener;

    .line 1
    .end local p0    # "x0":Lccsansan/dt/removeDownloadListener;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lccsancom/san/widget/TextProgressButton;->isOfflineAd(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lccsancom/san/widget/TextProgressButton;)Lccsansan/aa/addDownloadListener;
    .locals 5
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x0

    iget-object p0, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    packed-switch v1, :pswitch_data_0

    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    array-length v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$202(Lccsancom/san/widget/TextProgressButton;Lccsansan/aa/addDownloadListener;)Lccsansan/aa/addDownloadListener;
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;
    .param p1, "x1"    # Lccsansan/aa/addDownloadListener;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    .end local p1    # "x1":Lccsansan/aa/addDownloadListener;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p0, 0x41

    goto :goto_0

    :cond_1
    const/16 p0, 0x52

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/16 p0, 0x49

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lccsancom/san/widget/TextProgressButton;Z)V
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;
    .param p1, "x1"    # Z

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    .end local p1    # "x1":Z
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->checkBottomStatus(Z)V

    sget p0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

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
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
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

.method static synthetic access$400(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$500(Lccsancom/san/widget/TextProgressButton;)I
    .locals 3
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget p0, p0, Lccsancom/san/widget/TextProgressButton;->versionCode:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method static synthetic access$600(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

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

.method static synthetic access$602(Lccsancom/san/widget/TextProgressButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    .end local p1    # "x1":Ljava/lang/String;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/16 p0, 0x33

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lccsancom/san/widget/TextProgressButton;->record:Lccsansan/k/unifiedDownload;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x4b

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$702(Lccsancom/san/widget/TextProgressButton;Lccsansan/k/unifiedDownload;)Lccsansan/k/unifiedDownload;
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;
    .param p1, "x1"    # Lccsansan/k/unifiedDownload;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    .end local p1    # "x1":Lccsansan/k/unifiedDownload;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->record:Lccsansan/k/unifiedDownload;

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p1

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$800(Lccsancom/san/widget/TextProgressButton;)I
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    iget p0, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5f

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$900(Lccsancom/san/widget/TextProgressButton;JJ)I
    .locals 2
    .param p0, "x0"    # Lccsancom/san/widget/TextProgressButton;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 1
    .end local p0    # "x0":Lccsancom/san/widget/TextProgressButton;
    .end local p1    # "x1":J
    .end local p3    # "x2":J
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/san/widget/TextProgressButton;->getProgress(JJ)I

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private checkBottomStatus()V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v2}, Lccsancom/san/widget/TextProgressButton;->checkBottomStatus(Z)V

    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private checkBottomStatus(Z)V
    .locals 7
    .param p1, "isInitCheck"    # Z

    .line 20
    .end local p1    # "isInitCheck":Z
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/san/widget/TextProgressButton;->mLastCheck:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    .line 20
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/widget/TextProgressButton;->mLastCheck:J

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->record:Lccsansan/k/unifiedDownload;

    .line 7
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->updateDownloadUrl()V

    .line 8
    sget-object p1, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBottomStatus pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDownUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 9
    :cond_3
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 10
    :cond_5
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 20
    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    .line 12
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    if-nez p1, :cond_6

    .line 20
    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_2

    :goto_4
    goto :goto_5

    .line 12
    :pswitch_2
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 13
    new-instance p1, Lccsansan/aa/addDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/aa/addDownloadListener;-><init>(Lccsansan/k/removeDownloadListener;)V

    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    goto :goto_4

    .line 16
    :cond_7
    :goto_5
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 20
    :cond_8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(ICI)Ljava/lang/String;
    .locals 9

    .line 2099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 2102
    :try_start_0
    new-array v1, p2, [C

    .line 2105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 2107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/widget/TextProgressButton;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/widget/TextProgressButton;->removeDownloadListener:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 2105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 2113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private getProgress(JJ)I
    .locals 5
    .param p1, "completeSize"    # J
    .param p3, "fileSize"    # J

    .line 1
    .end local p1    # "completeSize":J
    .end local p3    # "fileSize":J
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x51

    goto :goto_0

    :cond_0
    const/16 v1, 0x45

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 0
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-gtz v1, :cond_1

    goto :goto_2

    .line 1
    :pswitch_0
    const-wide/16 v3, 0x1

    cmp-long v1, p3, v3

    if-gtz v1, :cond_2

    :goto_1
    goto :goto_4

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 0
    :cond_2
    :pswitch_1
    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 1
    div-long/2addr p1, p3

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :goto_4
    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :cond_3
    :goto_5
    const/16 p1, 0x64

    if-le v2, p1, :cond_5

    sget p2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x6b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    const/16 v2, 0x34

    goto :goto_6

    :cond_4
    const/16 v2, 0x64

    :cond_5
    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private isNotUseContinueText()Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    if-eq v0, v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    const/16 v4, 0x21

    if-eq v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    :pswitch_1
    goto :goto_8

    :goto_4
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v4, Lccsancom/san/widget/TextProgressButton$Status;->USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v4, :cond_6

    sget v4, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    :cond_3
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->ERROR:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v1, :cond_6

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->AUTO_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v1, :cond_6

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->MOBILE_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    const/4 v1, 0x1

    :goto_5
    packed-switch v1, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne v0, v1, :cond_5

    const/16 v0, 0x42

    goto :goto_6

    :cond_5
    const/4 v0, 0x6

    :goto_6
    packed-switch v0, :pswitch_data_4

    :cond_6
    :goto_7
    const/4 v2, 0x1

    goto :goto_9

    :goto_8
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    :goto_9
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :cond_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method private static isOfflineAd(Lccsansan/dt/removeDownloadListener;)Z
    .locals 4
    .param p0, "adData"    # Lccsansan/dt/removeDownloadListener;

    .line 1
    .end local p0    # "adData":Lccsansan/dt/removeDownloadListener;
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :goto_3
    const/4 v0, 0x0

    :pswitch_1
    sget p0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static isShowNetGuideDialog(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "adData"    # Lccsansan/dt/removeDownloadListener;

    .line 1
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "adData":Lccsansan/dt/removeDownloadListener;
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;

    invoke-direct {v1, p0, p1}, Lccsancom/san/widget/TextProgressButton$getDownloadStatusByUrl;-><init>(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x23

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private registerReceiver()V
    .locals 4

    .line 18
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lccsancom/san/widget/TextProgressButton;->hadRegisterReceiver:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 18
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

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

    .line 3
    :cond_2
    new-instance v0, Lccsancom/san/widget/TextProgressButton$addDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/widget/TextProgressButton$addDownloadListener;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->callback:Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;

    .line 13
    :try_start_1
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 14
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 15
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 16
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 18
    iput-boolean v2, p0, Lccsancom/san/widget/TextProgressButton;->hadRegisterReceiver:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 2

    const/16 v0, 0x36

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/widget/TextProgressButton;->getDownloadingList:[C

    const-wide v0, -0x228f8b797513bf97L    # -1.25412421719107E142

    sput-wide v0, Lccsancom/san/widget/TextProgressButton;->removeDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x204es
        0x6068s
        -0x5f2es
        -0x1eefs
        0x21a5s
        0x6214s
        -0x5d8as
        -0x1d23s
        0x2349s
        0x63bes
        -0x5bf0s
        -0x1b41s
        0x24e7s
        0x6548s
        -0x5a5bs
        -0x19dbs
        0x268as
        0x66bas
        -0x58dfs
        -0x1878s
        0x2877s
        0x68des
        -0x56bbs
        -0x16d4s
        -0x55c5s
        -0x15e3s
        0x2aa7s
        0x6b64s
        -0x5430s
        -0x179fs
        0x2803s
        0x68a8s
        -0x56c4s
        -0x1635s
        0x2e65s
        0x6efds
        -0x516ds
        -0x10f9s
        0x2fd1s
        0x6c59s
        -0x531as
        -0x135as
        0x2d1cs
        0x6dbcs
        -0x5db6s
        -0x1d0es
        0x2378s
        0x6359s
        -0x5c12s
        -0x1f89s
        0x209cs
        0x6125s
        -0x5eb6s
        -0x1e2ds
    .end array-data
.end method

.method private setState(Lccsancom/san/widget/TextProgressButton$Status;)V
    .locals 4
    .param p1, "state"    # Lccsancom/san/widget/TextProgressButton$Status;

    .line 17
    .end local p1    # "state":Lccsancom/san/widget/TextProgressButton$Status;
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    .line 2
    sget-object v1, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; pkName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 3
    :pswitch_0
    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    goto :goto_3

    .line 7
    :goto_2
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    iput-object v1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    .line 17
    nop

    .line 11
    :goto_3
    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v2, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne v1, v2, :cond_2

    .line 17
    const/16 v1, 0x5e

    goto :goto_4

    :cond_2
    const/16 v1, 0xd

    :goto_4
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_4

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    if-eq v1, v2, :cond_4

    .line 12
    :goto_5
    invoke-virtual {p0, v2}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 15
    :cond_4
    :pswitch_1
    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v1, :cond_6

    .line 16
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->invalidate()V

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_6

    :cond_5
    const/16 p1, 0x42

    :goto_6
    packed-switch p1, :pswitch_data_2

    :cond_6
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_2
    .end packed-switch
.end method

.method private unRegisterReceiver()V
    .locals 4

    .line 3
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lccsancom/san/widget/TextProgressButton;->callback:Lccsancom/san/widget/TextProgressButton$PackageChangedCallback;

    .line 2
    iput-boolean v0, p0, Lccsancom/san/widget/TextProgressButton;->hadRegisterReceiver:Z

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    :goto_0
    sget v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateDownloadUrl()V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/widget/TextProgressButton$getDownloadingList;

    invoke-direct {v1, p0}, Lccsancom/san/widget/TextProgressButton$getDownloadingList;-><init>(Lccsancom/san/widget/TextProgressButton;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method


# virtual methods
.method public createDownHelper(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "versionCode"    # I

    .line 11
    .end local p1    # "packName":Ljava/lang/String;
    .end local p2    # "url":Ljava/lang/String;
    .end local p3    # "versionCode":I
    nop

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    const-string v1, "createDownHelper"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/widget/TextProgressButton;->destroy()V

    .line 3
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->registerReceiver()V

    .line 4
    iput p3, p0, Lccsancom/san/widget/TextProgressButton;->versionCode:I

    .line 5
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton;->mOriginalUrl:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->updateDownloadUrl()V

    .line 9
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mOriginalUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/widget/TextProgressButton$unifiedDownload;

    invoke-direct {v1, p0, p1, p3, p2}, Lccsancom/san/widget/TextProgressButton$unifiedDownload;-><init>(Lccsancom/san/widget/TextProgressButton;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public destroy()V
    .locals 6

    .line 12
    nop

    .line 10
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    invoke-virtual {p0, v0}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mOriginalUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->pkgName:Ljava/lang/String;

    .line 6
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, v1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 7
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/san/widget/TextProgressButton;->versionCode:I

    .line 8
    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 10
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 12
    :pswitch_0
    sget v4, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x4f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 10
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 9
    invoke-virtual {v2}, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils()V

    .line 10
    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    goto :goto_2

    .line 9
    :pswitch_1
    invoke-virtual {v2}, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils()V

    .line 10
    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    const/16 v0, 0x9

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 12
    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    nop

    :goto_3
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->unRegisterReceiver()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public drawCustomText(Lccsanandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 38
    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    const/16 v2, 0x3e

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_2
    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    const/16 v0, 0x5b

    goto :goto_3

    :cond_2
    const/16 v0, 0x4d

    :goto_3
    const/16 v2, 0x4b0

    const/16 v3, 0x64

    packed-switch v0, :pswitch_data_1

    goto :goto_6

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_5

    .line 38
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v4, 0x35

    if-ge v0, v4, :cond_3

    .line 1
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 5
    :cond_4
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-ge v0, v3, :cond_5

    .line 6
    :goto_5
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    div-int v1, v2, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 38
    goto :goto_6

    .line 6
    :cond_5
    :pswitch_2
    nop

    .line 8
    invoke-virtual {p0, v1}, Lccsanandroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 11
    :goto_6
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p0}, Lccsancom/san/widget/TextProgressButton;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getFontMetrics()Lccsanandroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lccsanandroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v4

    iget v0, v0, Lccsanandroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sub-float/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Lccsancom/san/widget/TextProgressButton;->getText()Ljava/lang/String;

    move-result-object v4

    .line 15
    sget-object v5, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawCustomText : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget-object v6, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v6}, Lccsanandroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLccsanandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getHeight()I

    move-result v6

    sget-object v7, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 19
    new-instance v6, Lccsanandroid/graphics/Canvas;

    invoke-direct {v6, v5}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {v6, v4, v7, v1, v0}, Lccsanandroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLccsanandroid/graphics/Paint;)V

    .line 22
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton;->mPorterDuffXfermode:Lccsanandroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 23
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p0}, Lccsancom/san/widget/TextProgressButton;->getXfermodeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 27
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v7

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v2, v8

    add-int/2addr v7, v2

    mul-int v4, v4, v7

    div-int/2addr v4, v3

    int-to-float v2, v4

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_7

    .line 29
    :cond_6
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v4

    mul-int v2, v2, v4

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    :goto_7
    iget-object v2, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {v6, v0, v2}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v5, v1, v1, v0}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;FFLccsanandroid/graphics/Paint;)V

    .line 36
    iget-object p1, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 37
    invoke-virtual {v5}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 38
    invoke-virtual {v5}, Lccsanandroid/graphics/Bitmap;->recycle()V

    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .line 13
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne v0, v1, :cond_1

    .line 13
    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_3

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13
    const/16 v1, 0x62

    goto :goto_2

    :cond_2
    const/16 v1, 0x41

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 1
    :pswitch_1
    return-object v0

    .line 5
    :goto_3
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->isNotUseContinueText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 5
    :cond_3
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 13
    const/16 v1, 0x56

    goto :goto_4

    :cond_4
    const/16 v1, 0x11

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_5

    .line 5
    :pswitch_2
    return-object v0

    .line 9
    :cond_5
    :goto_5
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    .line 13
    sget v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    packed-switch v1, :pswitch_data_3

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->WAITING:Lccsancom/san/widget/TextProgressButton$Status;

    goto :goto_7

    .line 9
    :pswitch_3
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->WAITING:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne v0, v1, :cond_7

    goto :goto_8

    .line 13
    :goto_7
    const/4 v4, 0x2

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_7

    .line 9
    :goto_8
    nop

    .line 13
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    goto :goto_9

    .line 12
    :cond_7
    invoke-virtual {v0}, Lccsancom/san/widget/TextProgressButton$Status;->getResValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    throw v0

    .line 12
    :cond_8
    :goto_9
    nop

    .line 13
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%d%%"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public getTextColor()I
    .locals 4

    .line 4
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3b

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v2, 0x1e

    const/4 v3, 0x0

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    .line 2
    :goto_4
    iget v0, p0, Lccsansan/j/unifiedDownload;->mDefaultTextColor:I

    .line 4
    sget v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :goto_5
    :pswitch_2
    iget v0, p0, Lccsansan/j/unifiedDownload;->mDefaultBtnColor:I

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getXfermodeTextColor()I
    .locals 3

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/j/unifiedDownload;->mDefaultTextColor:I

    sget v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public init()V
    .locals 2

    .line 2
    nop

    .line 1
    invoke-super {p0}, Lccsansan/j/unifiedDownload;->init()V

    .line 2
    new-instance v0, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v1, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mPorterDuffXfermode:Lccsanandroid/graphics/PorterDuffXfermode;

    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public measureHeight(II)I
    .locals 2
    .param p1, "defaultHeight"    # I
    .param p2, "measureSpec"    # I

    .line 15
    .end local p1    # "defaultHeight":I
    .end local p2    # "measureSpec":I
    nop

    .line 1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_0

    return p1

    .line 4
    :cond_0
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 15
    const/16 v1, 0x3c

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object p1, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1}, Lccsanandroid/graphics/Paint;->ascent()F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p2}, Lccsanandroid/graphics/Paint;->descent()F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginTop:I

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginBottom:I

    add-int/2addr p1, p2

    goto :goto_3

    .line 5
    :pswitch_0
    if-eqz v0, :cond_2

    .line 15
    const/16 v1, 0x46

    goto :goto_1

    :cond_2
    const/16 v1, 0x12

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 14
    :pswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_3

    .line 15
    :goto_2
    sget p2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x7b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    .line 5
    :cond_3
    nop

    .line 15
    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    goto :goto_3

    .line 5
    :cond_4
    move p1, p2

    .line 15
    :cond_5
    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch
.end method

.method public measureWidth(II)I
    .locals 6
    .param p1, "defaultWidth"    # I
    .param p2, "measureSpec"    # I

    .line 21
    .end local p1    # "defaultWidth":I
    .end local p2    # "measureSpec":I
    nop

    .line 1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 21
    sget p2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x71

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    return p1

    .line 4
    :cond_1
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    .line 21
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 18
    iget-object p1, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_7

    .line 21
    :pswitch_0
    sget v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 5
    :cond_3
    if-eqz v0, :cond_4

    .line 21
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    add-int/lit8 v5, v5, 0x7

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v5, :cond_6

    goto :goto_2

    .line 17
    :pswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto/16 :goto_a

    .line 21
    :goto_2
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v0, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    :catchall_1
    move-exception p1

    throw p1

    .line 5
    :cond_6
    if-eq v0, v2, :cond_7

    .line 21
    const/16 v0, 0x11

    goto :goto_4

    :cond_7
    const/16 v0, 0x23

    :goto_4
    packed-switch v0, :pswitch_data_3

    :goto_5
    goto :goto_6

    .line 5
    :pswitch_2
    goto :goto_a

    .line 21
    :goto_6
    move p1, p2

    goto :goto_a

    :goto_7
    goto :goto_8

    :cond_8
    const/4 v3, 0x1

    :goto_8
    packed-switch v3, :pswitch_data_4

    .line 19
    iget-object p2, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p2, p1}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    sget-object v0, Lccsancom/san/widget/TextProgressButton$Status;->USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-virtual {v0}, Lccsancom/san/widget/TextProgressButton$Status;->getResValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginRight:I

    add-int/2addr p1, p2

    goto :goto_9

    .line 21
    :pswitch_3
    iget-object p1, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    sget-object p2, Lccsancom/san/widget/TextProgressButton$Status;->USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-virtual {p2}, Lccsancom/san/widget/TextProgressButton$Status;->getResValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginRight:I

    add-int/2addr p1, p2

    goto :goto_a

    :goto_9
    nop

    :goto_a
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 35
    .end local p1    # "v":Lccsanandroid/view/View;
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_0
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    if-nez p1, :cond_2

    :goto_0
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    const/16 v1, 0x27

    add-int/2addr p1, v1

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x3f

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 35
    :pswitch_0
    return-void

    .line 1
    :goto_2
    :try_start_1
    array-length p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    .line 3
    :cond_2
    invoke-interface {p1}, Lccsancom/san/widget/TextProgressButton$OnStateClickListener;->onClick()V

    .line 5
    sget-object p1, Lccsancom/san/widget/TextProgressButton$getDownloadedRecordByUrl;->unifiedDownload:[I

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    goto :goto_6

    .line 25
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-interface {p1, v2}, Lccsancom/san/widget/TextProgressButton$OnStateClickListener;->onNormal(Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 26
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    if-eqz p1, :cond_3

    .line 1
    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 26
    :cond_4
    nop

    .line 27
    invoke-virtual {p0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 28
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->AUTO_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    goto :goto_6

    .line 29
    :pswitch_2
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-interface {p1, v0}, Lccsancom/san/widget/TextProgressButton$OnStateClickListener;->onNormal(Lccsancom/san/widget/TextProgressButton$Status;)V

    goto :goto_6

    .line 30
    :pswitch_3
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    invoke-interface {p1}, Lccsancom/san/widget/TextProgressButton$OnStateClickListener;->onPause()V

    .line 31
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    if-eqz p1, :cond_7

    .line 1
    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 32
    :cond_5
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 35
    :goto_4
    goto :goto_6

    .line 33
    :pswitch_4
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    invoke-interface {p1}, Lccsancom/san/widget/TextProgressButton$OnStateClickListener;->onDownloading()V

    .line 34
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    if-eqz p1, :cond_6

    .line 1
    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 35
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/aa/addDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    .line 1
    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_4

    .line 35
    :cond_7
    :goto_6
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 9
    .end local p1    # "url":Ljava/lang/String;
    nop

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPause-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_7

    .line 9
    :pswitch_0
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 4
    const/16 p1, 0x1a

    goto :goto_1

    :cond_1
    const/16 p1, 0x22

    :goto_1
    packed-switch p1, :pswitch_data_1

    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    if-eqz p1, :cond_3

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    const/16 v1, 0xe

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/16 v0, 0x1e

    goto :goto_2

    :cond_2
    const/4 v0, 0x6

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 9
    :catchall_0
    move-exception p1

    throw p1

    .line 4
    :goto_3
    const/16 v0, 0x5f

    goto :goto_4

    :cond_3
    const/16 v0, 0x34

    :goto_4
    packed-switch v0, :pswitch_data_3

    :goto_5
    goto :goto_6

    .line 5
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/aa/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/k/unifiedDownload;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lccsansan/k/unifiedDownload;->getDownloadingList()J

    move-result-wide v0

    invoke-virtual {p1}, Lccsansan/k/unifiedDownload;->addDownloadListener()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lccsancom/san/widget/TextProgressButton;->getProgress(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 9
    :goto_6
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5f
        :pswitch_2
    .end packed-switch
.end method

.method public onPreCacheXzed(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "total"    # J
    .param p4, "completed"    # J

    .line 13
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "total":J
    .end local p4    # "completed":J
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 13
    return-void

    .line 1
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1, v2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x64

    mul-long v2, v2, p4

    .line 2
    div-long/2addr v2, p2

    long-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    .line 13
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/16 v2, 0x5e

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 6
    :pswitch_0
    const/16 v2, 0x64

    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getProgress()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 13
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_2

    goto :goto_3

    .line 6
    :pswitch_2
    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v4, Lccsancom/san/widget/TextProgressButton$Status;->PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne v3, v4, :cond_5

    return-void

    .line 9
    :cond_5
    :goto_3
    invoke-virtual {p0, v2}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 12
    sget-object v3, Lccsancom/san/widget/TextProgressButton$Status;->PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, v3}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 13
    sget-object v3, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onProgress-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  url "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " total   "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  completed  "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    :cond_6
    :goto_4
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    return-void

    :pswitch_3
    const/4 p1, 0x0

    :try_start_2
    array-length p1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public onStart(Lccsansan/k/unifiedDownload;)V
    .locals 4
    .param p1, "downloadRecord"    # Lccsansan/k/unifiedDownload;

    .line 6
    .end local p1    # "downloadRecord":Lccsansan/k/unifiedDownload;
    nop

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->updateDownloadUrl()V

    .line 3
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->record:Lccsansan/k/unifiedDownload;

    .line 4
    invoke-virtual {p1}, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 4
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mAppDownHelper:Lccsansan/aa/addDownloadListener;

    if-eqz p1, :cond_1

    .line 6
    const/16 p1, 0x32

    goto :goto_1

    :cond_1
    const/16 p1, 0xb

    :goto_1
    packed-switch p1, :pswitch_data_1

    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 5
    :cond_2
    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->record:Lccsansan/k/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/k/unifiedDownload;->getDownloadingList()J

    move-result-wide v0

    iget-object p1, p0, Lccsancom/san/widget/TextProgressButton;->record:Lccsansan/k/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/k/unifiedDownload;->addDownloadListener()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lccsancom/san/widget/TextProgressButton;->getProgress(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 6
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    :pswitch_0
    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 1
    .end local p1    # "url":Ljava/lang/String;
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onUpdate-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .line 4
    .end local p1    # "hasWindowFocus":Z
    nop

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/widget/ProgressBar;->onWindowFocusChanged(Z)V

    .line 2
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    const/16 p1, 0x35

    goto :goto_0

    :cond_0
    const/16 p1, 0x1a

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->checkBottomStatus()V

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onXzResult(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "error"    # Ljava/lang/String;

    .line 5
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "success":Z
    .end local p3    # "error":Ljava/lang/String;
    nop

    .line 1
    sget-object p3, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x206e

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v8, " success "

    cmp-long v9, v4, v6

    rsub-int/lit8 v4, v9, 0x19

    invoke-static {v1, v3, v4}, Lccsancom/san/widget/TextProgressButton;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1, p3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2
    if-eqz p2, :cond_2

    goto :goto_2

    .line 5
    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    const/16 p1, 0x16

    goto :goto_1

    :cond_1
    const/16 p1, 0x4a

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    nop

    :goto_3
    packed-switch v2, :pswitch_data_2

    :goto_4
    goto :goto_5

    .line 4
    :pswitch_1
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->COMPLETED:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 5
    iget p1, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    invoke-virtual {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_4

    :cond_3
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onXzedItemDelete(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 4
    .end local p1    # "url":Ljava/lang/String;
    nop

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x18

    const v4, 0xaa1c

    const/16 v5, 0x30

    const-string v6, ""

    invoke-static {v6, v5, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1e

    invoke-static {v3, v4, v5}, Lccsancom/san/widget/TextProgressButton;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mDownUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 3
    :cond_1
    iget p1, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    invoke-virtual {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 4
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    :pswitch_0
    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    const/16 p1, 0xb

    :try_start_0
    div-int/2addr p1, v2
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 5
    .param p1, "adData"    # Lccsansan/dt/removeDownloadListener;
    .param p2, "registerTextProgressListener"    # Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;

    .line 13
    .end local p1    # "adData":Lccsansan/dt/removeDownloadListener;
    .end local p2    # "registerTextProgressListener":Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v0

    iput v0, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    .line 2
    invoke-virtual {p0, p0}, Lccsanandroid/widget/ProgressBar;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {p1}, Lccsancom/san/action/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/16 v3, 0x13

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 13
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v0

    iput v0, p0, Lccsancom/san/widget/TextProgressButton;->mActionType:I

    .line 2
    invoke-virtual {p0, p0}, Lccsanandroid/widget/ProgressBar;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {p1}, Lccsancom/san/action/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_7

    :pswitch_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_7

    .line 13
    :pswitch_1
    sget v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 4
    :cond_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    nop

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 5
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 13
    :cond_5
    sget v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    .line 6
    const-string v1, ""

    goto :goto_4

    .line 13
    :goto_3
    nop

    .line 6
    :goto_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_6

    .line 3
    const/16 v4, 0x54

    goto :goto_5

    :cond_6
    const/16 v4, 0x1a

    :goto_5
    packed-switch v4, :pswitch_data_3

    .line 6
    goto :goto_6

    :pswitch_3
    invoke-virtual {v0}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v2

    .line 7
    :goto_6
    invoke-virtual {p0, v1, v3, v2}, Lccsancom/san/widget/TextProgressButton;->createDownHelper(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    .line 10
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lccsancom/san/widget/TextProgressButton;->destroy()V

    .line 13
    :goto_8
    new-instance v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/san/widget/TextProgressButton$getDownloadedList;-><init>(Lccsancom/san/widget/TextProgressButton;Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {p0, v0}, Lccsancom/san/widget/TextProgressButton;->setOnStateClickListener(Lccsancom/san/widget/TextProgressButton$OnStateClickListener;)V

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

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_3
    .end packed-switch
.end method

.method public setOnStateClickListener(Lccsancom/san/widget/TextProgressButton$OnStateClickListener;)V
    .locals 3
    .param p1, "stateClickListener"    # Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    .line 1
    .end local p1    # "stateClickListener":Lccsancom/san/widget/TextProgressButton$OnStateClickListener;
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton;->mOnStateClickListener:Lccsancom/san/widget/TextProgressButton$OnStateClickListener;

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    monitor-enter p0

    .line 9
    .end local p1    # "progress":I
    nop

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton;->mState:Lccsancom/san/widget/TextProgressButton$Status;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->AZED:Lccsancom/san/widget/TextProgressButton$Status;

    const/16 v2, 0x5e

    if-ne v0, v1, :cond_2

    iget v1, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    if-ne p1, v1, :cond_0

    .line 9
    const/16 v1, 0x5e

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 2
    :pswitch_0
    invoke-super {p0, p1}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    sget p1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    const/16 p1, 0x53

    goto :goto_1

    :cond_1
    const/16 p1, 0x3b

    :goto_1
    packed-switch p1, :pswitch_data_1

    monitor-exit p0

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1

    .line 2
    :cond_2
    :goto_3
    const/16 v1, 0x64

    if-lt p1, v1, :cond_3

    .line 9
    const/16 v2, 0x1c

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 5
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v1, :cond_4

    .line 9
    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_3

    sget v1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    const/16 v2, 0xb

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 5
    :cond_5
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->UPDATE:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq v0, v1, :cond_7

    .line 6
    sget-object p1, Lccsancom/san/widget/TextProgressButton$Status;->COMPLETED:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-direct {p0, p1}, Lccsancom/san/widget/TextProgressButton;->setState(Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 7
    iget p1, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    .line 9
    sget v0, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/16 v2, 0x10

    :goto_6
    packed-switch v2, :pswitch_data_4

    :cond_7
    :pswitch_2
    invoke-super {p0, p1}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 0
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5e
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 3
    .end local p1    # "text":Ljava/lang/String;
    nop

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lccsancom/san/widget/TextProgressButton;->checkBottomStatus()V

    .line 3
    invoke-super {p0, p1}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    sget p1, Lccsancom/san/widget/TextProgressButton;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
