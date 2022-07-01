.class Lccsancom/san/landingpage/widget/LandingReserveButton$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/LandingReserveButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x5e

    and-int/lit8 p2, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 1
    const/16 p1, 0x49

    goto :goto_0

    :cond_0
    const/16 p1, 0x23

    :goto_0
    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2e

    goto :goto_1

    :cond_1
    const/16 p1, 0x10

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v0, 0x38

    :try_start_0
    div-int/2addr v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/16 p1, 0x4c

    goto :goto_3

    :cond_2
    const/16 p1, 0x16

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 2
    :pswitch_2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateNativeAd(Lccsansan/dt/removeDownloadListener;)V

    .line 1
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x3a

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    packed-switch p2, :pswitch_data_3

    .line 2
    nop

    :goto_4
    nop

    .line 1
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/LandingReserveButton$2;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    .line 2
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
