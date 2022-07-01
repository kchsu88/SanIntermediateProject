.class final enum Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

.field public static final enum b:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

.field public static final enum c:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

.field public static final enum d:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

.field private static final synthetic e:[Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    const-string v3, "BIDDERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    new-instance v3, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    const-string v5, "WATERFALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    new-instance v5, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    const-string v7, "COUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->e:[Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

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

.method public static valueOf(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    return-object p0
.end method

.method public static values()[Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->e:[Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    invoke-virtual {v0}, [Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/applovin/impl/mediation/debugger/ui/a/b$b;

    return-object v0
.end method
