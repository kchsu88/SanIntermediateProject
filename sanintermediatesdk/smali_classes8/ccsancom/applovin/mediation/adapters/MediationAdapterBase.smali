.class public abstract Lccsancom/applovin/mediation/adapters/MediationAdapterBase;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/adapter/MaxAdapter;


# instance fields
.field private alwaysRewardUser:Z

.field private final mLogger:Lccsancom/applovin/impl/sdk/r;

.field private final mSdk:Lccsancom/applovin/impl/sdk/k;

.field private final mTag:Ljava/lang/String;

.field private final mWrappingSdk:Lccsancom/applovin/sdk/AppLovinSdk;

.field private reward:Lccsancom/applovin/mediation/MaxReward;


# direct methods
.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mWrappingSdk:Lccsancom/applovin/sdk/AppLovinSdk;

    iget-object p1, p1, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mSdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    return-void
.end method

.method protected static mediationTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinSdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs checkActivities(Lccsanandroid/content/Context;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs checkExistence([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected configureReward(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V
    .locals 3

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getServerParameters()Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->isTesting()Z

    move-result p1

    const-string v1, "always_reward_user"

    invoke-static {v1, p1, v0}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getBoolean(Ljava/lang/String;ZLccsanandroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->alwaysRewardUser:Z

    const-string p1, "amount"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;ILccsanandroid/os/Bundle;)I

    move-result p1

    const-string v1, "currency"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating reward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->create(ILjava/lang/String;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->reward:Lccsancom/applovin/mediation/MaxReward;

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected getReward()Lccsancom/applovin/mediation/MaxReward;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->reward:Lccsancom/applovin/mediation/MaxReward;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->createDefault()Lccsancom/applovin/mediation/MaxReward;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getVersionString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->getString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p2, "Failed to retrieve version string."

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method protected getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mWrappingSdk:Lccsancom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method protected i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isBeta()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected shouldAlwaysRewardUser()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->alwaysRewardUser:Z

    return v0
.end method

.method protected userError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->userError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected userError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected w(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mLogger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
