.class Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;->getDownloadingList:I

    const/16 v1, 0x9

    or-int/lit8 v2, v0, 0x9

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v0, -0xa

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    neg-int v0, v0

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    const-string v1, "countDown"

    invoke-static {v1}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
