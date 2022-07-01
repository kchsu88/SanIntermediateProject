.class public final enum Lccsanandroidx/room/FtsOptions$MatchInfo;
.super Ljava/lang/Enum;
.source "FtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/FtsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/room/FtsOptions$MatchInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/room/FtsOptions$MatchInfo;

.field public static final enum FTS3:Lccsanandroidx/room/FtsOptions$MatchInfo;

.field public static final enum FTS4:Lccsanandroidx/room/FtsOptions$MatchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lccsanandroidx/room/FtsOptions$MatchInfo;

    const-string v1, "FTS3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/room/FtsOptions$MatchInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/room/FtsOptions$MatchInfo;->FTS3:Lccsanandroidx/room/FtsOptions$MatchInfo;

    .line 75
    new-instance v1, Lccsanandroidx/room/FtsOptions$MatchInfo;

    const-string v3, "FTS4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/room/FtsOptions$MatchInfo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/room/FtsOptions$MatchInfo;->FTS4:Lccsanandroidx/room/FtsOptions$MatchInfo;

    .line 62
    const/4 v3, 0x2

    new-array v3, v3, [Lccsanandroidx/room/FtsOptions$MatchInfo;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsanandroidx/room/FtsOptions$MatchInfo;->$VALUES:[Lccsanandroidx/room/FtsOptions$MatchInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/room/FtsOptions$MatchInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lccsanandroidx/room/FtsOptions$MatchInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/room/FtsOptions$MatchInfo;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/room/FtsOptions$MatchInfo;
    .locals 1

    .line 62
    sget-object v0, Lccsanandroidx/room/FtsOptions$MatchInfo;->$VALUES:[Lccsanandroidx/room/FtsOptions$MatchInfo;

    invoke-virtual {v0}, [Lccsanandroidx/room/FtsOptions$MatchInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/room/FtsOptions$MatchInfo;

    return-object v0
.end method
