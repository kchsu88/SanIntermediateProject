.class public final enum Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cs/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum COMPLETED:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum ERROR:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum PAUSE:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum PROCESSING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum UNKOWN:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum WAITING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    const-string v1, "UNKOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->UNKOWN:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    new-instance v1, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    const-string v3, "WAITING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->WAITING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    new-instance v3, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->PAUSE:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    new-instance v5, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    const-string v7, "PROCESSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->PROCESSING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    new-instance v7, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->ERROR:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    .line 2
    new-instance v9, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    const-string v11, "COMPLETED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->COMPLETED:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    .line 3
    const/4 v11, 0x6

    new-array v11, v11, [Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->$VALUES:[Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    .line 13
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    .line 16
    invoke-static {}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->values()[Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 17
    sget-object v4, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->mValue:I

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
    iput p3, p0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->$VALUES:[Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->mValue:I

    return v0
.end method
