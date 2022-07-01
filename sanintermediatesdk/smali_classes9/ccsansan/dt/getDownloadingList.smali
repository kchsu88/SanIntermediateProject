.class public final enum Lccsansan/dt/getDownloadingList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/dt/getDownloadingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/dt/getDownloadingList;

.field public static final enum CACHE:Lccsansan/dt/getDownloadingList;

.field public static final enum OFFLINE:Lccsansan/dt/getDownloadingList;


# instance fields
.field private mAdvanceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lccsansan/dt/getDownloadingList;

    const-string v1, "OFFLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lccsansan/dt/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsansan/dt/getDownloadingList;->OFFLINE:Lccsansan/dt/getDownloadingList;

    .line 2
    new-instance v1, Lccsansan/dt/getDownloadingList;

    const-string v3, "CACHE"

    const/4 v4, 0x1

    const-string v5, "NEWCACHE"

    invoke-direct {v1, v3, v4, v5}, Lccsansan/dt/getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsansan/dt/getDownloadingList;->CACHE:Lccsansan/dt/getDownloadingList;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lccsansan/dt/getDownloadingList;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsansan/dt/getDownloadingList;->$VALUES:[Lccsansan/dt/getDownloadingList;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsansan/dt/getDownloadingList;->mAdvanceType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/dt/getDownloadingList;
    .locals 1

    .line 1
    const-class v0, Lccsansan/dt/getDownloadingList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/dt/getDownloadingList;

    return-object p0
.end method

.method public static values()[Lccsansan/dt/getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/dt/getDownloadingList;->$VALUES:[Lccsansan/dt/getDownloadingList;

    invoke-virtual {v0}, [Lccsansan/dt/getDownloadingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/dt/getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dt/getDownloadingList;->mAdvanceType:Ljava/lang/String;

    return-object v0
.end method
