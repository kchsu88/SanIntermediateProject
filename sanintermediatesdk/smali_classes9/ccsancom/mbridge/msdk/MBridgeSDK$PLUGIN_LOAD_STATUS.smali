.class public final enum Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;
.super Ljava/lang/Enum;
.source "MBridgeSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/MBridgeSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLUGIN_LOAD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

.field public static final enum COMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

.field public static final enum INCOMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

.field public static final enum INITIAL:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->INITIAL:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 44
    new-instance v1, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    const-string v3, "INCOMPLETED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->INCOMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 45
    new-instance v3, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    const-string v5, "COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 42
    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->$VALUES:[Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;
    .locals 1

    .line 42
    const-class v0, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;
    .locals 1

    .line 42
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->$VALUES:[Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    return-object v0
.end method
