.class public final enum Lccsancom/san/ads/base/IAdListener$AdAction;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/base/IAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/ads/base/IAdListener$AdAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/ads/base/IAdListener$AdAction;

.field public static final enum AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

.field public static final enum AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

.field public static final enum AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

.field public static final enum AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

.field public static final enum AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field private final mActionName:Ljava/lang/String;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    new-instance v2, Lccsancom/san/ads/base/IAdListener$AdAction;

    const-string v3, "AD_ACTION_IMPRESSION_ERROR"

    const-string v4, "impression_error"

    invoke-direct {v2, v3, v0, v4}, Lccsancom/san/ads/base/IAdListener$AdAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    .line 2
    new-instance v3, Lccsancom/san/ads/base/IAdListener$AdAction;

    const-string v4, "AD_ACTION_IMPRESSION"

    const-string v5, "impression"

    invoke-direct {v3, v4, v1, v5}, Lccsancom/san/ads/base/IAdListener$AdAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    .line 3
    new-instance v4, Lccsancom/san/ads/base/IAdListener$AdAction;

    const-string v5, "AD_ACTION_CLICKED"

    const/4 v6, 0x2

    const-string v7, "clicked"

    invoke-direct {v4, v5, v6, v7}, Lccsancom/san/ads/base/IAdListener$AdAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    .line 4
    new-instance v5, Lccsancom/san/ads/base/IAdListener$AdAction;

    const-string v7, "AD_ACTION_COMPLETE"

    const/4 v8, 0x3

    const-string v9, "complete"

    invoke-direct {v5, v7, v8, v9}, Lccsancom/san/ads/base/IAdListener$AdAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

    .line 5
    new-instance v7, Lccsancom/san/ads/base/IAdListener$AdAction;

    const-string v9, "AD_ACTION_CLOSED"

    const/4 v10, 0x4

    const-string v11, "closed"

    invoke-direct {v7, v9, v10, v11}, Lccsancom/san/ads/base/IAdListener$AdAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    const/4 v9, 0x5

    .line 6
    new-array v9, v9, [Lccsancom/san/ads/base/IAdListener$AdAction;

    aput-object v2, v9, v0

    aput-object v3, v9, v1

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/san/ads/base/IAdListener$AdAction;->$VALUES:[Lccsancom/san/ads/base/IAdListener$AdAction;

    sget v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v0, 0x11

    and-int/lit8 v0, v0, 0x11

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    rem-int/2addr v2, v6

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
    iput-object p3, p0, Lccsancom/san/ads/base/IAdListener$AdAction;->mActionName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lccsancom/san/ads/base/IAdListener$AdAction;->mActionName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lccsancom/san/ads/base/IAdListener$AdAction;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/ads/base/IAdListener$AdAction;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x9

    or-int/lit8 v0, v0, 0x9

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    const-class v0, Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/ads/base/IAdListener$AdAction;

    sget v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x6d

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x6d

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method public static values()[Lccsancom/san/ads/base/IAdListener$AdAction;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x6f

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x6f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->$VALUES:[Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0}, [Lccsancom/san/ads/base/IAdListener$AdAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/ads/base/IAdListener$AdAction;

    sget v1, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v1, 0x79

    and-int/lit8 v1, v1, 0x79

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x3f

    or-int/lit8 v2, v0, 0x3f

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/IAdListener$AdAction;->mActionName:Ljava/lang/String;

    or-int/lit8 v2, v0, 0x3b

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v0, v0, 0x3b

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1
.end method

.method public getExtraParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x69

    and-int/lit8 v0, v0, 0x69

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/base/IAdListener$AdAction;->mExtras:Ljava/util/Map;

    and-int/lit8 v2, v0, 0x65

    or-int/lit8 v0, v0, 0x65

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdAction;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1
.end method
