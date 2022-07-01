.class public final enum Lccsancom/vungle/warren/Vungle$Consent;
.super Ljava/lang/Enum;
.source "Vungle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Consent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/vungle/warren/Vungle$Consent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/vungle/warren/Vungle$Consent;

.field public static final enum OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

.field public static final enum OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1475
    new-instance v0, Lccsancom/vungle/warren/Vungle$Consent;

    const-string v1, "OPTED_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/Vungle$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    .line 1476
    new-instance v1, Lccsancom/vungle/warren/Vungle$Consent;

    const-string v3, "OPTED_OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/vungle/warren/Vungle$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    .line 1473
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/vungle/warren/Vungle$Consent;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/vungle/warren/Vungle$Consent;->$VALUES:[Lccsancom/vungle/warren/Vungle$Consent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1474
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/vungle/warren/Vungle$Consent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1473
    const-class v0, Lccsancom/vungle/warren/Vungle$Consent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/Vungle$Consent;

    return-object v0
.end method

.method public static values()[Lccsancom/vungle/warren/Vungle$Consent;
    .locals 1

    .line 1473
    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->$VALUES:[Lccsancom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0}, [Lccsancom/vungle/warren/Vungle$Consent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/vungle/warren/Vungle$Consent;

    return-object v0
.end method
