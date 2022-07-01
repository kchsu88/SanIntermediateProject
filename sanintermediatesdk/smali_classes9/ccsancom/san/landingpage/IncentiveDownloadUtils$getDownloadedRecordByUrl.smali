.class Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 4
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x71

    or-int/lit8 v0, v0, 0x71

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v3, 0x52

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v1

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x41

    goto :goto_1

    :cond_1
    const/16 v0, 0x62

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :goto_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-boolean v1, v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener:Z

    if-eqz v1, :cond_4

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x15

    xor-int/lit8 v5, v1, -0x1

    or-int/lit8 v0, v0, 0x15

    and-int/2addr v0, v5

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    and-int v2, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 4
    :cond_3
    goto :goto_6

    :cond_4
    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x52

    or-int/2addr v0, v3

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 1
    const/16 v0, 0x16

    goto :goto_5

    :cond_5
    const/16 v0, 0x2f

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 4
    return-void

    :pswitch_2
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :goto_6
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x21

    xor-int/lit8 v0, v0, 0x21

    or-int/2addr v0, v1

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 1
    const/16 v3, 0x2d

    goto :goto_7

    :cond_6
    nop

    :goto_7
    packed-switch v3, :pswitch_data_4

    .line 4
    return-void

    :pswitch_4
    :try_start_2
    array-length v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :catchall_2
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x16
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2d
        :pswitch_4
    .end packed-switch
.end method
