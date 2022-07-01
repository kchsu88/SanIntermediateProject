.class public final enum Lccsancom/applovin/impl/sdk/a/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/applovin/impl/sdk/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/applovin/impl/sdk/a/g$a;

.field public static final enum b:Lccsancom/applovin/impl/sdk/a/g$a;

.field public static final enum c:Lccsancom/applovin/impl/sdk/a/g$a;

.field private static final synthetic d:[Lccsancom/applovin/impl/sdk/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lccsancom/applovin/impl/sdk/a/g$a;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/impl/sdk/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/applovin/impl/sdk/a/g$a;->a:Lccsancom/applovin/impl/sdk/a/g$a;

    new-instance v1, Lccsancom/applovin/impl/sdk/a/g$a;

    const-string v3, "DISMISS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/applovin/impl/sdk/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/applovin/impl/sdk/a/g$a;->b:Lccsancom/applovin/impl/sdk/a/g$a;

    new-instance v3, Lccsancom/applovin/impl/sdk/a/g$a;

    const-string v5, "DO_NOT_DISMISS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/applovin/impl/sdk/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/applovin/impl/sdk/a/g$a;->c:Lccsancom/applovin/impl/sdk/a/g$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/applovin/impl/sdk/a/g$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/applovin/impl/sdk/a/g$a;->d:[Lccsancom/applovin/impl/sdk/a/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/g$a;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/sdk/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/impl/sdk/a/g$a;

    return-object p0
.end method

.method public static values()[Lccsancom/applovin/impl/sdk/a/g$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/a/g$a;->d:[Lccsancom/applovin/impl/sdk/a/g$a;

    invoke-virtual {v0}, [Lccsancom/applovin/impl/sdk/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/applovin/impl/sdk/a/g$a;

    return-object v0
.end method
