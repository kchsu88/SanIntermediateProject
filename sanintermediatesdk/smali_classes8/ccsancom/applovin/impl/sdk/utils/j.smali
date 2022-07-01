.class public Lccsancom/applovin/impl/sdk/utils/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/j;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a()Lccsancom/applovin/impl/sdk/utils/j;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/j;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n========================================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsancom/applovin/adview/AppLovinAdView;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/adview/AppLovinAdView;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Size"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/adview/AppLovinAdView;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Alpha"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/adview/AppLovinAdView;->getVisibility()I

    move-result p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/o;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Visibility"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/a;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 3

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Format"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad Unit ID"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getPlacement()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Placement"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network Placement"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Serve ID"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "None"

    :goto_0
    const-string v2, "Creative ID"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->R()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v1, "Server Parameters"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lccsancom/applovin/impl/sdk/a/g;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 4

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Format"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Ad ID"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Zone ID"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getSource()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v1

    const-string v2, "Source"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    instance-of v1, p1, Lccsancom/applovin/impl/a/a;

    if-eqz v1, :cond_1

    const-string v2, "VastAd"

    goto :goto_1

    :cond_1
    const-string v2, "AdServerAd"

    :goto_1
    const-string v3, "Ad Class"

    invoke-virtual {v0, v3, v2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DSP Name"

    invoke-virtual {p0, v2, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_2
    if-eqz v1, :cond_3

    check-cast p1, Lccsancom/applovin/impl/a/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/a/a;->i()Lccsancom/applovin/impl/a/f;

    move-result-object p1

    const-string v0, "VAST DSP"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_3
    return-object p0
.end method

.method public a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->isMuted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Muted"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/Utils;->checkExoPlayerEligibility(Lccsancom/applovin/impl/sdk/k;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "ExoPlayer"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/j;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/j;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public b(Lccsancom/applovin/impl/sdk/a/g;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 5

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->q()Lccsancom/applovin/impl/sdk/a/g$b;

    move-result-object v0

    const-string v1, "Target"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->v()Lccsancom/applovin/impl/adview/j$a;

    move-result-object v1

    const-string v2, "close_style"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "close_delay_graphic"

    const-string/jumbo v3, "s"

    invoke-virtual {v0, v2, v1, v3}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    instance-of v0, p1, Lccsancom/applovin/impl/sdk/a/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/sdk/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTML"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "close_delay"

    invoke-virtual {p0, v1, v0, v3}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->w()Lccsancom/applovin/impl/adview/j$a;

    move-result-object v1

    const-string/jumbo v2, "skip_style"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Streaming"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video Location"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->C()Lccsancom/applovin/impl/adview/u;

    move-result-object p1

    const-string/jumbo v1, "video_button_properties"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_1
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/j;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/j;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
