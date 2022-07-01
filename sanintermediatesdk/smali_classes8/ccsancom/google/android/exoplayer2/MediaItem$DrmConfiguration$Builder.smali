.class public final Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private forceDefaultLicenseUri:Z

.field private forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keySetId:[B

.field private licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseUri:Lccsanandroid/net/Uri;

.field private multiSession:Z

.field private playClearContentWithoutKey:Z

.field private scheme:Ljava/util/UUID;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;

    .line 562
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$1;

    .line 532
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V
    .locals 1
    .param p1, "drmConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 567
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Lccsanandroid/net/Uri;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Lccsanandroid/net/Uri;

    .line 568
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;

    .line 569
    iget-boolean v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 570
    iget-boolean v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 571
    iget-boolean v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 572
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;

    .line 573
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->access$600(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;)[B

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    .line 574
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/MediaItem$1;

    .line 532
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "scheme"    # Ljava/util/UUID;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 551
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;

    .line 552
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;

    .line 553
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .param p1, "x1"    # Ljava/util/UUID;

    .line 532
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setNullableScheme(Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return v0
.end method

.method static synthetic access$1100(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return v0
.end method

.method static synthetic access$1200(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$1300(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lccsanandroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return v0
.end method

.method static synthetic access$900(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 532
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private setNullableScheme(Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .param p1, "scheme"    # Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 589
    return-object p0
.end method


# virtual methods
.method public build()Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .locals 2

    .line 680
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public forceSessionsForAudioAndVideoTracks(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 2
    .param p1, "useClearSessionsForAudioAndVideoTracks"    # Z

    .line 643
    nop

    .line 644
    if-eqz p1, :cond_0

    .line 645
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 643
    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 647
    return-object p0
.end method

.method public setForceDefaultLicenseUri(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .param p1, "forceDefaultLicenseUri"    # Z

    .line 621
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 622
    return-object p0
.end method

.method public setForcedSessionTrackTypes(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    .line 662
    .local p1, "forcedSessionTrackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lccsancom/google/common/collect/ImmutableList;

    .line 663
    return-object p0
.end method

.method public setKeySetId([B)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1
    .param p1, "keySetId"    # [B

    .line 674
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    .line 675
    return-object p0
.end method

.method public setLicenseRequestHeaders(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    .line 606
    .local p1, "licenseRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lccsancom/google/common/collect/ImmutableMap;

    .line 607
    return-object p0
.end method

.method public setLicenseUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .param p1, "licenseUri"    # Lccsanandroid/net/Uri;

    .line 594
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Lccsanandroid/net/Uri;

    .line 595
    return-object p0
.end method

.method public setLicenseUri(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1
    .param p1, "licenseUri"    # Ljava/lang/String;

    .line 600
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Lccsanandroid/net/Uri;

    .line 601
    return-object p0
.end method

.method public setMultiSession(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .param p1, "multiSession"    # Z

    .line 612
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 613
    return-object p0
.end method

.method public setPlayClearContentWithoutKey(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .param p1, "playClearContentWithoutKey"    # Z

    .line 630
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 631
    return-object p0
.end method

.method public setScheme(Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .param p1, "scheme"    # Ljava/util/UUID;

    .line 578
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 579
    return-object p0
.end method
