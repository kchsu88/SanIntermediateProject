.class public final enum Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
.super Ljava/lang/Enum;
.source "VungleLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/vungle/warren/VungleLogger$LoggerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum CRASH:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum DEBUG:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum ERROR:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum INFO:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum VERBOSE:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum WARNING:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;


# instance fields
.field private level:I

.field private levelString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 151
    new-instance v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const-string v3, "verbose"

    invoke-direct {v0, v1, v2, v2, v3}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->VERBOSE:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 152
    new-instance v1, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    const-string v5, "debug"

    invoke-direct {v1, v3, v4, v4, v5}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 153
    new-instance v3, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v5, "INFO"

    const/4 v6, 0x2

    const-string v7, "info"

    invoke-direct {v3, v5, v6, v6, v7}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->INFO:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 154
    new-instance v5, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v7, "WARNING"

    const/4 v8, 0x3

    const-string v9, "warn"

    invoke-direct {v5, v7, v8, v8, v9}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->WARNING:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 155
    new-instance v7, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    const-string v11, "error"

    invoke-direct {v7, v9, v10, v10, v11}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->ERROR:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 156
    new-instance v9, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v11, "CRASH"

    const/4 v12, 0x5

    const-string v13, "crash"

    invoke-direct {v9, v11, v12, v12, v13}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 149
    const/4 v11, 0x6

    new-array v11, v11, [Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->$VALUES:[Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "level"    # I
    .param p4, "levelString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput p3, p0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->level:I

    .line 163
    iput-object p4, p0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->levelString:Ljava/lang/String;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 150
    iget v0, p0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->level:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 149
    const-class v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    return-object v0
.end method

.method public static values()[Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    .locals 1

    .line 149
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->$VALUES:[Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v0}, [Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->levelString:Ljava/lang/String;

    return-object v0
.end method
