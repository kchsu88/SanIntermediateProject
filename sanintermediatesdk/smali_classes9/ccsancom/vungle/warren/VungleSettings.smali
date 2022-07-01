.class public final Lccsancom/vungle/warren/VungleSettings;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/VungleSettings$Builder;
    }
.end annotation


# static fields
.field private static final MEGABYTE:J = 0x100000L


# instance fields
.field private final androidIdOptedOut:Z

.field private final disableRefresh:Z

.field private final maximumStorageForCleverCache:J

.field private final minimumSpaceForAd:J

.field private final minimumSpaceForInit:J


# direct methods
.method private constructor <init>(Lccsancom/vungle/warren/VungleSettings$Builder;)V
    .locals 2
    .param p1, "builder"    # Lccsancom/vungle/warren/VungleSettings$Builder;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lccsancom/vungle/warren/VungleSettings$Builder;->access$100(Lccsancom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleSettings;->minimumSpaceForAd:J

    .line 93
    invoke-static {p1}, Lccsancom/vungle/warren/VungleSettings$Builder;->access$200(Lccsancom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleSettings;->minimumSpaceForInit:J

    .line 94
    invoke-static {p1}, Lccsancom/vungle/warren/VungleSettings$Builder;->access$300(Lccsancom/vungle/warren/VungleSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings;->androidIdOptedOut:Z

    .line 95
    invoke-static {p1}, Lccsancom/vungle/warren/VungleSettings$Builder;->access$400(Lccsancom/vungle/warren/VungleSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings;->disableRefresh:Z

    .line 96
    invoke-static {p1}, Lccsancom/vungle/warren/VungleSettings$Builder;->access$500(Lccsancom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleSettings;->maximumStorageForCleverCache:J

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/vungle/warren/VungleSettings$Builder;Lccsancom/vungle/warren/VungleSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/vungle/warren/VungleSettings$Builder;
    .param p2, "x1"    # Lccsancom/vungle/warren/VungleSettings$1;

    .line 9
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/VungleSettings;-><init>(Lccsancom/vungle/warren/VungleSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public getAndroidIdOptOut()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings;->androidIdOptedOut:Z

    return v0
.end method

.method public getBannerRefreshDisabled()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleSettings;->disableRefresh:Z

    return v0
.end method

.method public getMaximumStorageForCleverCache()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleSettings;->maximumStorageForCleverCache:J

    return-wide v0
.end method

.method public getMinimumSpaceForAd()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleSettings;->minimumSpaceForAd:J

    return-wide v0
.end method

.method public getMinimumSpaceForInit()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleSettings;->minimumSpaceForInit:J

    return-wide v0
.end method
