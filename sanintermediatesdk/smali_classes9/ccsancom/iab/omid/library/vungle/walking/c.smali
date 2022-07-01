.class public final enum Lccsancom/iab/omid/library/vungle/walking/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/iab/omid/library/vungle/walking/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/iab/omid/library/vungle/walking/c;

.field public static final enum b:Lccsancom/iab/omid/library/vungle/walking/c;

.field public static final enum c:Lccsancom/iab/omid/library/vungle/walking/c;

.field private static final synthetic d:[Lccsancom/iab/omid/library/vungle/walking/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lccsancom/iab/omid/library/vungle/walking/c;

    const-string v1, "PARENT_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/iab/omid/library/vungle/walking/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/iab/omid/library/vungle/walking/c;->a:Lccsancom/iab/omid/library/vungle/walking/c;

    new-instance v1, Lccsancom/iab/omid/library/vungle/walking/c;

    const-string v3, "OBSTRUCTION_VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/iab/omid/library/vungle/walking/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/iab/omid/library/vungle/walking/c;->b:Lccsancom/iab/omid/library/vungle/walking/c;

    new-instance v3, Lccsancom/iab/omid/library/vungle/walking/c;

    const-string v5, "UNDERLYING_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/iab/omid/library/vungle/walking/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/iab/omid/library/vungle/walking/c;->c:Lccsancom/iab/omid/library/vungle/walking/c;

    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/iab/omid/library/vungle/walking/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/iab/omid/library/vungle/walking/c;->d:[Lccsancom/iab/omid/library/vungle/walking/c;

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

.method public static valueOf(Ljava/lang/String;)Lccsancom/iab/omid/library/vungle/walking/c;
    .locals 1

    const-class v0, Lccsancom/iab/omid/library/vungle/walking/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/iab/omid/library/vungle/walking/c;

    return-object p0
.end method

.method public static values()[Lccsancom/iab/omid/library/vungle/walking/c;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/walking/c;->d:[Lccsancom/iab/omid/library/vungle/walking/c;

    invoke-virtual {v0}, [Lccsancom/iab/omid/library/vungle/walking/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/iab/omid/library/vungle/walking/c;

    return-object v0
.end method
