.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbbanner/common/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 140
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 141
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 126
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 131
    :goto_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 156
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 136
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->c()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->d()V

    .line 168
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 8

    .line 173
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a()V

    .line 177
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->b()V

    goto :goto_1

    .line 179
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    .line 180
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1030
    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1031
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 1032
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    .line 1033
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v7

    .line 1032
    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lccsancom/mbridge/msdk/foundation/same/report/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception p1

    .line 1036
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    nop

    .line 185
    :cond_1
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    :cond_2
    :goto_1
    goto :goto_2

    .line 188
    :catch_1
    move-exception p1

    .line 189
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_2
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 145
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 147
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 151
    :goto_0
    return-void
.end method
