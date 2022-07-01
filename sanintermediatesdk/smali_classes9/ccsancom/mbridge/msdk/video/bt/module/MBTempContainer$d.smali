.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;
.super Lccsancom/mbridge/msdk/video/signal/a/c$a;
.source "MBTempContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/c$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V
    .locals 0

    .line 1152
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1156
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->a()V

    .line 1157
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->receiveSuccess()V

    .line 1158
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 1209
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->a(ILjava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    .line 1211
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 1203
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->a(Z)V

    .line 1204
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->C(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->D(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1215
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->b()V

    .line 1216
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1219
    :cond_0
    return-void
.end method

.method public final onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 2

    .line 1168
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1169
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1170
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 1171
    if-eqz p1, :cond_2

    instance-of p2, p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p2, :cond_2

    .line 1173
    :try_start_0
    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1174
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object p2

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/i;->getCurrentProgress()Ljava/lang/String;

    move-result-object p2

    .line 1175
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1176
    const-string p2, "progress"

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1177
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndcard_click_result()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1178
    const-string p1, "1.0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->z(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1179
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->A(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1180
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    goto :goto_0

    .line 1182
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->B(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :cond_1
    :goto_0
    goto :goto_1

    .line 1186
    :catch_0
    move-exception p1

    .line 1187
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 1192
    :cond_2
    :goto_1
    return-void
.end method

.method public final onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 1196
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1197
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->y(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 1198
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1199
    return-void
.end method

.method public final onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 1162
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c$a;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1163
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->x(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 1164
    return-void
.end method
