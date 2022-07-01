.class final enum Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cb/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum ENCRYPT_CONTENTS:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum ENCRYPT_KEY_CONTENTS:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum ZIP:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    const-string v1, "ZIP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->ZIP:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    new-instance v1, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    const-string v4, "ENCRYPT_CONTENTS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->ENCRYPT_CONTENTS:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    new-instance v4, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    const-string v6, "ENCRYPT_KEY_CONTENTS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->ENCRYPT_KEY_CONTENTS:Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    .line 2
    new-array v6, v7, [Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->$VALUES:[Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    .line 5
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    .line 8
    invoke-static {}, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->values()[Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 9
    sget-object v4, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->mValue:I

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
    iput p3, p0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->$VALUES:[Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cb/IncentiveDownloadUtils$unifiedDownload;->mValue:I

    return v0
.end method
