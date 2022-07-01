.class Lccsancom/vungle/warren/BaseAdConfig;
.super Ljava/lang/Object;
.source "BaseAdConfig.java"


# static fields
.field public static final MUTED:I = 0x1


# instance fields
.field private adSize:Lccsancom/vungle/warren/AdConfig$AdSize;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "adSize"
    .end annotation
.end field

.field protected settings:I
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lccsancom/vungle/warren/BaseAdConfig;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/BaseAdConfig;)V
    .locals 1
    .param p1, "baseAdConfig"    # Lccsancom/vungle/warren/BaseAdConfig;

    .line 37
    invoke-virtual {p1}, Lccsancom/vungle/warren/BaseAdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/BaseAdConfig;-><init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 38
    invoke-virtual {p1}, Lccsancom/vungle/warren/BaseAdConfig;->getSettings()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->settings:I

    .line 39
    return-void
.end method


# virtual methods
.method public getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    :cond_0
    return-object v0
.end method

.method public getSettings()I
    .locals 1

    .line 87
    iget v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->settings:I

    return v0
.end method

.method public setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 77
    iput-object p1, p0, Lccsancom/vungle/warren/BaseAdConfig;->adSize:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 78
    return-void
.end method

.method public setMuted(Z)V
    .locals 1
    .param p1, "isMuted"    # Z

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->settings:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->settings:I

    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->settings:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lccsancom/vungle/warren/BaseAdConfig;->settings:I

    .line 59
    :goto_0
    return-void
.end method
