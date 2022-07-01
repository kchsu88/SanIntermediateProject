.class Lccsancom/applovin/impl/adview/activity/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/f;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/f;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-boolean v0, v0, Lccsancom/applovin/impl/adview/activity/b/f;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsanandroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-wide v1, v1, Lccsancom/applovin/impl/adview/activity/b/f;->u:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsanandroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$1;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-boolean v0, v0, Lccsancom/applovin/impl/adview/activity/b/f;->v:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
