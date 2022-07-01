.class Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/AdLandingPageActivity;->doInitData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/landingpage/AdLandingPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/AdLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/AdLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x14

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/AdLandingPageActivity;

    invoke-static {v1, v2}, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList(Lccsancom/san/landingpage/AdLandingPageActivity;Z)Z

    sget v1, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v3, v1, 0x73

    xor-int/lit8 v1, v1, 0x73

    or-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/16 v1, 0x59

    goto :goto_1

    :cond_1
    const/16 v1, 0x32

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/16 v1, 0xf

    :try_start_0
    div-int/2addr v1, v0
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

.method public addDownloadListener()V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x43

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x43

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/AdLandingPageActivity;

    invoke-static {v0, v2}, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList(Lccsancom/san/landingpage/AdLandingPageActivity;Z)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/landingpage/AdLandingPageActivity;

    invoke-static {v0, v1}, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList(Lccsancom/san/landingpage/AdLandingPageActivity;Z)Z

    :goto_1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v3, v0, 0x5b

    or-int/lit8 v0, v0, 0x5b

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
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
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()V
    .locals 4

    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x21

    or-int/lit8 v0, v0, 0x21

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
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
.end method
