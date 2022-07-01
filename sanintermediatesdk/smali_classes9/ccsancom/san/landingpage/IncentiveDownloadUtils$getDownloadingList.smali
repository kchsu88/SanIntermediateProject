.class Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x58

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x58

    sub-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#Handler ad click, placement_id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LandPageViewControl"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x2d

    xor-int/lit8 p1, p1, 0x2d

    or-int/2addr p1, v0

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x48

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :pswitch_0
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x29

    xor-int/lit8 p1, p1, 0x29

    or-int/2addr p1, v0

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method
