.class Lccsancom/applovin/impl/adview/p$13;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->B(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/p;->shouldContinueFullLengthVideoCountdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cB:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    iget-object v1, v1, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    iget-object v2, v2, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/p;->B(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->B(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$13;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/p;->shouldContinueFullLengthVideoCountdown()Z

    move-result v0

    return v0
.end method
