.class public final Lccsancom/mbridge/msdk/foundation/same/net/h/e;
.super Ljava/lang/Object;
.source "CommonRequestParamsForAdd.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, ""

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->a:Ljava/lang/String;

    .line 28
    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 2

    .line 65
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->a:Ljava/lang/String;

    const-string v1, "api_version"

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsanandroid/content/Context;)V
    .locals 5

    .line 31
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    .line 1185
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "authority_dnt"

    invoke-virtual {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    const-string v0, "dnt"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v2, "authority_other"

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/s;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->d:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->k(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pkg_source"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->j()Lccsanorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->j()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "web_env"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-le p1, v0, :cond_3

    .line 48
    const-string p1, "http_req"

    const-string v0, "2"

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_3
    nop

    .line 2075
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Z)V

    .line 2076
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->e(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 2077
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->d(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 2078
    nop

    .line 3055
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 3056
    if-nez p1, :cond_4

    .line 3057
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 3059
    :cond_4
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->X()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3060
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gdpr_consent"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_5
    return-void
.end method

.method private static a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Z)V
    .locals 3

    .line 108
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    .line 109
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 110
    nop

    .line 111
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "a_stid"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 117
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "dmt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 119
    const-string v0, "dmf"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->n()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 121
    :cond_1
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->b:Ljava/lang/String;

    .line 126
    :cond_2
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->b:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 127
    const-string p1, "dvi"

    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_3
    goto :goto_0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonRequestParamsForAdd"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_4
    :goto_0
    return-void
.end method

.method public static b(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Z)V

    .line 70
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->e(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 71
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->d(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 72
    return-void
.end method

.method public static c(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 2

    .line 139
    if-eqz p0, :cond_2

    .line 140
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "model"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 142
    const-string v0, "brand"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 143
    const-string v0, "screen_size"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 144
    const-string v0, "sub_ip"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 145
    const-string v0, "network_type"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 146
    const-string v0, "useragent"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 147
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 148
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 149
    const-string v0, "network_str"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 150
    const-string v0, "os_version"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_other"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 156
    const-string v0, "power_rate"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 157
    const-string v0, "charging"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 158
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 161
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    const-string v0, "gaid"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 163
    const-string v0, "gaid2"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;)V

    .line 166
    :cond_2
    return-void
.end method

.method private static d(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 2

    .line 83
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "b"

    if-eqz v0, :cond_0

    .line 84
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    .line 86
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "c"

    if-eqz v0, :cond_2

    .line 90
    :try_start_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 92
    :cond_2
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :cond_3
    goto :goto_0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonRequestParamsForAdd"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void
.end method

.method private static e(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 2

    .line 101
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->p()I

    move-result v0

    .line 102
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown_source"

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
