.class final enum Lccsansan/cu/removeDownloadListener$removeDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cu/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "removeDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/cu/removeDownloadListener$removeDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/cu/removeDownloadListener$removeDownloadListener;

.field public static final enum Banner_250:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

.field public static final enum Banner_50:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

.field public static final enum Interstitial:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

.field public static final enum Native:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

.field public static final enum Native_Banner:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

.field public static final enum Rewarded:Lccsansan/cu/removeDownloadListener$removeDownloadListener;


# instance fields
.field public adType:Ljava/lang/String;

.field public formats:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    const-string v1, "Native"

    const/4 v2, 0x0

    const-string v3, "native"

    const-string v4, "{\"buyeruid\":\"${BUYER_UID}\",\"imp\":[{\"id\":\"${AUCTION_ID}\",\"native\":{\"h\":-1,\"w\":-1},\"tagid\":\"${PLACEMENT_ID}\"}]}"

    invoke-direct {v0, v1, v2, v3, v4}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Native:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    .line 2
    new-instance v1, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    const-string v3, "Native_Banner"

    const/4 v5, 0x1

    const-string v6, "native_banner"

    invoke-direct {v1, v3, v5, v6, v4}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Native_Banner:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    .line 3
    new-instance v3, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    const-string v4, "Interstitial"

    const/4 v6, 0x2

    const-string v7, "interstitial"

    const-string v8, "{\"buyeruid\":\"${BUYER_UID}\",\"imp\":[{\"id\":\"${AUCTION_ID}\",\"banner\":{\"h\":0,\"w\":0},\"tagid\":\"${PLACEMENT_ID}\",\"instl\":1}]}"

    invoke-direct {v3, v4, v6, v7, v8}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Interstitial:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    .line 4
    new-instance v4, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    const-string v7, "Rewarded"

    const/4 v8, 0x3

    const-string v9, "rewarded"

    const-string v10, "{\"buyeruid\":\"${BUYER_UID}\",\"imp\":[{\"id\":\"${AUCTION_ID}\",\"video\":{\"h\":0,\"w\":0,\"ext\":{\"videotype\":\"rewarded\"}},\"tagid\":\"${PLACEMENT_ID}\"}]}"

    invoke-direct {v4, v7, v8, v9, v10}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Rewarded:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    .line 5
    new-instance v7, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    const-string v9, "Banner_50"

    const/4 v10, 0x4

    const-string v11, "banner_50"

    const-string v12, "{\"buyeruid\":\"${BUYER_UID}\",\"imp\":[{\"id\":\"${AUCTION_ID}\",\"banner\":{\"h\":50,\"w\":-1},\"tagid\":\"${PLACEMENT_ID}\"}]}"

    invoke-direct {v7, v9, v10, v11, v12}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Banner_50:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    .line 6
    new-instance v9, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    const-string v11, "Banner_250"

    const/4 v12, 0x5

    const-string v13, "banner_250"

    const-string v14, "{\"buyeruid\":\"${BUYER_UID}\",\"imp\":[{\"id\":\"${AUCTION_ID}\",\"banner\":{\"h\":250,\"w\":-1},\"tagid\":\"${PLACEMENT_ID}\"}]}"

    invoke-direct {v9, v11, v12, v13, v14}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Banner_250:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    .line 7
    const/4 v11, 0x6

    new-array v11, v11, [Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v3, v11, v6

    aput-object v4, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->$VALUES:[Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->adType:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->formats:Ljava/lang/String;

    return-void
.end method

.method static getFormats(Lccsancom/san/ads/AdFormat;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/cu/removeDownloadListener$unifiedDownload;->addDownloadListener:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 14
    :pswitch_0
    sget-object p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Native:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    iget-object p0, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->formats:Ljava/lang/String;

    return-object p0

    .line 15
    :pswitch_1
    sget-object p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Rewarded:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    iget-object p0, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->formats:Ljava/lang/String;

    return-object p0

    .line 16
    :pswitch_2
    sget-object p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Interstitial:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    iget-object p0, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->formats:Ljava/lang/String;

    return-object p0

    .line 17
    :pswitch_3
    invoke-virtual {p0}, Lccsancom/san/ads/AdFormat;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object p0

    .line 18
    sget-object v0, Lccsancom/san/ads/AdSize;->BANNER:Lccsancom/san/ads/AdSize;

    if-ne p0, v0, :cond_0

    .line 19
    sget-object p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Banner_50:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    iget-object p0, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->formats:Ljava/lang/String;

    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->Banner_250:Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    iget-object p0, p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->formats:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/cu/removeDownloadListener$removeDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/cu/removeDownloadListener$removeDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->$VALUES:[Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    invoke-virtual {v0}, [Lccsansan/cu/removeDownloadListener$removeDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/cu/removeDownloadListener$removeDownloadListener;

    return-object v0
.end method
