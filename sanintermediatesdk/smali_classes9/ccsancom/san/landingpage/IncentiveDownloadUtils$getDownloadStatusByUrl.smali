.class Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x70

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z

    move-result v0

    const/16 v3, 0x4e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    .line 2
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/16 v0, 0xc

    goto :goto_3

    :cond_2
    const/16 v0, 0x1b

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 2
    :pswitch_1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->addDownloadListener:I

    and-int/lit8 v2, v0, 0x19

    xor-int/lit8 v3, v2, -0x1

    or-int/lit8 v0, v0, 0x19

    and-int/2addr v0, v3

    shl-int/2addr v2, v1

    neg-int v2, v2

    neg-int v2, v2

    xor-int v3, v0, v2

    and-int/2addr v0, v2

    shl-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    :cond_3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;J)V

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->addDownloadListener:I

    and-int/lit8 v2, v0, 0xd

    xor-int/lit8 v0, v0, 0xd

    or-int/2addr v0, v2

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    :cond_4
    :goto_4
    :pswitch_2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->removeDownloadListener:I

    and-int/lit8 v2, v0, -0x30

    xor-int/lit8 v3, v0, -0x1

    and-int/lit8 v3, v3, 0x2f

    or-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x2f

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v2, v0

    shl-int/lit8 v1, v3, 0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_2
    .end packed-switch
.end method
