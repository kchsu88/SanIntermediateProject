.class public Lccsancom/vungle/warren/VungleSettings$Builder;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private androidIdOptedOut:Z

.field private disableRefresh:Z

.field private maximumStorageForCleverCache:J

.field private minimumSpaceForAd:J

.field private minimumSpaceForInit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/32 v0, 0x3300000

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->minimumSpaceForInit:J

    .line 24
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->minimumSpaceForAd:J

    .line 26
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->maximumStorageForCleverCache:J

    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/VungleSettings$Builder;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleSettings$Builder;

    .line 22
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->minimumSpaceForAd:J

    return-wide v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/VungleSettings$Builder;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleSettings$Builder;

    .line 22
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->minimumSpaceForInit:J

    return-wide v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/VungleSettings$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleSettings$Builder;

    .line 22
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->androidIdOptedOut:Z

    return v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/VungleSettings$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleSettings$Builder;

    .line 22
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->disableRefresh:Z

    return v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/VungleSettings$Builder;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleSettings$Builder;

    .line 22
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->maximumStorageForCleverCache:J

    return-wide v0
.end method


# virtual methods
.method public build()Lccsancom/vungle/warren/VungleSettings;
    .locals 2

    .line 30
    new-instance v0, Lccsancom/vungle/warren/VungleSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/vungle/warren/VungleSettings;-><init>(Lccsancom/vungle/warren/VungleSettings$Builder;Lccsancom/vungle/warren/VungleSettings$1;)V

    return-object v0
.end method

.method public disableBannerRefresh()Lccsancom/vungle/warren/VungleSettings$Builder;
    .locals 1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->disableRefresh:Z

    .line 75
    return-object p0
.end method

.method public setAndroidIdOptOut(Z)Lccsancom/vungle/warren/VungleSettings$Builder;
    .locals 0
    .param p1, "disabled"    # Z

    .line 65
    iput-boolean p1, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->androidIdOptedOut:Z

    .line 66
    return-object p0
.end method

.method public setMaximumStorageForCleverCache(J)Lccsancom/vungle/warren/VungleSettings$Builder;
    .locals 0
    .param p1, "maximumStorageForCleverCache"    # J

    .line 86
    iput-wide p1, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->maximumStorageForCleverCache:J

    .line 87
    return-object p0
.end method

.method public setMinimumSpaceForAd(J)Lccsancom/vungle/warren/VungleSettings$Builder;
    .locals 0
    .param p1, "minimumSpaceForAd"    # J

    .line 53
    iput-wide p1, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->minimumSpaceForAd:J

    .line 54
    return-object p0
.end method

.method public setMinimumSpaceForInit(J)Lccsancom/vungle/warren/VungleSettings$Builder;
    .locals 0
    .param p1, "minimumSpaceForInit"    # J

    .line 41
    iput-wide p1, p0, Lccsancom/vungle/warren/VungleSettings$Builder;->minimumSpaceForInit:J

    .line 42
    return-object p0
.end method
