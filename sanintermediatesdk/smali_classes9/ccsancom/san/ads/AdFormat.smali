.class public final enum Lccsancom/san/ads/AdFormat;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/ads/AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/ads/AdFormat;

.field public static final enum BANNER:Lccsancom/san/ads/AdFormat;

.field public static final enum INTERSTITIAL:Lccsancom/san/ads/AdFormat;

.field public static final enum NATIVE:Lccsancom/san/ads/AdFormat;

.field public static final enum REWARDED_AD:Lccsancom/san/ads/AdFormat;

.field public static final enum REWARDED_INTERSTITIAL:Lccsancom/san/ads/AdFormat;


# instance fields
.field private adSize:Lccsancom/san/ads/AdSize;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lccsancom/san/ads/AdFormat;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const-string v3, "banner"

    invoke-direct {v0, v1, v2, v3}, Lccsancom/san/ads/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsancom/san/ads/AdFormat;->BANNER:Lccsancom/san/ads/AdFormat;

    .line 2
    new-instance v1, Lccsancom/san/ads/AdFormat;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    const-string v5, "itl"

    invoke-direct {v1, v3, v4, v5}, Lccsancom/san/ads/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/san/ads/AdFormat;->INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    .line 3
    new-instance v3, Lccsancom/san/ads/AdFormat;

    const-string v5, "NATIVE"

    const/4 v6, 0x2

    const-string v7, "native"

    invoke-direct {v3, v5, v6, v7}, Lccsancom/san/ads/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/ads/AdFormat;->NATIVE:Lccsancom/san/ads/AdFormat;

    .line 4
    new-instance v5, Lccsancom/san/ads/AdFormat;

    const-string v7, "REWARDED_AD"

    const/4 v8, 0x3

    const-string v9, "rwd"

    invoke-direct {v5, v7, v8, v9}, Lccsancom/san/ads/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    .line 5
    new-instance v7, Lccsancom/san/ads/AdFormat;

    const-string v9, "REWARDED_INTERSTITIAL"

    const/4 v10, 0x4

    const-string v11, "rwditl"

    invoke-direct {v7, v9, v10, v11}, Lccsancom/san/ads/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lccsancom/san/ads/AdFormat;->REWARDED_INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    .line 6
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/san/ads/AdFormat;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/san/ads/AdFormat;->$VALUES:[Lccsancom/san/ads/AdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsancom/san/ads/AdFormat;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/ads/AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/ads/AdFormat;

    return-object p0
.end method

.method public static values()[Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/AdFormat;->$VALUES:[Lccsancom/san/ads/AdFormat;

    invoke-virtual {v0}, [Lccsancom/san/ads/AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/ads/AdFormat;

    return-object v0
.end method


# virtual methods
.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdFormat;->adSize:Lccsancom/san/ads/AdSize;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSize(Lccsancom/san/ads/AdSize;)Lccsancom/san/ads/AdFormat;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdFormat;->adSize:Lccsancom/san/ads/AdSize;

    return-object p0
.end method
