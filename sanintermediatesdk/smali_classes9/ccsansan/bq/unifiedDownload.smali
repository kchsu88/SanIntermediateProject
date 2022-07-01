.class public final enum Lccsansan/bq/unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/bq/unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/bq/unifiedDownload;

.field public static final enum ADCOLONY:Lccsansan/bq/unifiedDownload;

.field public static final enum ADMOB:Lccsansan/bq/unifiedDownload;

.field public static final enum APPLOVIN:Lccsansan/bq/unifiedDownload;

.field public static final enum FACEBOOK:Lccsansan/bq/unifiedDownload;

.field public static final enum FYBER:Lccsansan/bq/unifiedDownload;

.field public static final enum IRONSOURCE:Lccsansan/bq/unifiedDownload;

.field public static final enum MINTEGRAL:Lccsansan/bq/unifiedDownload;

.field public static final enum MOPUB:Lccsansan/bq/unifiedDownload;

.field public static final enum PANGLE:Lccsansan/bq/unifiedDownload;

.field public static final enum PUBNATIVE:Lccsansan/bq/unifiedDownload;

.field public static final enum UNITYADS:Lccsansan/bq/unifiedDownload;

.field public static final enum VUNGLE:Lccsansan/bq/unifiedDownload;


# instance fields
.field public initHelperClazz:Ljava/lang/String;

.field public isSupport:Z

.field public necessaryClazzName:Ljava/lang/String;

.field public needAzFromGp:Z

.field public needInitInActivity:Z

.field public networkName:Ljava/lang/String;

.field public networkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v6, Lccsansan/bq/unifiedDownload;

    const-string v1, "ADCOLONY"

    const/4 v2, 0x0

    const-string v3, "AdColony"

    const-string v4, "com.san.mediation.helper.AdColonyHelper"

    const-string v5, "com.adcolony.sdk.AdColony"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lccsansan/bq/unifiedDownload;->ADCOLONY:Lccsansan/bq/unifiedDownload;

    .line 4
    new-instance v0, Lccsansan/bq/unifiedDownload;

    const-string v8, "ADMOB"

    const/4 v9, 0x1

    const-string v10, "AdMob"

    const-string v11, "com.san.mediation.helper.AdMobHelper"

    const-string v12, "com.google.android.gms.ads.MobileAds"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lccsansan/bq/unifiedDownload;->ADMOB:Lccsansan/bq/unifiedDownload;

    .line 9
    new-instance v1, Lccsansan/bq/unifiedDownload;

    const-string v16, "APPLOVIN"

    const/16 v17, 0x2

    const-string v18, "AppLovin"

    const-string v19, "com.san.mediation.helper.AppLovinHelper"

    const-string v20, "com.applovin.sdk.AppLovinSdk"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lccsansan/bq/unifiedDownload;->APPLOVIN:Lccsansan/bq/unifiedDownload;

    .line 12
    new-instance v2, Lccsansan/bq/unifiedDownload;

    const-string v8, "FACEBOOK"

    const/4 v9, 0x3

    const-string v10, "Facebook"

    const-string v11, "com.san.mediation.helper.FacebookHelper"

    const-string v12, "com.facebook.ads.AudienceNetworkAds"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v2, Lccsansan/bq/unifiedDownload;->FACEBOOK:Lccsansan/bq/unifiedDownload;

    .line 17
    new-instance v3, Lccsansan/bq/unifiedDownload;

    const-string v16, "FYBER"

    const/16 v17, 0x4

    const-string v18, "Fyber"

    const-string v19, "com.san.mediation.helper.FyberHelper"

    const-string v20, "com.fyber.inneractive.sdk.external.InneractiveAdManager"

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lccsansan/bq/unifiedDownload;->FYBER:Lccsansan/bq/unifiedDownload;

    .line 20
    new-instance v4, Lccsansan/bq/unifiedDownload;

    const-string v8, "IRONSOURCE"

    const/4 v9, 0x5

    const-string v10, "IronSource"

    const-string v11, "com.san.mediation.helper.IronSourceHelper"

    const-string v12, "com.ironsource.mediationsdk.IronSource"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v14}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lccsansan/bq/unifiedDownload;->IRONSOURCE:Lccsansan/bq/unifiedDownload;

    .line 25
    new-instance v5, Lccsansan/bq/unifiedDownload;

    const-string v16, "MINTEGRAL"

    const/16 v17, 0x6

    const-string v18, "MobVista"

    const-string v19, "com.san.mediation.helper.MintegralHelper"

    const-string v20, "com.mbridge.msdk.MBridgeSDK"

    move-object v15, v5

    invoke-direct/range {v15 .. v20}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lccsansan/bq/unifiedDownload;->MINTEGRAL:Lccsansan/bq/unifiedDownload;

    .line 28
    new-instance v15, Lccsansan/bq/unifiedDownload;

    const-string v8, "MOPUB"

    const/4 v9, 0x7

    const-string v10, "MoPub"

    const-string v11, "com.san.mediation.helper.MoPubHelper"

    const-string v12, "com.mopub.common.MoPub"

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v15, Lccsansan/bq/unifiedDownload;->MOPUB:Lccsansan/bq/unifiedDownload;

    .line 33
    new-instance v7, Lccsansan/bq/unifiedDownload;

    const-string v17, "PANGLE"

    const/16 v18, 0x8

    const-string v19, "Pangle"

    const-string v20, "com.san.mediation.helper.PangleHelper"

    const-string v21, "com.bytedance.sdk.openadsdk.TTAdSdk"

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v21}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lccsansan/bq/unifiedDownload;->PANGLE:Lccsansan/bq/unifiedDownload;

    .line 36
    new-instance v14, Lccsansan/bq/unifiedDownload;

    const-string v9, "PUBNATIVE"

    const/16 v10, 0x9

    const-string v11, "PubNative"

    const-string v12, "com.san.mediation.helper.PubNativeHelper"

    const-string v13, "net.pubnative.lite.sdk.HyBid"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lccsansan/bq/unifiedDownload;->PUBNATIVE:Lccsansan/bq/unifiedDownload;

    .line 39
    new-instance v8, Lccsansan/bq/unifiedDownload;

    const-string v17, "UNITYADS"

    const/16 v18, 0xa

    const-string v19, "UnityAds"

    const-string v20, "com.san.mediation.helper.UnityAdsHelper"

    const-string v21, "com.unity3d.ads.UnityAds"

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lccsansan/bq/unifiedDownload;->UNITYADS:Lccsansan/bq/unifiedDownload;

    .line 42
    new-instance v9, Lccsansan/bq/unifiedDownload;

    const-string v23, "VUNGLE"

    const/16 v24, 0xb

    const-string v25, "Vungle"

    const-string v26, "com.san.mediation.helper.VungleHelper"

    const-string v27, "com.vungle.warren.Vungle"

    move-object/from16 v22, v9

    invoke-direct/range {v22 .. v27}, Lccsansan/bq/unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lccsansan/bq/unifiedDownload;->VUNGLE:Lccsansan/bq/unifiedDownload;

    .line 43
    const/16 v10, 0xc

    new-array v10, v10, [Lccsansan/bq/unifiedDownload;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v0, v10, v6

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v15, v10, v0

    const/16 v0, 0x8

    aput-object v7, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    const/16 v0, 0xa

    aput-object v8, v10, v0

    const/16 v0, 0xb

    aput-object v9, v10, v0

    sput-object v10, Lccsansan/bq/unifiedDownload;->$VALUES:[Lccsansan/bq/unifiedDownload;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/bq/unifiedDownload;->isSupport:Z

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lccsansan/bq/unifiedDownload;->networkVersion:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lccsansan/bq/unifiedDownload;->networkName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lccsansan/bq/unifiedDownload;->initHelperClazz:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lccsansan/bq/unifiedDownload;->necessaryClazzName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/bq/unifiedDownload;->isSupport:Z

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lccsansan/bq/unifiedDownload;->networkVersion:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lccsansan/bq/unifiedDownload;->networkName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lccsansan/bq/unifiedDownload;->initHelperClazz:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lccsansan/bq/unifiedDownload;->necessaryClazzName:Ljava/lang/String;

    .line 23
    iput-boolean p6, p0, Lccsansan/bq/unifiedDownload;->needInitInActivity:Z

    .line 24
    iput-boolean p7, p0, Lccsansan/bq/unifiedDownload;->needAzFromGp:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/bq/unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/bq/unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/bq/unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/bq/unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bq/unifiedDownload;->$VALUES:[Lccsansan/bq/unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/bq/unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/bq/unifiedDownload;

    return-object v0
.end method
