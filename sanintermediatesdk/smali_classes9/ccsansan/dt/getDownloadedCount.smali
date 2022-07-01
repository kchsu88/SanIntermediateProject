.class public final enum Lccsansan/dt/getDownloadedCount;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/dt/getDownloadedCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/dt/getDownloadedCount;

.field public static final enum ADVANCE:Lccsansan/dt/getDownloadedCount;

.field public static final enum CACHEAD:Lccsansan/dt/getDownloadedCount;

.field public static final enum NORMAL:Lccsansan/dt/getDownloadedCount;

.field public static final enum OFFLINE_LOAD:Lccsansan/dt/getDownloadedCount;


# instance fields
.field private mLoadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lccsansan/dt/getDownloadedCount;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/dt/getDownloadedCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/dt/getDownloadedCount;->NORMAL:Lccsansan/dt/getDownloadedCount;

    .line 2
    new-instance v1, Lccsansan/dt/getDownloadedCount;

    const-string v3, "OFFLINE_LOAD"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lccsansan/dt/getDownloadedCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/dt/getDownloadedCount;->OFFLINE_LOAD:Lccsansan/dt/getDownloadedCount;

    .line 3
    new-instance v3, Lccsansan/dt/getDownloadedCount;

    const-string v5, "ADVANCE"

    const/4 v6, 0x2

    const/4 v7, 0x6

    invoke-direct {v3, v5, v6, v7}, Lccsansan/dt/getDownloadedCount;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/dt/getDownloadedCount;->ADVANCE:Lccsansan/dt/getDownloadedCount;

    .line 4
    new-instance v5, Lccsansan/dt/getDownloadedCount;

    const-string v7, "CACHEAD"

    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-direct {v5, v7, v8, v9}, Lccsansan/dt/getDownloadedCount;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/dt/getDownloadedCount;->CACHEAD:Lccsansan/dt/getDownloadedCount;

    .line 5
    const/4 v7, 0x4

    new-array v7, v7, [Lccsansan/dt/getDownloadedCount;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsansan/dt/getDownloadedCount;->$VALUES:[Lccsansan/dt/getDownloadedCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsansan/dt/getDownloadedCount;->mLoadType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/dt/getDownloadedCount;
    .locals 1

    .line 1
    const-class v0, Lccsansan/dt/getDownloadedCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/dt/getDownloadedCount;

    return-object p0
.end method

.method public static values()[Lccsansan/dt/getDownloadedCount;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/dt/getDownloadedCount;->$VALUES:[Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v0}, [Lccsansan/dt/getDownloadedCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/dt/getDownloadedCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/getDownloadedCount;->mLoadType:I

    return v0
.end method
