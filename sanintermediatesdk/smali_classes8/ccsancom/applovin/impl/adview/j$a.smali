.class public final enum Lccsancom/applovin/impl/adview/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/applovin/impl/adview/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/applovin/impl/adview/j$a;

.field public static final enum b:Lccsancom/applovin/impl/adview/j$a;

.field public static final enum c:Lccsancom/applovin/impl/adview/j$a;

.field private static final synthetic e:[Lccsancom/applovin/impl/adview/j$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lccsancom/applovin/impl/adview/j$a;

    const-string v1, "WHITE_ON_BLACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsancom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsancom/applovin/impl/adview/j$a;->a:Lccsancom/applovin/impl/adview/j$a;

    new-instance v1, Lccsancom/applovin/impl/adview/j$a;

    const-string v3, "WHITE_ON_TRANSPARENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsancom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsancom/applovin/impl/adview/j$a;->b:Lccsancom/applovin/impl/adview/j$a;

    new-instance v3, Lccsancom/applovin/impl/adview/j$a;

    const-string v5, "INVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsancom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsancom/applovin/impl/adview/j$a;->c:Lccsancom/applovin/impl/adview/j$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/applovin/impl/adview/j$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/applovin/impl/adview/j$a;->e:[Lccsancom/applovin/impl/adview/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lccsancom/applovin/impl/adview/j$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/applovin/impl/adview/j$a;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/adview/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/impl/adview/j$a;

    return-object p0
.end method

.method public static values()[Lccsancom/applovin/impl/adview/j$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/adview/j$a;->e:[Lccsancom/applovin/impl/adview/j$a;

    invoke-virtual {v0}, [Lccsancom/applovin/impl/adview/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/applovin/impl/adview/j$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/adview/j$a;->d:I

    return v0
.end method
