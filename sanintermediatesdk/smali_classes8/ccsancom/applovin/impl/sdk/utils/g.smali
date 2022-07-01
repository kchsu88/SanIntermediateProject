.class public Lccsancom/applovin/impl/sdk/utils/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/applovin/impl/sdk/utils/g;->a:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lccsancom/applovin/impl/sdk/utils/g;->b:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lccsancom/applovin/impl/sdk/utils/g;->c:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput v2, v0, v1

    sput-object v0, Lccsancom/applovin/impl/sdk/utils/g;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x4
        0x2
        0x1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x6
        0xa
        0x3
        0x9
        0x8
        0xe
    .end array-data

    :array_2
    .array-data 4
        0xf
        0xc
        0xd
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cZ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No endpoint specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid domain specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    const-string v0, "results"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanorg/json/JSONObject;

    return-object p0
.end method

.method public static a(ILccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v0

    const/16 v1, 0x191

    if-ne p0, v1, :cond_0

    sget-object p0, Lccsancom/applovin/impl/sdk/c/b;->W:Lccsancom/applovin/impl/sdk/c/b;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    sget-object p0, Lccsancom/applovin/impl/sdk/c/b;->Y:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/c/c;->a()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDK key \""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is rejected by AppLovin. Please make sure the SDK key is correct."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLovinSdk"

    invoke-static {p1, p0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x1a2

    if-ne p0, v1, :cond_1

    sget-object p0, Lccsancom/applovin/impl/sdk/c/b;->V:Lccsancom/applovin/impl/sdk/c/b;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/c/c;->a()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_2

    sget-object p0, Lccsancom/applovin/impl/sdk/c/b;->X:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    sget-object p0, Lccsancom/applovin/impl/sdk/c/b;->X:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->k()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lccsanorg/json/JSONObject;ZLccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanorg/json/JSONObject;Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(I[I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static a(Lccsanandroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/g;->b(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lccsanandroid/security/NetworkSecurityPolicy;->getInstance()Lccsanandroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lccsanandroid/security/NetworkSecurityPolicy;->getInstance()Lccsanandroid/security/NetworkSecurityPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aR:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    const-string v0, "persisted_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->y:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, v0, p0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p0

    const-string p1, "ConnectionUtils"

    const-string v0, "Updated persisted data"

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    const-string/jumbo v0, "settings"

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v1

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsanorg/json/JSONObject;)V

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/c/c;->a()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v0, "ConnectionUtils"

    const-string v1, "Unable to parse settings out of API response"

    invoke-virtual {p1, v0, v1, p0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No response specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lccsancom/applovin/impl/sdk/k;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/k;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->Y:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "device_token"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_key"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/m;->h()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static e(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 4

    const-string v0, "filesystem_values"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/preference/PreferenceManager;->getDefaultSharedPreferences(Lccsanandroid/content/Context;)Lccsanandroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2, v3, v1, p1}, Lccsancom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/content/SharedPreferences;Lccsanandroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public static f(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/g;->b(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    const-string/jumbo v0, "unknown"

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :cond_0
    if-nez v1, :cond_5

    sget-object v0, Lccsancom/applovin/impl/sdk/utils/g;->a:[I

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2g"

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/sdk/utils/g;->b:[I

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3g"

    goto :goto_0

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/sdk/utils/g;->c:[I

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "4g"

    goto :goto_0

    :cond_3
    sget-object v0, Lccsancom/applovin/impl/sdk/utils/g;->d:[I

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v0, "5g"

    goto :goto_0

    :cond_4
    const-string v0, "mobile"

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static f(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    const-string/jumbo v0, "zones"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/a/e;->a(Lccsanorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public static g(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->dh:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5.0/ad"

    goto :goto_0

    :cond_0
    const-string v0, "4.0/ad"

    :goto_0
    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->aO:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    const-string/jumbo v0, "zones"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/a/e;->b(Lccsanorg/json/JSONArray;)Ljava/util/LinkedHashSet;

    :cond_0
    return-void
.end method

.method public static h(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->dh:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5.0/ad"

    goto :goto_0

    :cond_0
    const-string v0, "4.0/ad"

    :goto_0
    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->aP:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    const-string/jumbo v0, "variables"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->w()Lccsancom/applovin/impl/sdk/VariableServiceImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/VariableServiceImpl;->updateVariables(Lccsanorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static i(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aU:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/variable_config"

    invoke-static {v0, v1, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aV:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/variable_config"

    invoke-static {v0, v1, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
