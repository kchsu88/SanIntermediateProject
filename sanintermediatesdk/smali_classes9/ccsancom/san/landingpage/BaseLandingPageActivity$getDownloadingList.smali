.class Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    sget p2, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->getDownloadingList:I

    xor-int/lit8 v0, p2, 0x29

    and-int/lit8 p2, p2, 0x29

    const/4 v1, 0x1

    shl-int/2addr p2, v1

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const-string p2, "Mads.BaseLandingPage"

    const-string v0, "onListenerChange() "

    invoke-static {p2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p2, "connectivity_change"

    invoke-static {p1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;

    invoke-direct {p2, p0}, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x21

    xor-int/lit8 v0, p2, -0x1

    or-int/lit8 p1, p1, 0x21

    and-int/2addr p1, v0

    shl-int/2addr p2, v1

    xor-int v0, p1, p2

    and-int/2addr p1, p2

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :pswitch_0
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x38

    and-int/lit8 p1, p1, 0x38

    shl-int/2addr p1, v1

    add-int/2addr p2, p1

    and-int/lit8 p1, p2, -0x1

    or-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
