.class public final enum Lccsansan/dt/IncentiveSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/dt/IncentiveSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/dt/IncentiveSDK;

.field public static final enum ADVANCE:Lccsansan/dt/IncentiveSDK;

.field public static final enum CACHE:Lccsansan/dt/IncentiveSDK;

.field public static final enum NORMAL:Lccsansan/dt/IncentiveSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lccsansan/dt/IncentiveSDK;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/dt/IncentiveSDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/dt/IncentiveSDK;->NORMAL:Lccsansan/dt/IncentiveSDK;

    new-instance v1, Lccsansan/dt/IncentiveSDK;

    const-string v3, "CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/dt/IncentiveSDK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/dt/IncentiveSDK;->CACHE:Lccsansan/dt/IncentiveSDK;

    new-instance v3, Lccsansan/dt/IncentiveSDK;

    const-string v5, "ADVANCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/dt/IncentiveSDK;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/dt/IncentiveSDK;->ADVANCE:Lccsansan/dt/IncentiveSDK;

    .line 2
    const/4 v5, 0x3

    new-array v5, v5, [Lccsansan/dt/IncentiveSDK;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsansan/dt/IncentiveSDK;->$VALUES:[Lccsansan/dt/IncentiveSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/dt/IncentiveSDK;
    .locals 1

    .line 1
    const-class v0, Lccsansan/dt/IncentiveSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/dt/IncentiveSDK;

    return-object p0
.end method

.method public static values()[Lccsansan/dt/IncentiveSDK;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/dt/IncentiveSDK;->$VALUES:[Lccsansan/dt/IncentiveSDK;

    invoke-virtual {v0}, [Lccsansan/dt/IncentiveSDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/dt/IncentiveSDK;

    return-object v0
.end method
