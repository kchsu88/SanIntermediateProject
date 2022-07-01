.class Lccsancom/san/landingpage/widget/LandingScreenShotView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bx/unifiedDownload$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/LandingScreenShotView;->setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/LandingScreenShotView;

.field final synthetic val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingScreenShotView;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->this$0:Lccsancom/san/landingpage/widget/LandingScreenShotView;

    iput-object p2, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewEvent(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1
    .end local p1    # "position":I
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->removeDownloadListener:I

    and-int/lit8 v0, p1, 0x17

    or-int/lit8 p1, p1, 0x17

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/List;

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/List;

    goto :goto_2

    :goto_1
    const/16 v0, 0x45

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget p1, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x7a

    or-int/lit8 v0, p1, -0x1

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingScreenShotView$1;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x59

    goto :goto_3

    :cond_1
    const/16 p1, 0x2a

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch
.end method
