.class public Lccsancom/vungle/warren/BannerAdConfig;
.super Lccsancom/vungle/warren/BaseAdConfig;
.source "BannerAdConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lccsancom/vungle/warren/BaseAdConfig;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 14
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;-><init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/BaseAdConfig;)V
    .locals 0
    .param p1, "baseAdConfig"    # Lccsancom/vungle/warren/BaseAdConfig;

    .line 18
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;-><init>(Lccsancom/vungle/warren/BaseAdConfig;)V

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 9
    invoke-super {p0}, Lccsancom/vungle/warren/BaseAdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettings()I
    .locals 1

    .line 9
    invoke-super {p0}, Lccsancom/vungle/warren/BaseAdConfig;->getSettings()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    return-void
.end method

.method public bridge synthetic setMuted(Z)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;->setMuted(Z)V

    return-void
.end method
