.class public final enum Lccsanandroidx/room/FtsOptions$Order;
.super Ljava/lang/Enum;
.source "FtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/FtsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/room/FtsOptions$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/room/FtsOptions$Order;

.field public static final enum ASC:Lccsanandroidx/room/FtsOptions$Order;

.field public static final enum DESC:Lccsanandroidx/room/FtsOptions$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 84
    new-instance v0, Lccsanandroidx/room/FtsOptions$Order;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/room/FtsOptions$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/room/FtsOptions$Order;->ASC:Lccsanandroidx/room/FtsOptions$Order;

    .line 91
    new-instance v1, Lccsanandroidx/room/FtsOptions$Order;

    const-string v3, "DESC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/room/FtsOptions$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/room/FtsOptions$Order;->DESC:Lccsanandroidx/room/FtsOptions$Order;

    .line 78
    const/4 v3, 0x2

    new-array v3, v3, [Lccsanandroidx/room/FtsOptions$Order;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsanandroidx/room/FtsOptions$Order;->$VALUES:[Lccsanandroidx/room/FtsOptions$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/room/FtsOptions$Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lccsanandroidx/room/FtsOptions$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/room/FtsOptions$Order;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/room/FtsOptions$Order;
    .locals 1

    .line 78
    sget-object v0, Lccsanandroidx/room/FtsOptions$Order;->$VALUES:[Lccsanandroidx/room/FtsOptions$Order;

    invoke-virtual {v0}, [Lccsanandroidx/room/FtsOptions$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/room/FtsOptions$Order;

    return-object v0
.end method
