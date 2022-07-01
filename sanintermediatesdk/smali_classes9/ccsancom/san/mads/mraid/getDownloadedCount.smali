.class public final enum Lccsancom/san/mads/mraid/getDownloadedCount;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/mads/mraid/getDownloadedCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/mads/mraid/getDownloadedCount;

.field public static final enum INLINE:Lccsancom/san/mads/mraid/getDownloadedCount;

.field public static final enum INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/getDownloadedCount;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/san/mads/mraid/getDownloadedCount;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/san/mads/mraid/getDownloadedCount;->INLINE:Lccsancom/san/mads/mraid/getDownloadedCount;

    .line 2
    new-instance v1, Lccsancom/san/mads/mraid/getDownloadedCount;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/san/mads/mraid/getDownloadedCount;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/san/mads/mraid/getDownloadedCount;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/san/mads/mraid/getDownloadedCount;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadedCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/mads/mraid/getDownloadedCount;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/mads/mraid/getDownloadedCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/mads/mraid/getDownloadedCount;

    return-object p0
.end method

.method public static values()[Lccsancom/san/mads/mraid/getDownloadedCount;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/mads/mraid/getDownloadedCount;->$VALUES:[Lccsancom/san/mads/mraid/getDownloadedCount;

    invoke-virtual {v0}, [Lccsancom/san/mads/mraid/getDownloadedCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/mads/mraid/getDownloadedCount;

    return-object v0
.end method


# virtual methods
.method toJavascriptString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
