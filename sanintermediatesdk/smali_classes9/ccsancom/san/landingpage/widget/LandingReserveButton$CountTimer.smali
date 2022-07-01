.class Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;
.super Lccsanandroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/LandingReserveButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountTimer"
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private dayTv:Lccsanandroid/widget/TextView;

.field private hourTv:Lccsanandroid/widget/TextView;

.field private minuteTv:Lccsanandroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->removeDownloadListener:I

    return-void
.end method

.method public constructor <init>(JJLccsanandroid/widget/TextView;Lccsanandroid/widget/TextView;Lccsanandroid/widget/TextView;)V
    .locals 3

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/os/CountDownTimer;-><init>(JJ)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "millisInFuture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; countDownInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Ad.ReserveButton"

    invoke-static {p4, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->dayTv:Lccsanandroid/widget/TextView;

    .line 4
    iput-object p6, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->hourTv:Lccsanandroid/widget/TextView;

    .line 5
    iput-object p7, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->minuteTv:Lccsanandroid/widget/TextView;

    .line 8
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 p6, 0x5265c00

    div-long v1, p1, p6

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p3, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->hourTv:Lccsanandroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    rem-long p5, p1, p6

    const-wide/32 v1, 0x36ee80

    div-long/2addr p5, v1

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p3, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->minuteTv:Lccsanandroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    rem-long/2addr p1, v1

    const-wide/32 p5, 0xea60

    div-long/2addr p1, p5

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 2
    nop

    .line 1
    const-string v0, "Ad.ReserveButton"

    const-string v1, "CountTimer #onFinish "

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;

    const-wide/16 v2, 0x3e8

    invoke-direct {v1, p0, v2, v3}, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer$1;-><init>(Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;J)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x11

    and-int/lit8 v0, v0, 0x11

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .line 6
    const-string v0, ""

    .line 1
    .end local p1    # "millisUntilFinished":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "millisUntilFinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad.ReserveButton"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->dayTv:Lccsanandroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0x5265c00

    div-long v5, p1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->hourTv:Lccsanandroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-long v3, p1, v3

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->minuteTv:Lccsanandroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-long/2addr p1, v5

    const-wide/32 v3, 0xea60

    div-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->unifiedDownload:I

    and-int/lit8 p2, p1, 0x3f

    xor-int/lit8 v0, p2, -0x1

    or-int/lit8 p1, p1, 0x3f

    and-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x1

    neg-int p2, p2

    neg-int p2, p2

    and-int v0, p1, p2

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton$CountTimer;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
