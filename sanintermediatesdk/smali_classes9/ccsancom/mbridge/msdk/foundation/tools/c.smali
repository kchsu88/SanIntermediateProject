.class public Lccsancom/mbridge/msdk/foundation/tools/c;
.super Ljava/lang/Object;
.source "DomainDeviceInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "android"

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->c:Ljava/lang/String;

    .line 40
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->a:Ljava/lang/String;

    .line 41
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->b:Ljava/lang/String;

    .line 42
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->d:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->e:Ljava/lang/String;

    .line 45
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->f:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->m(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->g:Ljava/lang/String;

    .line 47
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->h:Ljava/lang/String;

    .line 48
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->i:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->j:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->k:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->o:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 53
    const-string p1, "landscape"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->l:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    const-string p1, "portrait"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->l:Ljava/lang/String;

    .line 57
    :goto_0
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->m:Ljava/lang/String;

    .line 58
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->n:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Lccsanorg/json/JSONObject;
    .locals 3

    .line 62
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "device"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 66
    const-string v1, "system_version"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 67
    const-string v1, "network_type"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 68
    const-string v1, "network_type_str"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 69
    const-string v1, "device_ua"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 71
    :cond_0
    const-string v1, "plantform"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 73
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_device_id"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "google_ad_id"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 76
    :cond_1
    const-string v1, "appkey"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 77
    const-string v1, "appId"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 78
    const-string v1, "screen_width"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 79
    const-string v1, "screen_height"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 80
    const-string v1, "orientation"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 81
    const-string v1, "scale"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 82
    const-string v1, "b"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 83
    const-string v1, "c"

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 87
    :goto_0
    return-object v0
.end method
