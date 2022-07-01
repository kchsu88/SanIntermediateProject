.class public final enum Lccsanandroidx/work/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/work/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/work/NetworkType;

.field public static final enum CONNECTED:Lccsanandroidx/work/NetworkType;

.field public static final enum METERED:Lccsanandroidx/work/NetworkType;

.field public static final enum NOT_REQUIRED:Lccsanandroidx/work/NetworkType;

.field public static final enum NOT_ROAMING:Lccsanandroidx/work/NetworkType;

.field public static final enum UNMETERED:Lccsanandroidx/work/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lccsanandroidx/work/NetworkType;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/work/NetworkType;->NOT_REQUIRED:Lccsanandroidx/work/NetworkType;

    .line 33
    new-instance v1, Lccsanandroidx/work/NetworkType;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/work/NetworkType;->CONNECTED:Lccsanandroidx/work/NetworkType;

    .line 38
    new-instance v3, Lccsanandroidx/work/NetworkType;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/work/NetworkType;->UNMETERED:Lccsanandroidx/work/NetworkType;

    .line 43
    new-instance v5, Lccsanandroidx/work/NetworkType;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/work/NetworkType;->NOT_ROAMING:Lccsanandroidx/work/NetworkType;

    .line 48
    new-instance v7, Lccsanandroidx/work/NetworkType;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsanandroidx/work/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsanandroidx/work/NetworkType;->METERED:Lccsanandroidx/work/NetworkType;

    .line 23
    const/4 v9, 0x5

    new-array v9, v9, [Lccsanandroidx/work/NetworkType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsanandroidx/work/NetworkType;->$VALUES:[Lccsanandroidx/work/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/work/NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lccsanandroidx/work/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/NetworkType;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/work/NetworkType;
    .locals 1

    .line 23
    sget-object v0, Lccsanandroidx/work/NetworkType;->$VALUES:[Lccsanandroidx/work/NetworkType;

    invoke-virtual {v0}, [Lccsanandroidx/work/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/work/NetworkType;

    return-object v0
.end method
