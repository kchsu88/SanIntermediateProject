.class public Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/MaxMediatedNetworkInfo;


# instance fields
.field private final a:Lccsanorg/json/JSONObject;

.field private final b:Lccsancom/applovin/mediation/MaxError;


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;-><init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->a:Lccsanorg/json/JSONObject;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->b:Lccsancom/applovin/mediation/MaxError;

    return-void
.end method


# virtual methods
.method public getAdapterClassName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->a:Lccsanorg/json/JSONObject;

    const-string v1, "class"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->a:Lccsanorg/json/JSONObject;

    const-string/jumbo v1, "version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadError()Lccsancom/applovin/mediation/MaxError;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->b:Lccsancom/applovin/mediation/MaxError;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->a:Lccsanorg/json/JSONObject;

    const-string v1, "name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->a:Lccsanorg/json/JSONObject;

    const-string/jumbo v1, "sdk_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxMediatedNetworkInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapterClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getAdapterClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapterVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getAdapterVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getLoadError()Lccsancom/applovin/mediation/MaxError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
