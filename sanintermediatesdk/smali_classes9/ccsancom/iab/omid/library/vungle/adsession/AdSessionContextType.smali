.class public final enum Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

.field public static final enum HTML:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

.field public static final enum JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

.field public static final enum NATIVE:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->HTML:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    new-instance v1, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->NATIVE:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    new-instance v3, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->$VALUES:[Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;
    .locals 1

    const-class v0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    return-object p0
.end method

.method public static values()[Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->$VALUES:[Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    invoke-virtual {v0}, [Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-object v0
.end method
