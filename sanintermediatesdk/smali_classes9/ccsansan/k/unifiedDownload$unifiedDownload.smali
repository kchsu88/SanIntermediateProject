.class public final enum Lccsansan/k/unifiedDownload$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/k/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/k/unifiedDownload$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum AUTO_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum COMPLETED:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum ERROR:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum MOBILE_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum NO_ENOUGH_STORAGE:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum PROCESSING:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum USER_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

.field public static final enum WAITING:Lccsansan/k/unifiedDownload$unifiedDownload;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/k/unifiedDownload$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/k/unifiedDownload$unifiedDownload;->WAITING:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v1, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v3, "USER_PAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/k/unifiedDownload$unifiedDownload;->USER_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v3, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v5, "PROCESSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/k/unifiedDownload$unifiedDownload;->PROCESSING:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v5, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/k/unifiedDownload$unifiedDownload;->ERROR:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v7, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v9, "COMPLETED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lccsansan/k/unifiedDownload$unifiedDownload;->COMPLETED:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v9, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v11, "AUTO_PAUSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lccsansan/k/unifiedDownload$unifiedDownload;->AUTO_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v11, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v13, "MOBILE_PAUSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lccsansan/k/unifiedDownload$unifiedDownload;->MOBILE_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    new-instance v13, Lccsansan/k/unifiedDownload$unifiedDownload;

    const-string v15, "NO_ENOUGH_STORAGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lccsansan/k/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lccsansan/k/unifiedDownload$unifiedDownload;->NO_ENOUGH_STORAGE:Lccsansan/k/unifiedDownload$unifiedDownload;

    .line 2
    const/16 v15, 0x8

    new-array v15, v15, [Lccsansan/k/unifiedDownload$unifiedDownload;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lccsansan/k/unifiedDownload$unifiedDownload;->$VALUES:[Lccsansan/k/unifiedDownload$unifiedDownload;

    .line 11
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/k/unifiedDownload$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    .line 14
    invoke-static {}, Lccsansan/k/unifiedDownload$unifiedDownload;->values()[Lccsansan/k/unifiedDownload$unifiedDownload;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 15
    sget-object v4, Lccsansan/k/unifiedDownload$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/k/unifiedDownload$unifiedDownload;->mValue:I

    invoke-virtual {v4, v5, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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
    iput p3, p0, Lccsansan/k/unifiedDownload$unifiedDownload;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/k/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/k/unifiedDownload$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/k/unifiedDownload$unifiedDownload;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/k/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/k/unifiedDownload$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/k/unifiedDownload$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/k/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/k/unifiedDownload$unifiedDownload;->$VALUES:[Lccsansan/k/unifiedDownload$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/k/unifiedDownload$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/k/unifiedDownload$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/k/unifiedDownload$unifiedDownload;->mValue:I

    return v0
.end method
