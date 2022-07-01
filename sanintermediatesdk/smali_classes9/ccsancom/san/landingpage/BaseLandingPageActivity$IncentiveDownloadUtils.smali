.class Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2

    .line 1
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x1e

    or-int/lit8 p1, p1, 0x1e

    add-int/2addr v0, p1

    xor-int/lit8 p1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_2

    :goto_1
    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
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
