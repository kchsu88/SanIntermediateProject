.class synthetic Lccsancom/san/ads/base/SANBaseAd$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/base/SANBaseAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field static final synthetic addDownloadListener:[I

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/SANBaseAd$2;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/ads/base/SANBaseAd$2;->removeDownloadListener:I

    .line 1
    invoke-static {}, Lccsancom/san/ads/base/IAdListener$AdAction;->values()[Lccsancom/san/ads/base/IAdListener$AdAction;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lccsancom/san/ads/base/SANBaseAd$2;->addDownloadListener:[I

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v2, v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lccsancom/san/ads/base/SANBaseAd$2;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/ads/base/SANBaseAd$2;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    :try_start_1
    sget-object v2, Lccsancom/san/ads/base/SANBaseAd$2;->addDownloadListener:[I

    sget-object v4, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    sget v2, Lccsancom/san/ads/base/SANBaseAd$2;->IncentiveDownloadUtils:I

    and-int/lit8 v4, v2, 0x29

    or-int/lit8 v2, v2, 0x29

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd$2;->removeDownloadListener:I

    rem-int/2addr v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lccsancom/san/ads/base/SANBaseAd$2;->addDownloadListener:[I

    sget-object v2, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x3

    aput v4, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lccsancom/san/ads/base/SANBaseAd$2;->addDownloadListener:[I

    sget-object v2, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x4

    aput v4, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    sget v0, Lccsancom/san/ads/base/SANBaseAd$2;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/ads/base/SANBaseAd$2;->removeDownloadListener:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    const/16 v0, 0x52

    goto :goto_3

    :cond_2
    const/16 v0, 0x58

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lccsancom/san/ads/base/SANBaseAd$2;->addDownloadListener:[I

    sget-object v2, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x5

    aput v4, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    sget v0, Lccsancom/san/ads/base/SANBaseAd$2;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x63

    and-int/lit8 v0, v0, 0x63

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd$2;->removeDownloadListener:I

    rem-int/2addr v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
