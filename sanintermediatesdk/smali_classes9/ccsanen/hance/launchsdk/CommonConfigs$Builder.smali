.class public Lccsanen/hance/launchsdk/CommonConfigs$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanen/hance/launchsdk/CommonConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cloudConfigImpl:Lccsanen/hance/launchsdk/ICloudConfig;

.field private trackerImpl:Lccsanen/hance/launchsdk/ITracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lccsanen/hance/launchsdk/CommonConfigs$Builder;)Lccsanen/hance/launchsdk/ITracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->trackerImpl:Lccsanen/hance/launchsdk/ITracker;

    return-object p0
.end method

.method public static synthetic access$100(Lccsanen/hance/launchsdk/CommonConfigs$Builder;)Lccsanen/hance/launchsdk/ICloudConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->cloudConfigImpl:Lccsanen/hance/launchsdk/ICloudConfig;

    return-object p0
.end method


# virtual methods
.method public build()Lccsanen/hance/launchsdk/CommonConfigs;
    .locals 2

    .line 1
    new-instance v0, Lccsanen/hance/launchsdk/CommonConfigs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsanen/hance/launchsdk/CommonConfigs;-><init>(Lccsanen/hance/launchsdk/CommonConfigs$Builder;Lccsanen/hance/launchsdk/CommonConfigs$a;)V

    return-object v0
.end method

.method public setCloudConfig(Lccsanen/hance/launchsdk/ICloudConfig;)Lccsanen/hance/launchsdk/CommonConfigs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->cloudConfigImpl:Lccsanen/hance/launchsdk/ICloudConfig;

    return-object p0
.end method

.method public setTracker(Lccsanen/hance/launchsdk/ITracker;)Lccsanen/hance/launchsdk/CommonConfigs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->trackerImpl:Lccsanen/hance/launchsdk/ITracker;

    return-object p0
.end method
