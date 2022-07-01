.class public final enum Lccsancom/vungle/warren/AdConfig$AdSize;
.super Ljava/lang/Enum;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/vungle/warren/AdConfig$AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER:Lccsancom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER_LEADERBOARD:Lccsancom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER_SHORT:Lccsancom/vungle/warren/AdConfig$AdSize;

.field public static final enum VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

.field public static final enum VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;


# instance fields
.field private final height:I

.field private final name:Ljava/lang/String;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 47
    new-instance v6, Lccsancom/vungle/warren/AdConfig$AdSize;

    const-string v1, "VUNGLE_MREC"

    const/4 v2, 0x0

    const-string v3, "mrec"

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 49
    new-instance v0, Lccsancom/vungle/warren/AdConfig$AdSize;

    const-string v8, "VUNGLE_DEFAULT"

    const/4 v9, 0x1

    const-string v10, "default"

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lccsancom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 50
    new-instance v1, Lccsancom/vungle/warren/AdConfig$AdSize;

    const-string v14, "BANNER"

    const/4 v15, 0x2

    const-string v16, "banner"

    const/16 v17, 0x140

    const/16 v18, 0x32

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lccsancom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 51
    new-instance v2, Lccsancom/vungle/warren/AdConfig$AdSize;

    const-string v8, "BANNER_SHORT"

    const/4 v9, 0x3

    const-string v10, "banner_short"

    const/16 v11, 0x12c

    const/16 v12, 0x32

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lccsancom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 52
    new-instance v3, Lccsancom/vungle/warren/AdConfig$AdSize;

    const-string v14, "BANNER_LEADERBOARD"

    const/4 v15, 0x4

    const-string v16, "banner_leaderboard"

    const/16 v17, 0x2d8

    const/16 v18, 0x5a

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lccsancom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 43
    const/4 v4, 0x5

    new-array v4, v4, [Lccsancom/vungle/warren/AdConfig$AdSize;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lccsancom/vungle/warren/AdConfig$AdSize;->$VALUES:[Lccsancom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p4, p0, Lccsancom/vungle/warren/AdConfig$AdSize;->width:I

    .line 59
    iput p5, p0, Lccsancom/vungle/warren/AdConfig$AdSize;->height:I

    .line 60
    iput-object p3, p0, Lccsancom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Lccsancom/vungle/warren/AdConfig$AdSize;->values()[Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    .local v3, "e":Lccsancom/vungle/warren/AdConfig$AdSize;
    iget-object v4, v3, Lccsancom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    return-object v3

    .line 82
    .end local v3    # "e":Lccsancom/vungle/warren/AdConfig$AdSize;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method

.method public static isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 1
    .param p0, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 103
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 1
    .param p0, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 95
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 1
    .param p0, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 112
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lccsancom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method

.method public static values()[Lccsancom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 43
    sget-object v0, Lccsancom/vungle/warren/AdConfig$AdSize;->$VALUES:[Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0}, [Lccsancom/vungle/warren/AdConfig$AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 72
    iget v0, p0, Lccsancom/vungle/warren/AdConfig$AdSize;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lccsancom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 68
    iget v0, p0, Lccsancom/vungle/warren/AdConfig$AdSize;->width:I

    return v0
.end method
