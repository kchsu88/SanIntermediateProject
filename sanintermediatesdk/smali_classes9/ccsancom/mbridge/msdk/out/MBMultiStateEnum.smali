.class public final enum Lccsancom/mbridge/msdk/out/MBMultiStateEnum;
.super Ljava/lang/Enum;
.source "MBMultiStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/out/MBMultiStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

.field public static final enum negative:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

.field public static final enum positive:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

.field public static final enum undefined:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    const-string v1, "undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->undefined:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    .line 5
    new-instance v1, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    const-string v3, "positive"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->positive:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    .line 6
    new-instance v3, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    const-string v5, "negative"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->negative:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->$VALUES:[Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/out/MBMultiStateEnum;
    .locals 1

    .line 3
    const-class v0, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/out/MBMultiStateEnum;
    .locals 1

    .line 3
    sget-object v0, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->$VALUES:[Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    return-object v0
.end method
