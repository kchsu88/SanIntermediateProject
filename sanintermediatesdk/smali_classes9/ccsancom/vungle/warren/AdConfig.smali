.class public Lccsancom/vungle/warren/AdConfig;
.super Lccsancom/vungle/warren/BaseAdConfig;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/AdConfig$Orientation;,
        Lccsancom/vungle/warren/AdConfig$AdSize;,
        Lccsancom/vungle/warren/AdConfig$Settings;
    }
.end annotation


# static fields
.field public static final AUTO_ROTATE:I = 0x2

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final IMMERSIVE:I = 0x4

.field public static final LANDSCAPE:I = 0x1

.field public static final MATCH_VIDEO:I = 0x3

.field public static final PORTRAIT:I = 0x0

.field public static final TRANSITION_ANIMATE:I = 0x8


# instance fields
.field private adOrientation:I
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "adOrientation"
    .end annotation
.end field

.field private ordinal:I
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "ordinal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lccsancom/vungle/warren/BaseAdConfig;-><init>()V

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->adOrientation:I

    .line 132
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 1
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 135
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;-><init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->adOrientation:I

    .line 136
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/BaseAdConfig;)V
    .locals 1
    .param p1, "baseAdConfig"    # Lccsancom/vungle/warren/BaseAdConfig;

    .line 139
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;-><init>(Lccsancom/vungle/warren/BaseAdConfig;)V

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->adOrientation:I

    .line 140
    return-void
.end method


# virtual methods
.method public getAdOrientation()I
    .locals 1

    .line 218
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->adOrientation:I

    return v0
.end method

.method public bridge synthetic getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 13
    invoke-super {p0}, Lccsancom/vungle/warren/BaseAdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 198
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->ordinal:I

    return v0
.end method

.method public bridge synthetic getSettings()I
    .locals 1

    .line 13
    invoke-super {p0}, Lccsancom/vungle/warren/BaseAdConfig;->getSettings()I

    move-result v0

    return v0
.end method

.method public setAdOrientation(I)V
    .locals 0
    .param p1, "adOrientation"    # I

    .line 227
    iput p1, p0, Lccsancom/vungle/warren/AdConfig;->adOrientation:I

    .line 228
    return-void
.end method

.method public bridge synthetic setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    return-void
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .locals 1
    .param p1, "isBackButtonImmediatelyEnabled"    # Z

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 158
    :cond_0
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    .line 160
    :goto_0
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1
    .param p1, "isImmersiveMode"    # Z

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 174
    :cond_0
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    .line 176
    :goto_0
    return-void
.end method

.method public bridge synthetic setMuted(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lccsancom/vungle/warren/BaseAdConfig;->setMuted(Z)V

    return-void
.end method

.method public setOrdinal(I)V
    .locals 0
    .param p1, "ordinal"    # I

    .line 209
    iput p1, p0, Lccsancom/vungle/warren/AdConfig;->ordinal:I

    .line 210
    return-void
.end method

.method public setTransitionAnimationEnabled(Z)V
    .locals 1
    .param p1, "isTransitionAnimationEnabled"    # Z

    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 190
    :cond_0
    iget v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lccsancom/vungle/warren/AdConfig;->settings:I

    .line 192
    :goto_0
    return-void
.end method
