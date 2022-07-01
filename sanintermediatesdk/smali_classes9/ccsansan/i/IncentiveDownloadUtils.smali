.class public Lccsansan/i/IncentiveDownloadUtils;
.super Lccsansan/i/addDownloadListener;
.source ""


# static fields
.field private static AdError$ErrorCode:I

.field private static AdFormat:I

.field private static setErrorMessage:[C

.field private static values:J


# instance fields
.field private ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

.field private ActionTypeDownload:Z

.field private ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

.field private AdError:Z

.field private IncentiveSDK:Lccsanandroid/view/View;

.field private IncentiveSDK$1:Lccsansan/i/getDownloadedList;

.field private final deleteDownItem:Lccsancom/san/ads/AdFormat;

.field private deleteDownList:Lccsanandroid/widget/TextView;

.field private execute:Lccsansan/i/removeDownloadListener;

.field private getActionType:Lccsansan/dm/IncentiveDownloadUtils;

.field private final getDownloadStatusByUrl:Lccsanandroid/content/Context;

.field private getDownloadedCount:Lccsanandroid/widget/ProgressBar;

.field private getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

.field private getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

.field private getErrorCode:Z

.field private getErrorMessage:I

.field private getPackageNameByRecord:Lccsanandroid/widget/ImageView;

.field private getThumbPathByRecord:Lccsansan/j/unifiedDownload;

.field private pause:Lccsanandroid/widget/FrameLayout;

.field private performAction:Z

.field private performActionWhenOffline:Z

.field private resolveUrl:Lccsansan/j/unifiedDownload;

.field private resume:Lccsanandroid/widget/ImageView;

.field private shouldTryHandlingAction:Lccsansan/i/unifiedDownload;

.field private toString:Z

.field private trackReportClick:Lccsanandroid/widget/TextView;

.field private trackReportShow:Lccsansan/j/unifiedDownload;


# direct methods
.method public static synthetic $r8$lambda$Bu2c2FvrmiTUeU9roYZSK0J1uBs(Lccsansan/i/IncentiveDownloadUtils;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P-dCIOx4QlQsvCMJx4ov7vljdOw(Lccsansan/i/IncentiveDownloadUtils;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->values()V

    return-void
.end method

.method public static synthetic $r8$lambda$PyBSekEq18jy83Qi1Tfg20g9MU4(Lccsansan/i/IncentiveDownloadUtils;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xuft2D-zm7H0kDHmkKD9WqUdINc(Lccsansan/i/IncentiveDownloadUtils;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->unifiedDownload(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvZj6WLI92QWvgYfA31RXqI5NmY(Lccsansan/i/IncentiveDownloadUtils;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSSiwwNqOhCynljOxRrGlPpN-pI(Lccsansan/i/IncentiveDownloadUtils;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->AdFormat()V

    return-void
.end method

.method public static synthetic $r8$lambda$vnbYptG0nNi1QEdLL8lC4x-mL0k(Lccsansan/i/IncentiveDownloadUtils;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/i/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wtIM21KEHjPWAreuCiQud0iaADA(Lccsansan/i/IncentiveDownloadUtils;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->AdError()V

    return-void
.end method

.method public static synthetic $r8$lambda$yKKJQQsjkjCdzsVGaZ-NN12xxSE(Lccsansan/i/IncentiveDownloadUtils;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->IncentiveDownloadUtils(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    const/4 v0, 0x1

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/i/IncentiveDownloadUtils;->setErrorMessage:[C

    const-wide v0, -0x74885cb37f7d7694L    # -2.0150800104397E-253

    sput-wide v0, Lccsansan/i/IncentiveDownloadUtils;->values:J

    return-void

    nop

    :array_0
    .array-data 2
        0x63s
        -0x7700s
        0x12b1s
        -0x63d9s
        0x25dbs
        -0x50c4s
        0x38e1s
        -0x3e66s
        0x4b13s
        -0x2b48s
        0x5e59s
        -0x1838s
        0x717cs
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdFormat;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsansan/i/addDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDownload:Z

    .line 9
    iput-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->toString:Z

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    .line 16
    iput-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    .line 17
    iput-object p2, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    .line 18
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord()V

    return-void
.end method

.method private ActionTypeDetailPage()V
    .locals 3

    .line 6
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    if-eqz v1, :cond_1

    .line 6
    const/16 v1, 0x1a

    goto :goto_0

    :cond_1
    const/16 v1, 0x36

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_3

    .line 3
    :pswitch_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    const/16 v1, 0x5b

    goto :goto_2

    :cond_2
    const/16 v1, 0x41

    :goto_2
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 4
    :cond_3
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    invoke-virtual {v1, v0}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    .line 6
    :pswitch_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    new-instance v2, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda7;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1, v2}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    goto :goto_1

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch
.end method

.method private ActionTypeDownload()Z
    .locals 3

    .line 5
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "MediaView.FULL"

    const-string v1, "handleInterstitialClose"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->deleteDownList()V

    .line 3
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadingCount()V

    .line 4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_1

    .line 5
    const/16 v1, 0x48

    goto :goto_0

    :cond_1
    const/16 v1, 0x19

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    :cond_2
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onFinish()V

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    :goto_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method private ActionTypeReserveApp()V
    .locals 5

    .line 21
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    .line 21
    nop

    .line 1
    iput-boolean v1, p0, Lccsansan/i/IncentiveDownloadUtils;->toString:Z

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    const/16 v4, 0x24

    invoke-virtual {v0, v4}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/view/View;

    const/16 v4, 0x36

    invoke-virtual {v0, v4}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1
    :pswitch_0
    iput-boolean v1, p0, Lccsansan/i/IncentiveDownloadUtils;->toString:Z

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/view/View;

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_2

    goto :goto_3

    .line 19
    :goto_1
    const/16 v4, 0x5c

    goto :goto_2

    :cond_1
    const/16 v4, 0x38

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 6
    :goto_3
    invoke-virtual {v0}, Lccsansan/i/removeDownloadListener;->unifiedDownload()V

    .line 8
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    const/16 v0, 0x40

    goto :goto_4

    :cond_3
    const/16 v0, 0x5f

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 10
    nop

    .line 11
    const-string v0, "MediaView.FULL"

    const-string v1, "#showCompanionAdView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->IncentiveSDK()V

    goto :goto_6

    .line 16
    :pswitch_2
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 19
    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    nop

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 17
    :pswitch_3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 18
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->setErrorMessage()V

    .line 21
    :cond_5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7

    :goto_6
    nop

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5f
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic AdError()V
    .locals 3

    .line 1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsansan/i/IncentiveDownloadUtils;->performAction:Z

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic AdFormat()V
    .locals 4

    .line 7
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->performAction:Z

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->deleteDownList()V

    .line 5
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadingCount()V

    .line 6
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_1

    .line 7
    const/16 v1, 0x32

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    :goto_0
    const/16 v2, 0x13

    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x13

    goto :goto_2

    :cond_2
    const/16 v1, 0x3a

    :goto_2
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onFinish()V

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(II)V
    .locals 3

    .line 23
    nop

    .line 12
    iget-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->toString:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_2

    .line 23
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 16
    :cond_1
    invoke-virtual {v0, p1, p2}, Lccsansan/i/removeDownloadListener;->addDownloadListener(II)V

    .line 23
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    .line 18
    :cond_2
    iget-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->execute()I

    move-result p1

    if-lez p1, :cond_6

    mul-int/lit16 p1, p1, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_4

    .line 23
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getActionType()V

    packed-switch v0, :pswitch_data_1

    const/16 p1, 0xc

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    :goto_3
    :pswitch_1
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic IncentiveDownloadUtils(ZZ)V
    .locals 2

    .line 3
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    const-string v1, "cardbutton"

    invoke-direct {p0, v1, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/i/IncentiveDownloadUtils;Z)Z
    .locals 3

    .line 1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v0, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDownload:Z

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method private IncentiveSDK$1()V
    .locals 9

    .line 50
    nop

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v8, 0x8

    if-eqz v0, :cond_1

    .line 50
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lccsansan/i/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/ImageView;

    .line 8
    const-string v0, "san_icon_bg"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v6

    .line 9
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v7, "san_common_dimens_8dp"

    invoke-static {v7}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 10
    invoke-virtual/range {v2 .. v7}, Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V

    .line 13
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    new-instance v2, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda2;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 20
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    invoke-virtual {v0, v8}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 24
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 48
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 50
    :pswitch_0
    sget v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 26
    :cond_4
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-static {v2}, Lccsansan/bw/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 48
    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_4

    .line 27
    :pswitch_1
    invoke-virtual {v2}, Lccsansan/co/resolveUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 28
    iget-object v5, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    invoke-virtual {v2}, Lccsansan/co/resolveUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_3
    goto :goto_5

    .line 29
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 30
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 32
    :cond_7
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 50
    sget v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 36
    :goto_5
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 37
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 48
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    :goto_6
    packed-switch v2, :pswitch_data_2

    .line 50
    sget v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    goto :goto_8

    .line 41
    :pswitch_2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_7
    goto :goto_9

    .line 39
    :cond_9
    :goto_8
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 45
    :cond_a
    :goto_9
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    if-eqz v2, :cond_d

    .line 47
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 50
    sget v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b

    .line 48
    goto :goto_a

    :cond_b
    const/4 v1, 0x1

    :goto_a
    packed-switch v1, :pswitch_data_3

    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    invoke-virtual {v1, v0}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_3
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    invoke-virtual {v1, v0}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    .line 50
    :catchall_0
    move-exception v0

    throw v0

    :cond_c
    :goto_c
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    new-instance v2, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda8;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1, v2}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    :cond_d
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

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic addDownloadListener(Lccsanandroid/view/View;)V
    .locals 5

    .line 4
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v2, "video"

    const-string v3, "#TextureView click close"

    const-string v4, "MediaView.FULL"

    packed-switch p1, :pswitch_data_0

    .line 3
    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v2, v0, v1}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v2, v1, v1}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    :goto_1
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x19

    goto :goto_2

    :cond_1
    const/16 p1, 0x17

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
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

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;ZZ)V
    .locals 9

    .line 8
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "MediaView.FULL"

    cmp-long v8, v3, v5

    add-int/lit8 v8, v8, 0xc

    invoke-static {v1, v2, v8}, Lccsansan/i/IncentiveDownloadUtils;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v7, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-eqz v1, :cond_1

    .line 8
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    invoke-interface {v1, p1, p2, p3}, Lccsansan/i/getDownloadedList;->onPerformClick(Ljava/lang/String;ZZ)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/i/IncentiveDownloadUtils;Ljava/lang/String;ZZ)V
    .locals 2

    .line 2
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x5a

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic addDownloadListener(ZZ)V
    .locals 2

    .line 2
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "cardbutton"

    invoke-direct {p0, v0, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x32

    goto :goto_0

    :cond_1
    const/16 p1, 0x59

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method private execute()V
    .locals 3

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    new-instance v1, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda0;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/TextureView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 7
    const/16 v1, 0x44

    goto :goto_0

    :cond_0
    const/16 v1, 0x41

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    :cond_1
    new-instance v1, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda5;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsansan/i/removeDownloadListener;->setCloseClickListener(Lccsansan/i/removeDownloadListener$unifiedDownload;)V

    goto :goto_1

    :goto_2
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getActionType()V
    .locals 2

    .line 9
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->AdError:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-nez v0, :cond_3

    .line 9
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 7
    :cond_3
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onAdRewarded()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->AdError:Z

    .line 9
    const-string v0, "MediaView.FULL"

    const-string v1, "#onAdRewarded"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic getDownloadingList(Lccsanandroid/view/View;)V
    .locals 1

    .line 2
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 1
    :cond_0
    const-string p1, "MediaView.FULL"

    const-string v0, "#RemainCloseView click close"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick()Z

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x3d

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private getErrorCode()Z
    .locals 4

    .line 1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    sget-object v1, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_4

    :goto_1
    const/4 v0, 0x6

    goto :goto_2

    :cond_2
    const/16 v0, 0x2b

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x0

    :goto_3
    move v3, v2

    :cond_3
    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method private getErrorMessage()Z
    .locals 5

    .line 7
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 7
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_4

    .line 3
    :pswitch_0
    iget v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    invoke-virtual {v0, v1}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    const/16 v0, 0x54

    goto :goto_1

    :cond_2
    const/16 v0, 0x46

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v0, 0x17

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    goto :goto_2

    .line 5
    :pswitch_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    if-nez v0, :cond_4

    .line 7
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    return v2

    :cond_4
    iget-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDownload:Z

    xor-int/2addr v0, v3

    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    .line 3
    :cond_5
    nop

    .line 7
    :goto_3
    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    return v2

    :goto_4
    return v3

    .line 1
    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch
.end method

.method private getIconUrl()Ljava/lang/String;
    .locals 4

    .line 7
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-static {v1}, Lccsansan/bw/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_1
    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-static {v2}, Lccsansan/bw/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;

    move-result-object v2

    const/16 v3, 0x1c

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 7
    :catchall_0
    move-exception v0

    throw v0

    .line 4
    :goto_2
    invoke-virtual {v2}, Lccsansan/co/resolveUrl;->trackReportClick()Lccsansan/co/trackReportShow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    const/16 v1, 0x28

    goto :goto_3

    :cond_1
    const/16 v1, 0x9

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 2
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v2}, Lccsansan/co/resolveUrl;->trackReportClick()Lccsansan/co/trackReportShow;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/co/trackReportShow;->removeDownloadListener()Lccsansan/co/ActionTypeDetailPage;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 2
    :catchall_1
    move-exception v0

    throw v0

    .line 5
    :cond_2
    invoke-virtual {v2}, Lccsansan/co/resolveUrl;->trackReportClick()Lccsansan/co/trackReportShow;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/co/trackReportShow;->removeDownloadListener()Lccsansan/co/ActionTypeDetailPage;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 7
    :cond_3
    :pswitch_1
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageNameByRecord()V
    .locals 3

    .line 30
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "MediaView.FULL"

    const-string v1, "#initView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    const-string v1, "san_full_vast_layout_ex"

    invoke-static {v0, v1}, Lccsancom/san/bridge/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    const/16 v1, 0x1a

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 2
    :pswitch_0
    nop

    .line 4
    const-string v0, "san_full_vast_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    .line 30
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x2d

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    .line 6
    :goto_2
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lccsanandroid/widget/FrameLayout;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 8
    const-string v1, "san_loading_progress"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ProgressBar;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/ProgressBar;

    .line 10
    const-string v1, "san_fl_companion_container"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    .line 12
    const-string v1, "san_rl_card"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    .line 13
    const-string v1, "san_iv_icon"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/ImageView;

    .line 14
    const-string v1, "san_tv_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    .line 15
    const-string v1, "san_tv_message"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/TextView;

    .line 16
    const-string v1, "san_btn_cta_card"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsansan/j/unifiedDownload;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    .line 18
    const-string v1, "san_btn_cta_bottom"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsansan/j/unifiedDownload;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    .line 20
    const-string v1, "san_iv_volume"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    const/16 v2, 0x8

    .line 21
    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 22
    const-string v1, "san_v_sound_divide"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/view/View;

    .line 24
    const-string v1, "san_sov_skip_off"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsansan/i/removeDownloadListener;

    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    .line 25
    iget-object v1, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 26
    iget-object v1, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 28
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->shouldTryHandlingAction()V

    .line 30
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->execute()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method private getRewardCloseDialog()Lccsansan/dm/IncentiveDownloadUtils;
    .locals 4

    .line 16
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 16
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    .line 4
    :cond_2
    :pswitch_0
    new-instance v0, Lccsansan/dm/IncentiveDownloadUtils;

    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-direct {v0, v3}, Lccsansan/dm/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    .line 5
    new-instance v3, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda4;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v3}, Lccsansan/dm/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;)Lccsansan/dm/IncentiveDownloadUtils;

    move-result-object v0

    new-instance v3, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda3;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    .line 13
    invoke-virtual {v0, v3}, Lccsansan/dm/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;)Lccsansan/dm/IncentiveDownloadUtils;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lccsanandroid/app/Dialog;->setCancelable(Z)V

    .line 16
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    .line 1
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v1, 0x52

    goto :goto_2

    :cond_3
    const/16 v1, 0x41

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 16
    return-object v0

    .line 1
    :pswitch_1
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method private getVideoUrl()Ljava/lang/String;
    .locals 3

    .line 5
    nop

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 2
    :pswitch_0
    invoke-virtual {v0}, Lccsansan/co/resolveUrl;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v0}, Lccsansan/co/resolveUrl;->getDownloadingCount()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    .line 2
    :cond_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v0}, Lccsansan/co/resolveUrl;->getDownloadingCount()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_1
    goto :goto_2

    .line 2
    :cond_2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v0}, Lccsansan/co/resolveUrl;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_6

    .line 5
    :goto_3
    const/16 v1, 0x2f

    goto :goto_4

    :cond_3
    const/16 v1, 0x16

    :goto_4
    packed-switch v1, :pswitch_data_1

    :cond_4
    :goto_5
    goto :goto_6

    :pswitch_1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :cond_5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    goto :goto_5

    :goto_6
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized performAction()Z
    .locals 5

    monitor-enter p0

    .line 9
    nop

    .line 0
    :try_start_0
    const-string v0, "MediaView.FULL"

    const-string v1, "#handleRewardedClose"

    .line 1
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 9
    const/16 v1, 0x36

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    :goto_0
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsansan/i/IncentiveDownloadUtils;->performAction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x46

    :try_start_1
    div-int/2addr v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :goto_1
    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0

    .line 2
    :cond_1
    iget-boolean v1, p0, Lccsansan/i/IncentiveDownloadUtils;->performAction:Z

    if-eqz v1, :cond_2

    .line 9
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 4
    :cond_3
    :pswitch_0
    nop

    .line 7
    iput-boolean v2, p0, Lccsansan/i/IncentiveDownloadUtils;->performAction:Z

    .line 8
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getRewardCloseDialog()Lccsansan/dm/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->show()V

    const-string v0, "MediaView.FULL"

    const-string v1, "#show RewardCloseDialog"

    .line 9
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_3
    monitor-exit p0

    return v2

    .line 3
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getActionType:Lccsansan/dm/IncentiveDownloadUtils;

    .line 9
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    goto :goto_3

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private performActionWhenOffline()V
    .locals 4

    .line 5
    nop

    .line 1
    iget-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadingCount()V

    .line 4
    :pswitch_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_1

    .line 5
    const/16 v2, 0x24

    goto :goto_1

    :cond_1
    const/16 v2, 0x4b

    :goto_1
    packed-switch v2, :pswitch_data_1

    :goto_2
    goto :goto_4

    :pswitch_1
    sget v2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/16 v2, 0xf

    goto :goto_3

    :cond_2
    const/16 v2, 0x3b

    :goto_3
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onFinish()V

    packed-switch v2, :pswitch_data_2

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :goto_4
    :pswitch_2
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x2f

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_2
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    nop

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 15
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    const/16 v1, 0x36

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :goto_1
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 12
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/co/shouldTryHandlingAction;

    if-nez v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method private resolveUrl()V
    .locals 5

    .line 19
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadStatusByUrl(Lccsanandroid/content/Context;)Z

    move-result v0

    .line 4
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode()Z

    move-result v3

    const/16 v4, 0x35

    :try_start_0
    div-int/2addr v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadStatusByUrl(Lccsanandroid/content/Context;)Z

    move-result v0

    .line 4
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    if-eqz v3, :cond_2

    const/16 v3, 0x41

    goto :goto_2

    :cond_2
    const/16 v3, 0x5e

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :cond_3
    :pswitch_0
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 5
    :goto_4
    new-instance v0, Lccsansan/i/getDownloadingList;

    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-direct {v0, v2}, Lccsansan/i/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    .line 6
    new-instance v2, Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v2, p0}, Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v2}, Lccsansan/i/getDownloadingList;->setCompanionViewListener(Lccsansan/i/getDownloadingList$unifiedDownload;)V

    .line 18
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    iget v3, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/i/getDownloadingList;->unifiedDownload(ZLccsansan/dt/removeDownloadListener;I)V

    .line 19
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 4
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    .line 19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method private setErrorMessage()V
    .locals 6

    .line 26
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "san_full_screen_video_end_layout_ex"

    const-string v4, "#showVideoEndCard"

    const-string v5, "MediaView.FULL"

    if-eqz v0, :cond_1

    .line 1
    invoke-static {v5, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v0, v3}, Lccsancom/san/bridge/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 26
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-static {v5, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v0, v3}, Lccsancom/san/bridge/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v3, 0x45

    goto :goto_1

    :cond_2
    const/16 v3, 0x3e

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 4
    :goto_2
    const-string v0, "san_full_screen_video_end_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    .line 6
    :pswitch_0
    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v3, v0, v2}, Lccsanandroid/widget/FrameLayout;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 7
    const-string v2, "san_iv_end_icon"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ImageView;

    .line 8
    new-instance v3, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda1;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    .line 9
    iget-object v4, p0, Lccsansan/i/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 12
    const-string v2, "san_tv_end_title"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    .line 13
    iget-object v4, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    invoke-virtual {v4}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 16
    const-string v2, "san_tv_end_message"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    .line 17
    iget-object v4, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/TextView;

    invoke-virtual {v4}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 20
    const-string v2, "san_tp_end_btn"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsansan/j/unifiedDownload;

    iput-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->resolveUrl:Lccsansan/j/unifiedDownload;

    .line 21
    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    invoke-virtual {v3}, Lccsansan/j/unifiedDownload;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->resolveUrl:Lccsansan/j/unifiedDownload;

    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    new-instance v4, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lccsansan/i/IncentiveDownloadUtils$$ExternalSyntheticLambda6;-><init>(Lccsansan/i/IncentiveDownloadUtils;)V

    invoke-virtual {v2, v3, v4}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    .line 23
    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 24
    iput v3, v2, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x61

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method private shouldTryHandlingAction()V
    .locals 2

    .line 7
    nop

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsansan/i/addDownloadListener;->setMuteState(Z)V

    .line 2
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    if-eqz v1, :cond_1

    .line 7
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 5
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    :goto_1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x32

    goto :goto_2

    :cond_3
    const/16 v0, 0x45

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/i/IncentiveDownloadUtils;->setErrorMessage:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/i/IncentiveDownloadUtils;->values:J

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

.method private synthetic unifiedDownload(Lccsanandroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x51

    goto :goto_0

    :cond_0
    const/16 p1, 0x5d

    :goto_0
    const-string v0, "tailnonbutton"

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v0, v2, v2}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0, v1, v1}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    :goto_1
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x29

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic unifiedDownload(ZZ)V
    .locals 2

    .line 5
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const-string v0, "cardbutton"

    invoke-direct {p0, v0, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZZ)V

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private synthetic values()V
    .locals 3

    .line 5
    nop

    .line 1
    new-instance v0, Lccsansan/i/unifiedDownload;

    invoke-direct {v0}, Lccsansan/i/unifiedDownload;-><init>()V

    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    .line 2
    invoke-virtual {v0, v1}, Lccsansan/i/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/view/ViewGroup;)Lccsansan/i/unifiedDownload;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lccsansan/i/unifiedDownload;->getDownloadingList(I)Lccsansan/i/unifiedDownload;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Lccsansan/i/unifiedDownload;->unifiedDownload(J)Lccsansan/i/unifiedDownload;

    move-result-object v0

    iput-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsansan/i/unifiedDownload;

    .line 5
    invoke-virtual {v0}, Lccsansan/i/unifiedDownload;->unifiedDownload()V

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method


# virtual methods
.method protected IncentiveDownloadUtils()V
    .locals 2

    .line 2
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 2
    :goto_3
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onSurfaceTextureAvailable()V

    .line 1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    :cond_2
    :pswitch_1
    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 1

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/16 p1, 0x21

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method protected addDownloadListener()V
    .locals 2

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public deleteDownItem()V
    .locals 2

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x51

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList()V
    .locals 2

    .line 20
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->performActionWhenOffline:Z

    .line 19
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp()V

    .line 20
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getActionType()V

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadedRecordByUrl()V
    .locals 2

    .line 4
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method protected getDownloadingList()Lccsansan/dd/removeDownloadListener;
    .locals 9

    .line 46
    nop

    .line 1
    new-instance v0, Lccsansan/dd/removeDownloadListener;

    invoke-direct {v0}, Lccsansan/dd/removeDownloadListener;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    const/16 v2, 0x54

    if-eqz v1, :cond_8

    .line 46
    sget v3, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v3, v3, 0x4b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 2
    :cond_0
    iget v3, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    invoke-virtual {v1, v3}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v5, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v5}, Lccsansan/co/resolveUrl;->deleteDownItem()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    const/16 v6, 0x54

    goto :goto_1

    :cond_2
    const/16 v6, 0x4c

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 19
    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/util/List;)V

    .line 20
    invoke-virtual {v0, v3}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 21
    invoke-virtual {v0, v4}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/util/List;)V

    .line 22
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->getDownloadedList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadStatusByUrl(Ljava/util/List;)V

    .line 23
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->getDownloadedCount()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->deleteDownList(Ljava/util/List;)V

    .line 25
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadedList(Ljava/util/List;)V

    .line 26
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    iget v2, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    invoke-virtual {v1, v2}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/co/getDownloadedRecordByUrl;->removeDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadedRecordByUrl(Ljava/util/List;)V

    .line 27
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->deleteDownItem(Ljava/util/List;)V

    .line 28
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->pause()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadedCount(Ljava/util/List;)V

    .line 29
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->resume()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingRecordByUrl(Ljava/util/List;)V

    .line 30
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    invoke-virtual {v1}, Lccsansan/co/resolveUrl;->removeDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/i/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->resume(Ljava/util/List;)V

    goto/16 :goto_5

    .line 6
    :pswitch_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/co/shouldTryHandlingAction;

    if-nez v6, :cond_3

    .line 46
    :goto_2
    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object v7, Lccsansan/co/unifiedDownload;->FIRST_QUARTILE:Lccsansan/co/unifiedDownload;

    invoke-virtual {v7}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 10
    invoke-virtual {v6}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    sget-object v7, Lccsansan/co/unifiedDownload;->MIDPOINT:Lccsansan/co/unifiedDownload;

    invoke-virtual {v7}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 13
    invoke-virtual {v6}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_5
    sget-object v7, Lccsansan/co/unifiedDownload;->THIRD_QUARTILE:Lccsansan/co/unifiedDownload;

    invoke-virtual {v7}, Lccsansan/co/unifiedDownload;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 46
    sget v7, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v7, v7, 0x1b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 16
    :cond_6
    invoke-virtual {v6}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget v6, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v6, v6, 0x73

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    const/4 v6, 0x3

    goto :goto_2

    :cond_7
    const/16 v6, 0x42

    goto :goto_2

    .line 32
    :cond_8
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    if-nez v1, :cond_c

    .line 46
    sget v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v3, v1, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9

    .line 32
    :cond_9
    iget-object v3, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    if-eqz v3, :cond_c

    .line 46
    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_c

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    .line 32
    :cond_a
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 46
    goto :goto_3

    :cond_b
    const/16 v2, 0x2a

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 33
    :goto_4
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/util/List;)V

    .line 35
    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 36
    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/util/List;)V

    .line 37
    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/dd/removeDownloadListener;->getDownloadStatusByUrl(Ljava/util/List;)V

    .line 38
    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/dd/removeDownloadListener;->addDownloadListener(Ljava/util/List;)V

    .line 39
    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->removeDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener(Ljava/util/List;)V

    .line 42
    :cond_c
    :goto_5
    :pswitch_1
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_d

    .line 46
    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_2

    .line 43
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(I)V
    .locals 1

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method protected removeDownloadListener()V
    .locals 2

    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method protected removeDownloadListener(Z)V
    .locals 2

    .line 10
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 10
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x43

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setSelected(Z)V

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public setAdData(Lccsansan/dt/removeDownloadListener;)V
    .locals 2
    .param p1, "adData"    # Lccsansan/dt/removeDownloadListener;

    .line 15
    .end local p1    # "adData":Lccsansan/dt/removeDownloadListener;
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iput-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    .line 2
    invoke-static {p1}, Lccsansan/bw/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x2a

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4
    iput-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/co/resolveUrl;

    .line 7
    :pswitch_0
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1()V

    .line 11
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage()V

    .line 13
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->resolveUrl()V

    .line 14
    iget-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz p1, :cond_2

    .line 15
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :cond_3
    :goto_2
    goto :goto_3

    :pswitch_1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :cond_4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    iget-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    invoke-virtual {p1, v0, v1}, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsancom/san/ads/AdFormat;)V

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_2

    :goto_3
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 3
    .end local p1    # "orientation":I
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1
    iput v1, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    goto :goto_1

    :pswitch_0
    nop

    .line 3
    iput v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorMessage:I

    goto :goto_2

    :goto_1
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_1
    :goto_2
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setRewardVideoListener(Lccsansan/i/getDownloadedList;)V
    .locals 2
    .param p1, "videoListener"    # Lccsansan/i/getDownloadedList;

    .line 1
    .end local p1    # "videoListener":Lccsansan/i/getDownloadedList;
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public trackReportClick()Z
    .locals 6

    .line 32
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, "#handleClose"

    const-string v4, "MediaView.FULL"

    if-nez v0, :cond_0

    .line 1
    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->performActionWhenOffline:Z

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lccsansan/i/IncentiveDownloadUtils;->performActionWhenOffline:Z

    if-eqz v0, :cond_2

    .line 32
    :goto_0
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3
    :cond_1
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->performActionWhenOffline()V

    return v2

    .line 7
    :cond_2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    instance-of v3, v0, Lccsanandroid/app/Activity;

    const/4 v5, 0x1

    if-eqz v3, :cond_a

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    goto :goto_5

    .line 15
    :cond_3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsansan/i/removeDownloadListener;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->resume()V

    .line 17
    invoke-virtual {p0}, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedList()V

    .line 18
    const-string v0, "#SkipTimeReached Completed"

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return v5

    .line 22
    :cond_4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_5

    .line 2
    const/16 v3, 0x58

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 32
    :pswitch_0
    sget v3, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v3, v3, 0x71

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_6

    .line 22
    :cond_6
    invoke-virtual {v0}, Lccsansan/i/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    if-nez v0, :cond_7

    return v5

    .line 25
    :cond_7
    :goto_2
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 32
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_4

    .line 28
    :pswitch_1
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDownload()Z

    move-result v0

    return v0

    .line 26
    :cond_9
    :goto_4
    invoke-direct {p0}, Lccsansan/i/IncentiveDownloadUtils;->performAction()Z

    move-result v0

    return v0

    .line 29
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->deleteDownList()V

    .line 30
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadingCount()V

    .line 31
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_b

    .line 32
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onFinish()V

    :cond_b
    return v5

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public trackReportShow()V
    .locals 4

    .line 13
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsansan/j/unifiedDownload;

    if-eqz v0, :cond_1

    .line 13
    const/16 v1, 0x39

    goto :goto_0

    :cond_1
    const/16 v1, 0x56

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    invoke-virtual {v0}, Lccsansan/j/unifiedDownload;->destroy()V

    .line 3
    :pswitch_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow:Lccsansan/j/unifiedDownload;

    if-eqz v0, :cond_2

    .line 13
    const/16 v1, 0x23

    goto :goto_1

    :cond_2
    const/16 v1, 0x3f

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 4
    invoke-virtual {v0}, Lccsansan/j/unifiedDownload;->destroy()V

    .line 5
    :pswitch_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->resolveUrl:Lccsansan/j/unifiedDownload;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lccsansan/j/unifiedDownload;->destroy()V

    .line 13
    nop

    .line 7
    :cond_3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 13
    sget v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 8
    :cond_4
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeReserveApp:Lccsansan/i/getDownloadingList;

    .line 13
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 11
    :cond_5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 13
    iput-object v1, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload()V
    .locals 5

    .line 11
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    const/16 v1, 0x31

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->execute:Lccsansan/i/removeDownloadListener;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x23

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 v1, 0x59

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/16 v1, 0x5f

    goto :goto_4

    :cond_2
    const/16 v1, 0x3b

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 2
    :goto_5
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/i/removeDownloadListener;->getDownloadingList(I)V

    .line 3
    :pswitch_1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 1
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 4
    :cond_3
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->trackReportShow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1
    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/4 v0, 0x1

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 5
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/view/View;

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 11
    goto :goto_7

    .line 8
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    :goto_7
    nop

    .line 11
    invoke-virtual {p0, v3}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public unifiedDownload(II)V
    .locals 2

    .line 26
    sget v0, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lccsansan/i/IncentiveDownloadUtils;->IncentiveDownloadUtils(II)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 25
    nop

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onPlayStatusError reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaView.FULL"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/i/IncentiveDownloadUtils;->performActionWhenOffline:Z

    .line 23
    iput-boolean p1, p0, Lccsansan/i/IncentiveDownloadUtils;->getErrorCode:Z

    .line 24
    iget-object p1, p0, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 25
    invoke-virtual {p0}, Lccsansan/i/IncentiveDownloadUtils;->getDownloadedList()V

    sget p1, Lccsansan/i/IncentiveDownloadUtils;->AdFormat:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/i/IncentiveDownloadUtils;->AdError$ErrorCode:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
