.class public Lccsanen/hance/launchsdk/CommonConfigs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanen/hance/launchsdk/CommonConfigs$Builder;
    }
.end annotation


# instance fields
.field public builder:Lccsanen/hance/launchsdk/CommonConfigs$Builder;


# direct methods
.method private constructor <init>(Lccsanen/hance/launchsdk/CommonConfigs$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lccsanen/hance/launchsdk/CommonConfigs;->builder:Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lccsanen/hance/launchsdk/CommonConfigs$Builder;Lccsanen/hance/launchsdk/CommonConfigs$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanen/hance/launchsdk/CommonConfigs;-><init>(Lccsanen/hance/launchsdk/CommonConfigs$Builder;)V

    return-void
.end method


# virtual methods
.method public getCloudConfig()Lccsanen/hance/launchsdk/ICloudConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanen/hance/launchsdk/CommonConfigs;->builder:Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    invoke-static {v0}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->access$100(Lccsanen/hance/launchsdk/CommonConfigs$Builder;)Lccsanen/hance/launchsdk/ICloudConfig;

    move-result-object v0

    return-object v0
.end method

.method public getTracker()Lccsanen/hance/launchsdk/ITracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanen/hance/launchsdk/CommonConfigs;->builder:Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    invoke-static {v0}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->access$000(Lccsanen/hance/launchsdk/CommonConfigs$Builder;)Lccsanen/hance/launchsdk/ITracker;

    move-result-object v0

    return-object v0
.end method

.method public setCloudConfig(Lccsanen/hance/launchsdk/ICloudConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanen/hance/launchsdk/CommonConfigs;->builder:Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    invoke-virtual {v0, p1}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->setCloudConfig(Lccsanen/hance/launchsdk/ICloudConfig;)Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    return-void
.end method
