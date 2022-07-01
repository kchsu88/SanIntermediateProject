.class public Lccsancom/applovin/impl/sdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorPublisher;
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/communicator/AppLovinCommunicator;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/g;->b:Lccsancom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->a(Lccsancom/applovin/impl/sdk/k;)V

    sget-object p1, Lccsancom/applovin/impl/communicator/c;->a:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private b(Lccsancom/applovin/impl/mediation/a/a;)Lccsanandroid/os/Bundle;
    .locals 3

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_ad_unit_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "third_party_ad_placement_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_format"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->a()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string v1, "privacy_setting_updated"

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eS:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, p2, p0, v0}, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->create(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsancom/applovin/communicator/AppLovinCommunicatorPublisher;Z)Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/g;->b:Lccsancom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {p2}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getMessagingService()Lccsancom/applovin/communicator/AppLovinCommunicatorMessagingService;

    move-result-object p2

    invoke-interface {p2, p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessagingService;->publish(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V

    return-void
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/a;)V
    .locals 2

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/g;->b(Lccsancom/applovin/impl/mediation/a/a;)Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->b()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->r()Lccsancom/applovin/sdk/AppLovinSdkConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/sdk/AppLovinSdkConfiguration;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "country_code"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->q()Lccsancom/applovin/sdk/AppLovinUserSegment;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/sdk/AppLovinUserSegment;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user_segment"

    invoke-static {v1, p1, v0}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    const-string p1, "max_revenue_events"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/g;->b(Lccsancom/applovin/impl/mediation/a/a;)Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending \"max_ad_events\" message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommunicatorService"

    invoke-virtual {p2, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "max_ad_events"

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string v1, "adapter_class"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result p1

    const-string p2, "init_status"

    invoke-virtual {v0, p2, p1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "adapter_initialization_status"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string v1, "adapter_class"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "sdk_version"

    invoke-virtual {v0, p2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "network_sdk_version_updated"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1, p3}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Ljava/lang/Object;)Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string p2, "body"

    invoke-virtual {v0, p2, p1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    const-string/jumbo p1, "success"

    invoke-virtual {v0, p1, p6}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "error_message"

    invoke-static {p1, p5, v0}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->putString(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    const-string p1, "receive_http_response"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;Z)V
    .locals 5

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdk_key"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin_random_token"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compass_random_token"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isTablet(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "tablet"

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    :goto_0
    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "init_success"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/c/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsanorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "installed_mediation_adapters"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "communicator_settings"

    invoke-static {p1, v1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Bundle;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "user_engagement_sdk_settings"

    invoke-static {p1, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lsc"

    const-string v3, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    invoke-static {v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "psp"

    const-string v3, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "settings"

    invoke-virtual {p2, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    const-string/jumbo v1, "user_engagement_sdk_init"

    invoke-virtual {p0, p2, v1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Bundle;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "safedk_settings"

    invoke-static {p1, v3, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending \"safedk_init\" message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommunicatorService"

    invoke-virtual {v1, v4, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "safedk_init"

    invoke-virtual {p0, p2, v1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Bundle;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v3, "adjust_settings"

    invoke-static {p1, v3, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    const-string v1, "adjust_init"

    invoke-virtual {p0, p2, v1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Bundle;

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "discovery_settings"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    const-string p1, "discovery_init"

    invoke-virtual {p0, p2, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "applovin_sdk"

    return-object v0
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "send_http_request"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "backup_url"

    const-string/jumbo v3, "url"

    const-string v4, "headers"

    const-string v5, "post_body"

    const-string v6, "query_params"

    const-string/jumbo v7, "sdk_key"

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Lccsanandroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v5}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v4}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v4

    const-string v8, "id"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v9}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v7, Lccsancom/applovin/impl/sdk/network/g$a;

    invoke-direct {v7}, Lccsancom/applovin/impl/sdk/network/g$a;-><init>()V

    invoke-virtual {v1, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v3

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    iget-object v2, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v8}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/g$a;->a()Lccsancom/applovin/impl/sdk/network/g;

    move-result-object v1

    iget-object v2, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->S()Lccsancom/applovin/impl/sdk/network/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "send_http_request_v2"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v8, "http_method"

    const-string v9, "POST"

    invoke-virtual {v1, v8, v9}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "timeout_sec"

    invoke-virtual {v1, v9}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    goto :goto_0

    :cond_2
    iget-object v9, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v10, Lccsancom/applovin/impl/sdk/c/b;->dj:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v9, v10}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_0
    iget-object v11, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v12, Lccsancom/applovin/impl/sdk/c/b;->dk:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v11, v12}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "retry_count"

    invoke-virtual {v1, v12, v11}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "retry_delay_sec"

    invoke-virtual {v1, v12}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v12}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_1

    :cond_3
    iget-object v12, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v13, Lccsancom/applovin/impl/sdk/c/b;->dl:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v12, v13}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_1
    invoke-virtual {v1, v5}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v5

    const/4 v14, 0x1

    const-string v15, "include_data_collector_info"

    invoke-virtual {v1, v15, v14}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v14}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v14

    invoke-virtual {v14}, Lccsancom/applovin/impl/sdk/m;->g()Ljava/util/Map;

    move-result-object v14

    iget-object v15, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v15}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v15

    invoke-virtual {v15}, Lccsancom/applovin/impl/sdk/m;->d()Ljava/util/Map;

    move-result-object v15

    move-wide/from16 v16, v12

    iget-object v12, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v13, Lccsancom/applovin/impl/sdk/c/b;->ae:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v12, v13}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "server_installed_at"

    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v12}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "app"

    invoke-interface {v5, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "device"

    invoke-interface {v5, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-wide/from16 v16, v12

    :goto_2
    invoke-virtual {v1, v6}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v4}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v4

    iget-object v7, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v7}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v7

    invoke-virtual {v1, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v3

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v5}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    long-to-int v3, v9

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->b(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v11}, Lccsancom/applovin/impl/sdk/network/c$a;->a(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    move-wide/from16 v12, v16

    long-to-int v3, v12

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->c(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "is_encoding_enabled"

    invoke-virtual {v1, v4, v3}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/sdk/network/a;

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v2, v3, v1, v4}, Lccsancom/applovin/impl/sdk/network/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    sget-object v3, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "set_ad_request_query_params"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lccsancom/applovin/impl/sdk/g;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Lccsanandroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->addCustomQueryParams(Ljava/util/Map;)V

    :cond_6
    :goto_3
    return-void
.end method
