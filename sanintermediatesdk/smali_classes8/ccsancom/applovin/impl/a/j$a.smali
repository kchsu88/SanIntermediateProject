.class public final enum Lccsancom/applovin/impl/a/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/applovin/impl/a/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/applovin/impl/a/j$a;

.field public static final enum b:Lccsancom/applovin/impl/a/j$a;

.field public static final enum c:Lccsancom/applovin/impl/a/j$a;

.field public static final enum d:Lccsancom/applovin/impl/a/j$a;

.field private static final synthetic e:[Lccsancom/applovin/impl/a/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lccsancom/applovin/impl/a/j$a;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/impl/a/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/applovin/impl/a/j$a;->a:Lccsancom/applovin/impl/a/j$a;

    new-instance v1, Lccsancom/applovin/impl/a/j$a;

    const-string v3, "LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/applovin/impl/a/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/applovin/impl/a/j$a;->b:Lccsancom/applovin/impl/a/j$a;

    new-instance v3, Lccsancom/applovin/impl/a/j$a;

    const-string v5, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/applovin/impl/a/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/applovin/impl/a/j$a;->c:Lccsancom/applovin/impl/a/j$a;

    new-instance v5, Lccsancom/applovin/impl/a/j$a;

    const-string v7, "HIGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/applovin/impl/a/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/applovin/impl/a/j$a;->d:Lccsancom/applovin/impl/a/j$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lccsancom/applovin/impl/a/j$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/applovin/impl/a/j$a;->e:[Lccsancom/applovin/impl/a/j$a;

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

.method public static valueOf(Ljava/lang/String;)Lccsancom/applovin/impl/a/j$a;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/a/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/impl/a/j$a;

    return-object p0
.end method

.method public static values()[Lccsancom/applovin/impl/a/j$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/a/j$a;->e:[Lccsancom/applovin/impl/a/j$a;

    invoke-virtual {v0}, [Lccsancom/applovin/impl/a/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/applovin/impl/a/j$a;

    return-object v0
.end method
